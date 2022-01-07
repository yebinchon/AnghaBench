
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct fm801_info {int play_flip; int rec_flip; scalar_t__ rec_start; scalar_t__ play_start; } ;
struct fm801_chinfo {scalar_t__ dir; struct fm801_info* parent; } ;
typedef int kobj_t ;


 int FM_PLAY_DMABUF1 ;
 int FM_PLAY_DMABUF2 ;
 int FM_REC_DMABUF1 ;
 int FM_REC_DMABUF2 ;
 scalar_t__ PCMDIR_PLAY ;
 scalar_t__ PCMDIR_REC ;
 scalar_t__ fm801_rd (struct fm801_info*,int ,int) ;

__attribute__((used)) static u_int32_t
fm801ch_getptr(kobj_t obj, void *data)
{
 struct fm801_chinfo *ch = data;
 struct fm801_info *fm801 = ch->parent;
 u_int32_t result = 0;

 if (ch->dir == PCMDIR_PLAY) {
  result = fm801_rd(fm801,
   (fm801->play_flip&1) ?
   FM_PLAY_DMABUF2:FM_PLAY_DMABUF1, 4) - fm801->play_start;
 }

 if (ch->dir == PCMDIR_REC) {
  result = fm801_rd(fm801,
   (fm801->rec_flip&1) ?
   FM_REC_DMABUF2:FM_REC_DMABUF1, 4) - fm801->rec_start;
 }

 return result;
}
