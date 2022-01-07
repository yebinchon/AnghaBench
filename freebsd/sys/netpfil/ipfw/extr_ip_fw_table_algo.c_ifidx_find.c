
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_info {int data; int state; } ;
struct ifidx {int dummy; } ;


 struct ifidx* bsearch (void*,int ,int ,int,int ) ;
 int compare_ifidx ;

__attribute__((used)) static struct ifidx *
ifidx_find(struct table_info *ti, void *key)
{
 struct ifidx *ifi;

 ifi = bsearch(key, ti->state, ti->data, sizeof(struct ifidx),
     compare_ifidx);

 return (ifi);
}
