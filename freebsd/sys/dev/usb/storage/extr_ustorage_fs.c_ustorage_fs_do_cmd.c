
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned long uint8_t ;
typedef int uint32_t ;
struct TYPE_8__ {int cmd_len; TYPE_2__* currlun; void* cmd_dir; int data_rem; int data_ptr; } ;
struct ustorage_fs_softc {TYPE_4__ sc_transfer; TYPE_1__* sc_csw; TYPE_3__* sc_cbw; int sc_qdata; } ;
struct TYPE_7__ {int* CBWCDB; } ;
struct TYPE_6__ {int sense_data; } ;
struct TYPE_5__ {void* bCSWStatus; } ;


 void* CSWSTATUS_FAILED ;
 void* DIR_READ ;
 void* DIR_WRITE ;
 int DPRINTF (char*,int,int ) ;
 int SS_INVALID_COMMAND ;
 int get_be16 (int*) ;
 int get_be32 (int*) ;
 unsigned long ustorage_fs_check_cmd (struct ustorage_fs_softc*,int,int,int) ;
 unsigned long ustorage_fs_inquiry (struct ustorage_fs_softc*) ;
 unsigned long ustorage_fs_min_len (struct ustorage_fs_softc*,int,int const) ;
 unsigned long ustorage_fs_mode_select (struct ustorage_fs_softc*) ;
 unsigned long ustorage_fs_mode_sense (struct ustorage_fs_softc*) ;
 unsigned long ustorage_fs_prevent_allow (struct ustorage_fs_softc*) ;
 unsigned long ustorage_fs_read (struct ustorage_fs_softc*) ;
 unsigned long ustorage_fs_read_capacity (struct ustorage_fs_softc*) ;
 unsigned long ustorage_fs_read_format_capacities (struct ustorage_fs_softc*) ;
 unsigned long ustorage_fs_request_sense (struct ustorage_fs_softc*) ;
 unsigned long ustorage_fs_start_stop (struct ustorage_fs_softc*) ;
 unsigned long ustorage_fs_synchronize_cache (struct ustorage_fs_softc*) ;
 unsigned long ustorage_fs_verify (struct ustorage_fs_softc*) ;
 unsigned long ustorage_fs_write (struct ustorage_fs_softc*) ;

__attribute__((used)) static uint8_t
ustorage_fs_do_cmd(struct ustorage_fs_softc *sc)
{
 uint8_t error = 1;
 uint8_t i;
 uint32_t temp;
 const uint32_t mask9 = (0xFFFFFFFFUL >> 9) << 9;


 sc->sc_transfer.data_ptr = sc->sc_qdata;

 DPRINTF("cmd_data[0]=0x%02x, data_rem=0x%08x\n",
     sc->sc_cbw->CBWCDB[0], sc->sc_transfer.data_rem);

 switch (sc->sc_cbw->CBWCDB[0]) {
 case 149:
  sc->sc_transfer.cmd_dir = DIR_WRITE;
  error = ustorage_fs_min_len(sc, sc->sc_cbw->CBWCDB[4], -1U);
  if (error) {
   break;
  }
  error = ustorage_fs_check_cmd(sc, 6,
      (1UL << 4) | 1, 0);
  if (error) {
   break;
  }
  error = ustorage_fs_inquiry(sc);

  break;

 case 147:
  sc->sc_transfer.cmd_dir = DIR_READ;
  error = ustorage_fs_min_len(sc, sc->sc_cbw->CBWCDB[4], -1U);
  if (error) {
   break;
  }
  error = ustorage_fs_check_cmd(sc, 6,
      (1UL << 1) | (1UL << 4) | 1, 0);
  if (error) {
   break;
  }
  error = ustorage_fs_mode_select(sc);

  break;

 case 148:
  sc->sc_transfer.cmd_dir = DIR_READ;
  error = ustorage_fs_min_len(sc,
      get_be16(&sc->sc_cbw->CBWCDB[7]), -1U);
  if (error) {
   break;
  }
  error = ustorage_fs_check_cmd(sc, 10,
      (1UL << 1) | (3UL << 7) | 1, 0);
  if (error) {
   break;
  }
  error = ustorage_fs_mode_select(sc);

  break;

 case 145:
  sc->sc_transfer.cmd_dir = DIR_WRITE;
  error = ustorage_fs_min_len(sc, sc->sc_cbw->CBWCDB[4], -1U);
  if (error) {
   break;
  }
  error = ustorage_fs_check_cmd(sc, 6,
      (1UL << 1) | (1UL << 2) | (1UL << 4) | 1, 0);
  if (error) {
   break;
  }
  error = ustorage_fs_mode_sense(sc);

  break;

 case 146:
  sc->sc_transfer.cmd_dir = DIR_WRITE;
  error = ustorage_fs_min_len(sc,
      get_be16(&sc->sc_cbw->CBWCDB[7]), -1U);
  if (error) {
   break;
  }
  error = ustorage_fs_check_cmd(sc, 10,
      (1UL << 1) | (1UL << 2) | (3UL << 7) | 1, 0);
  if (error) {
   break;
  }
  error = ustorage_fs_mode_sense(sc);

  break;

 case 144:
  error = ustorage_fs_min_len(sc, 0, -1U);
  if (error) {
   break;
  }
  error = ustorage_fs_check_cmd(sc, 6,
      (1UL << 4) | 1, 0);
  if (error) {
   break;
  }
  error = ustorage_fs_prevent_allow(sc);

  break;

 case 141:
  i = sc->sc_cbw->CBWCDB[4];
  sc->sc_transfer.cmd_dir = DIR_WRITE;
  temp = ((i == 0) ? 256UL : i);
  error = ustorage_fs_min_len(sc, temp << 9, mask9);
  if (error) {
   break;
  }
  error = ustorage_fs_check_cmd(sc, 6,
      (7UL << 1) | (1UL << 4) | 1, 1);
  if (error) {
   break;
  }
  error = ustorage_fs_read(sc);

  break;

 case 143:
  sc->sc_transfer.cmd_dir = DIR_WRITE;
  temp = get_be16(&sc->sc_cbw->CBWCDB[7]);
  error = ustorage_fs_min_len(sc, temp << 9, mask9);
  if (error) {
   break;
  }
  error = ustorage_fs_check_cmd(sc, 10,
      (1UL << 1) | (0xfUL << 2) | (3UL << 7) | 1, 1);
  if (error) {
   break;
  }
  error = ustorage_fs_read(sc);

  break;

 case 142:
  sc->sc_transfer.cmd_dir = DIR_WRITE;
  temp = get_be32(&sc->sc_cbw->CBWCDB[6]);
  if (temp >= (1UL << (32 - 9))) {

   sc->sc_csw->bCSWStatus = CSWSTATUS_FAILED;
   error = 1;
   break;
  }
  error = ustorage_fs_min_len(sc, temp << 9, mask9);
  if (error) {
   break;
  }
  error = ustorage_fs_check_cmd(sc, 12,
      (1UL << 1) | (0xfUL << 2) | (0xfUL << 6) | 1, 1);
  if (error) {
   break;
  }
  error = ustorage_fs_read(sc);

  break;

 case 140:
  sc->sc_transfer.cmd_dir = DIR_WRITE;
  error = ustorage_fs_check_cmd(sc, 10,
      (0xfUL << 2) | (1UL << 8) | 1, 1);
  if (error) {
   break;
  }
  error = ustorage_fs_read_capacity(sc);

  break;

 case 139:
  sc->sc_transfer.cmd_dir = DIR_WRITE;
  error = ustorage_fs_min_len(sc,
      get_be16(&sc->sc_cbw->CBWCDB[7]), -1U);
  if (error) {
   break;
  }
  error = ustorage_fs_check_cmd(sc, 10,
      (3UL << 7) | 1, 1);
  if (error) {
   break;
  }
  error = ustorage_fs_read_format_capacities(sc);

  break;

 case 137:
  sc->sc_transfer.cmd_dir = DIR_WRITE;
  error = ustorage_fs_min_len(sc, sc->sc_cbw->CBWCDB[4], -1U);
  if (error) {
   break;
  }
  error = ustorage_fs_check_cmd(sc, 6,
      (1UL << 4) | 1, 0);
  if (error) {
   break;
  }
  error = ustorage_fs_request_sense(sc);

  break;

 case 134:
  error = ustorage_fs_min_len(sc, 0, -1U);
  if (error) {
   break;
  }
  error = ustorage_fs_check_cmd(sc, 6,
      (1UL << 1) | (1UL << 4) | 1, 0);
  if (error) {
   break;
  }
  error = ustorage_fs_start_stop(sc);

  break;

 case 133:
  error = ustorage_fs_min_len(sc, 0, -1U);
  if (error) {
   break;
  }
  error = ustorage_fs_check_cmd(sc, 10,
      (0xfUL << 2) | (3UL << 7) | 1, 1);
  if (error) {
   break;
  }
  error = ustorage_fs_synchronize_cache(sc);

  break;

 case 132:
  error = ustorage_fs_min_len(sc, 0, -1U);
  if (error) {
   break;
  }
  error = ustorage_fs_check_cmd(sc, 6,
      0 | 1, 1);
  break;





 case 131:
  error = ustorage_fs_min_len(sc, 0, -1U);
  if (error) {
   break;
  }
  error = ustorage_fs_check_cmd(sc, 10,
      (1UL << 1) | (0xfUL << 2) | (3UL << 7) | 1, 1);
  if (error) {
   break;
  }
  error = ustorage_fs_verify(sc);

  break;

 case 128:
  i = sc->sc_cbw->CBWCDB[4];
  sc->sc_transfer.cmd_dir = DIR_READ;
  temp = ((i == 0) ? 256UL : i);
  error = ustorage_fs_min_len(sc, temp << 9, mask9);
  if (error) {
   break;
  }
  error = ustorage_fs_check_cmd(sc, 6,
      (7UL << 1) | (1UL << 4) | 1, 1);
  if (error) {
   break;
  }
  error = ustorage_fs_write(sc);

  break;

 case 130:
  sc->sc_transfer.cmd_dir = DIR_READ;
  temp = get_be16(&sc->sc_cbw->CBWCDB[7]);
  error = ustorage_fs_min_len(sc, temp << 9, mask9);
  if (error) {
   break;
  }
  error = ustorage_fs_check_cmd(sc, 10,
      (1UL << 1) | (0xfUL << 2) | (3UL << 7) | 1, 1);
  if (error) {
   break;
  }
  error = ustorage_fs_write(sc);

  break;

 case 129:
  sc->sc_transfer.cmd_dir = DIR_READ;
  temp = get_be32(&sc->sc_cbw->CBWCDB[6]);
  if (temp > (mask9 >> 9)) {

   sc->sc_csw->bCSWStatus = CSWSTATUS_FAILED;
   error = 1;
   break;
  }
  error = ustorage_fs_min_len(sc, temp << 9, mask9);
  if (error) {
   break;
  }
  error = ustorage_fs_check_cmd(sc, 12,
      (1UL << 1) | (0xfUL << 2) | (0xfUL << 6) | 1, 1);
  if (error) {
   break;
  }
  error = ustorage_fs_write(sc);

  break;
 case 150:
 case 138:
 case 136:
 case 135:


 default:
  error = ustorage_fs_min_len(sc, 0, -1U);
  if (error) {
   break;
  }
  error = ustorage_fs_check_cmd(sc, sc->sc_transfer.cmd_len,
      0xff, 0);
  if (error) {
   break;
  }
  sc->sc_transfer.currlun->sense_data =
      SS_INVALID_COMMAND;
  error = 1;

  break;
 }
 return (error);
}
