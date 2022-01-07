
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpfs_dirent {scalar_t__ td_hash; } ;



__attribute__((used)) static __inline int
tmpfs_dirtree_cmp(struct tmpfs_dirent *a, struct tmpfs_dirent *b)
{
 if (a->td_hash > b->td_hash)
  return (1);
 else if (a->td_hash < b->td_hash)
  return (-1);
 return (0);
}
