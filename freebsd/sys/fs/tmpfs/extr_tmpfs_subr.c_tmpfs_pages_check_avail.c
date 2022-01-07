
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpfs_mount {scalar_t__ tm_pages_max; } ;


 scalar_t__ ULONG_MAX ;
 size_t tmpfs_mem_avail () ;
 scalar_t__ tmpfs_pages_used (struct tmpfs_mount*) ;

__attribute__((used)) static size_t
tmpfs_pages_check_avail(struct tmpfs_mount *tmp, size_t req_pages)
{
 if (tmpfs_mem_avail() < req_pages)
  return (0);

 if (tmp->tm_pages_max != ULONG_MAX &&
     tmp->tm_pages_max < req_pages + tmpfs_pages_used(tmp))
   return (0);

 return (1);
}
