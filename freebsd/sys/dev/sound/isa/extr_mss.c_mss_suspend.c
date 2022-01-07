
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mss_info {scalar_t__ bd_id; int* opl_indexed_regs; int * mss_indexed_regs; } ;
typedef int device_t ;


 scalar_t__ MD_CS423X ;
 scalar_t__ MD_YM0020 ;
 int MSS_INDEXED_REGS ;
 int OPL_INDEXED_REGS ;
 int ad_read (struct mss_info*,int) ;
 int conf_rd (struct mss_info*,int) ;
 int conf_wr (struct mss_info*,int,int) ;
 struct mss_info* pcm_getdevinfo (int ) ;

__attribute__((used)) static int
mss_suspend(device_t dev)
{
     int i;
     struct mss_info *mss;

     mss = pcm_getdevinfo(dev);

     if(mss->bd_id == MD_YM0020 || mss->bd_id == MD_CS423X)
     {

  conf_wr(mss, 0x12, 0x0c);
  for(i = 0; i < MSS_INDEXED_REGS; i++)
       mss->mss_indexed_regs[i] = ad_read(mss, i);
  for(i = 0; i < OPL_INDEXED_REGS; i++)
       mss->opl_indexed_regs[i] = conf_rd(mss, i);
  mss->opl_indexed_regs[0x12] = 0x0;
     }
     return 0;
}
