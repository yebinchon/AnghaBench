
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int* msgout_buf; int msgout_len; int msgout_index; } ;
struct ahd_devinfo {int channel; int target; int lun; } ;


 int MSG_EXTENDED ;
 int MSG_EXT_WDTR ;
 int MSG_EXT_WDTR_LEN ;
 char* ahd_name (struct ahd_softc*) ;
 scalar_t__ bootverbose ;
 int printf (char*,char*,int,int,int,int) ;

__attribute__((used)) static void
ahd_construct_wdtr(struct ahd_softc *ahd, struct ahd_devinfo *devinfo,
     u_int bus_width)
{
 ahd->msgout_buf[ahd->msgout_index++] = MSG_EXTENDED;
 ahd->msgout_buf[ahd->msgout_index++] = MSG_EXT_WDTR_LEN;
 ahd->msgout_buf[ahd->msgout_index++] = MSG_EXT_WDTR;
 ahd->msgout_buf[ahd->msgout_index++] = bus_width;
 ahd->msgout_len += 4;
 if (bootverbose) {
  printf("(%s:%c:%d:%d): Sending WDTR %x\n",
         ahd_name(ahd), devinfo->channel, devinfo->target,
         devinfo->lun, bus_width);
 }
}
