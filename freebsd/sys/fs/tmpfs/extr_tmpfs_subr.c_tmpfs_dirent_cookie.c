
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpfs_dirent {scalar_t__ td_cookie; } ;
typedef scalar_t__ off_t ;


 int MPASS (int) ;
 scalar_t__ TMPFS_DIRCOOKIE_EOF ;
 scalar_t__ TMPFS_DIRCOOKIE_MIN ;

__attribute__((used)) static __inline off_t
tmpfs_dirent_cookie(struct tmpfs_dirent *de)
{
 if (de == ((void*)0))
  return (TMPFS_DIRCOOKIE_EOF);

 MPASS(de->td_cookie >= TMPFS_DIRCOOKIE_MIN);

 return (de->td_cookie);
}
