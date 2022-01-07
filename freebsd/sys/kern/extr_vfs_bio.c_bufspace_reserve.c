
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufdomain {long bd_maxbufspace; long bd_hibufspace; long bd_bufspacethresh; int bd_bufspace; } ;


 int ENOSPC ;
 long atomic_fetchadd_long (int *,int) ;
 int atomic_subtract_long (int *,int) ;
 int bufspace_daemon_wakeup (struct bufdomain*) ;

__attribute__((used)) static int
bufspace_reserve(struct bufdomain *bd, int size, bool metadata)
{
 long limit, new;
 long space;

 if (metadata)
  limit = bd->bd_maxbufspace;
 else
  limit = bd->bd_hibufspace;
 space = atomic_fetchadd_long(&bd->bd_bufspace, size);
 new = space + size;
 if (new > limit) {
  atomic_subtract_long(&bd->bd_bufspace, size);
  return (ENOSPC);
 }


 if (space < bd->bd_bufspacethresh && new >= bd->bd_bufspacethresh)
  bufspace_daemon_wakeup(bd);

 return (0);
}
