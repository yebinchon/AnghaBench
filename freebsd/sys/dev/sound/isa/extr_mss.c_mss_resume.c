
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* channel; } ;
struct mss_info {scalar_t__ bd_id; TYPE_2__ pch; int * opl_indexed_regs; int * mss_indexed_regs; } ;
typedef int device_t ;
struct TYPE_4__ {int speed; int format; } ;


 scalar_t__ MD_CS423X ;
 scalar_t__ MD_YM0020 ;
 int MSS_INDEXED_REGS ;
 int OPL_INDEXED_REGS ;
 int ad_write (struct mss_info*,int,int ) ;
 int conf_wr (struct mss_info*,int,int ) ;
 int mss_format (TYPE_2__*,int ) ;
 int mss_intr (struct mss_info*) ;
 int mss_lock (struct mss_info*) ;
 int mss_speed (TYPE_2__*,int ) ;
 int mss_unlock (struct mss_info*) ;
 struct mss_info* pcm_getdevinfo (int ) ;

__attribute__((used)) static int
mss_resume(device_t dev)
{



     struct mss_info *mss;
     int i;

     mss = pcm_getdevinfo(dev);

     if(mss->bd_id == MD_YM0020 || mss->bd_id == MD_CS423X) {

  for (i = 0; i < MSS_INDEXED_REGS; i++)
       ad_write(mss, i, mss->mss_indexed_regs[i]);
  for (i = 0; i < OPL_INDEXED_REGS; i++)
       conf_wr(mss, i, mss->opl_indexed_regs[i]);
  mss_intr(mss);
     }

 if (mss->bd_id == MD_CS423X) {

  mss_lock(mss);
  mss_format(&mss->pch, mss->pch.channel->format);
  mss_speed(&mss->pch, mss->pch.channel->speed);
  mss_unlock(mss);
 }

     return 0;

}
