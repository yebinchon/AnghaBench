
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpfs_dirent {int td_cookie; } ;
typedef int boolean_t ;


 int TMPFS_DIRCOOKIE_DUPHEAD ;

__attribute__((used)) static __inline boolean_t
tmpfs_dirent_duphead(struct tmpfs_dirent *de)
{
 return ((de->td_cookie & TMPFS_DIRCOOKIE_DUPHEAD) != 0);
}
