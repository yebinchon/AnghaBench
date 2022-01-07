
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int mnt_kern_flag; } ;


 int ISDOTDOT ;
 int LK_EXCLUSIVE ;
 int LK_NODDLKTREAT ;
 int LK_SHARED ;
 int MNTK_LOOKUP_EXCL_DOTDOT ;
 int MNTK_LOOKUP_SHARED ;

__attribute__((used)) static int
compute_cn_lkflags(struct mount *mp, int lkflags, int cnflags)
{

 if (mp == ((void*)0) || ((lkflags & LK_SHARED) &&
     (!(mp->mnt_kern_flag & MNTK_LOOKUP_SHARED) ||
     ((cnflags & ISDOTDOT) &&
     (mp->mnt_kern_flag & MNTK_LOOKUP_EXCL_DOTDOT))))) {
  lkflags &= ~LK_SHARED;
  lkflags |= LK_EXCLUSIVE;
 }
 lkflags |= LK_NODDLKTREAT;
 return (lkflags);
}
