
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef unsigned int uint32_t ;
struct usb_msc_params {int io_mode; int io_offset; int io_delay; int io_size; scalar_t__ max_errors; int done; } ;
struct TYPE_2__ {scalar_t__ data_error; unsigned int xfer_rx_bytes; unsigned int xfer_tx_bytes; scalar_t__ xfer_error; scalar_t__ xfer_reset; } ;
 scalar_t__ bcmp (int*,int*,unsigned int) ;
 unsigned int block_size ;
 int do_read_10 (unsigned int,unsigned int,int*,int) ;
 int do_write_10 (unsigned int,unsigned int,int*,int) ;
 int printf (char*) ;
 TYPE_1__ stats ;
 int usb_ts_rand_noise () ;
 int usleep (int) ;
 unsigned int xfer_current_id ;

__attribute__((used)) static void
do_io_test(struct usb_msc_params *p, uint8_t lun, uint32_t lba_max,
    uint8_t *buffer, uint8_t *reference)
{
 uint32_t io_offset;
 uint32_t io_size;
 uint32_t temp;
 uint8_t do_read;
 uint8_t retval;

 switch (p->io_mode) {
 case 142:
  do_read = 0;
  break;
 case 143:
  do_read = (usb_ts_rand_noise() & 1);
  break;
 default:
  do_read = 1;
  break;
 }

 switch (p->io_offset) {
 case 141:
  io_offset = usb_ts_rand_noise();
  break;
 default:
  io_offset = 0;
  break;
 }

 switch (p->io_delay) {
 case 144:
  usleep(((uint32_t)usb_ts_rand_noise()) % 10000U);
  break;
 case 145:
  usleep(((uint32_t)usb_ts_rand_noise()) % 100000U);
  break;
 case 146:
  usleep(10000);
  break;
 case 147:
  usleep(100000);
  break;
 default:
  break;
 }

 switch (p->io_size) {
 case 128:
  io_size = ((uint32_t)usb_ts_rand_noise()) & 65535U;
  break;
 case 129:
  io_size = (xfer_current_id & 65535U);
  break;
 case 137:
  io_size = 1;
  break;
 case 135:
  io_size = 2;
  break;
 case 133:
  io_size = 4;
  break;
 case 130:
  io_size = 8;
  break;
 case 138:
  io_size = 16;
  break;
 case 134:
  io_size = 32;
  break;
 case 131:
  io_size = 64;
  break;
 case 139:
  io_size = 128;
  break;
 case 136:
  io_size = 256;
  break;
 case 132:
  io_size = 512;
  break;
 case 140:
  io_size = 1024;
  break;
 default:
  io_size = 1;
  break;
 }

 if (io_size == 0)
  io_size = 1;

 io_offset %= lba_max;

 temp = (lba_max - io_offset);

 if (io_size > temp)
  io_size = temp;

 if (do_read) {
  retval = do_read_10(io_offset, io_size * block_size,
      buffer + (io_offset * block_size), lun);

  if (retval == 0) {
   if (bcmp(buffer + (io_offset * block_size),
       reference + (io_offset * block_size),
       io_size * block_size)) {
    printf("ERROR: Data comparison failure\n");
    stats.data_error++;
    retval = 1;
   }
  }
  stats.xfer_rx_bytes += (io_size * block_size);

 } else {

  retval = do_write_10(io_offset, io_size * block_size,
      reference + (io_offset * block_size), lun);

  stats.xfer_tx_bytes += (io_size * block_size);
 }

 if ((stats.xfer_error + stats.data_error +
     stats.xfer_reset) >= p->max_errors) {
  printf("Maximum number of errors exceeded\n");
  p->done = 1;
 }
}
