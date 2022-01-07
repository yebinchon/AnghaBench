
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_4__ {int channel; } ;
struct TYPE_3__ {int channel; } ;
struct fm801_info {int play_flip; int play_start; int play_nextblk; int rec_flip; int rec_start; int rec_nextblk; TYPE_2__ rch; TYPE_1__ pch; } ;


 int DPRINT (char*,...) ;
 int FM_INTSTATUS ;
 int FM_INTSTATUS_MPU ;
 int FM_INTSTATUS_PLAY ;
 int FM_INTSTATUS_REC ;
 int FM_INTSTATUS_VOL ;
 int FM_PLAY_DMABUF1 ;
 int FM_PLAY_DMABUF2 ;
 int FM_REC_DMABUF1 ;
 int FM_REC_DMABUF2 ;
 int chn_intr (int ) ;
 int fm801_rd (struct fm801_info*,int ,int) ;
 int fm801_wr (struct fm801_info*,int ,int,int) ;

__attribute__((used)) static void
fm801_intr(void *p)
{
 struct fm801_info *fm801 = (struct fm801_info *)p;
 u_int32_t intsrc = fm801_rd(fm801, FM_INTSTATUS, 2);

 DPRINT("\nfm801_intr intsrc 0x%x ", intsrc);

 if(intsrc & FM_INTSTATUS_PLAY) {
  fm801->play_flip++;
  if(fm801->play_flip & 1) {
   fm801_wr(fm801, FM_PLAY_DMABUF1, fm801->play_start,4);
  } else
   fm801_wr(fm801, FM_PLAY_DMABUF2, fm801->play_nextblk,4);
  chn_intr(fm801->pch.channel);
 }

 if(intsrc & FM_INTSTATUS_REC) {
  fm801->rec_flip++;
  if(fm801->rec_flip & 1) {
   fm801_wr(fm801, FM_REC_DMABUF1, fm801->rec_start,4);
  } else
   fm801_wr(fm801, FM_REC_DMABUF2, fm801->rec_nextblk,4);
  chn_intr(fm801->rch.channel);
 }

 if ( intsrc & FM_INTSTATUS_MPU ) {

  fm801_wr(fm801, FM_INTSTATUS, intsrc & FM_INTSTATUS_MPU,2);
 }

 if ( intsrc & FM_INTSTATUS_VOL ) {

  fm801_wr(fm801, FM_INTSTATUS, intsrc & FM_INTSTATUS_VOL,2);
 }

 DPRINT("fm801_intr clear\n\n");
 fm801_wr(fm801, FM_INTSTATUS, intsrc & (FM_INTSTATUS_PLAY | FM_INTSTATUS_REC), 2);
}
