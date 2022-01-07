
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umass_bbb_cbw_t ;
typedef int uint8_t ;
typedef int buffer ;
struct TYPE_2__ {int xfer_error; } ;


 int do_msc_reset (int ) ;
 int libusb20_tr_bulk_intr_sync (int ,int *,int,int*,int) ;
 int memset (int *,int ,int) ;
 int printf (char*,...) ;
 TYPE_1__ stats ;
 int xfer_out ;

__attribute__((used)) static void
do_msc_shorter_cmd(uint8_t lun)
{
 uint8_t buffer[sizeof(umass_bbb_cbw_t)];
 int actlen;
 int error;
 int x;

 memset(buffer, 0, sizeof(buffer));

 for (x = 0; x != (sizeof(buffer) - 1); x++) {
  error = libusb20_tr_bulk_intr_sync(xfer_out,
      buffer, x, &actlen, 250);

  printf("Sent short %d of %d bytes wrapper block, "
      "status = %d\n", x, (int)(sizeof(buffer) - 1),
      error);

  do_msc_reset(lun);

  if (error != 0) {
   printf("ERROR: Too short command wrapper "
       "was not accepted\n");
   stats.xfer_error++;
   break;
  }
 }
}
