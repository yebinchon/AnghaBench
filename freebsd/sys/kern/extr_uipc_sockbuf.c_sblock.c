
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {int sb_flags; int sb_sx; } ;


 int EWOULDBLOCK ;
 int KASSERT (int,char*) ;
 int SBL_NOINTR ;
 int SBL_VALID ;
 int SBL_WAIT ;
 int SB_NOINTR ;
 scalar_t__ sx_try_xlock (int *) ;
 int sx_xlock (int *) ;
 int sx_xlock_sig (int *) ;

int
sblock(struct sockbuf *sb, int flags)
{

 KASSERT((flags & SBL_VALID) == flags,
     ("sblock: flags invalid (0x%x)", flags));

 if (flags & SBL_WAIT) {
  if ((sb->sb_flags & SB_NOINTR) ||
      (flags & SBL_NOINTR)) {
   sx_xlock(&sb->sb_sx);
   return (0);
  }
  return (sx_xlock_sig(&sb->sb_sx));
 } else {
  if (sx_try_xlock(&sb->sb_sx) == 0)
   return (EWOULDBLOCK);
  return (0);
 }
}
