
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disk {int d_aliases; } ;


 int LIST_INIT (int *) ;
 int M_WAITOK ;
 int M_ZERO ;
 struct disk* g_malloc (int,int) ;

struct disk *
disk_alloc(void)
{
 struct disk *dp;

 dp = g_malloc(sizeof(struct disk), M_WAITOK | M_ZERO);
 LIST_INIT(&dp->d_aliases);
 return (dp);
}
