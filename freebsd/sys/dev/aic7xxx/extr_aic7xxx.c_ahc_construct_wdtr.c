
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahc_softc {int* msgout_buf; int msgout_len; int msgout_index; } ;
struct ahc_devinfo {int channel; int target; int lun; } ;


 int MSG_EXTENDED ;
 int MSG_EXT_WDTR ;
 int MSG_EXT_WDTR_LEN ;
 char* ahc_name (struct ahc_softc*) ;
 scalar_t__ bootverbose ;
 int printf (char*,char*,int,int,int,int) ;

__attribute__((used)) static void
ahc_construct_wdtr(struct ahc_softc *ahc, struct ahc_devinfo *devinfo,
     u_int bus_width)
{
 ahc->msgout_buf[ahc->msgout_index++] = MSG_EXTENDED;
 ahc->msgout_buf[ahc->msgout_index++] = MSG_EXT_WDTR_LEN;
 ahc->msgout_buf[ahc->msgout_index++] = MSG_EXT_WDTR;
 ahc->msgout_buf[ahc->msgout_index++] = bus_width;
 ahc->msgout_len += 4;
 if (bootverbose) {
  printf("(%s:%c:%d:%d): Sending WDTR %x\n",
         ahc_name(ahc), devinfo->channel, devinfo->target,
         devinfo->lun, bus_width);
 }
}
