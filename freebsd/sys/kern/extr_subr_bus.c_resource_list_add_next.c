
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
typedef int rman_res_t ;


 int resource_list_add (struct resource_list*,int,int,int ,int ,int ) ;
 int * resource_list_find (struct resource_list*,int,int) ;

int
resource_list_add_next(struct resource_list *rl, int type, rman_res_t start,
    rman_res_t end, rman_res_t count)
{
 int rid;

 rid = 0;
 while (resource_list_find(rl, type, rid) != ((void*)0))
  rid++;
 resource_list_add(rl, type, rid, start, end, count);
 return (rid);
}
