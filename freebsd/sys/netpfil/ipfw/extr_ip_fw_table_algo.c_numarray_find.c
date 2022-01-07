
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_info {int data; int state; } ;
struct numarray {int dummy; } ;


 struct numarray* bsearch (void*,int ,int ,int,int ) ;
 int compare_ifidx ;

__attribute__((used)) static struct numarray *
numarray_find(struct table_info *ti, void *key)
{
 struct numarray *ri;

 ri = bsearch(key, ti->state, ti->data, sizeof(struct numarray),
     compare_ifidx);

 return (ri);
}
