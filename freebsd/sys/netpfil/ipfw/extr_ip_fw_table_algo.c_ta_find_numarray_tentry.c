
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct table_info {int dummy; } ;
struct numarray_cfg {int dummy; } ;
struct numarray {int dummy; } ;
struct TYPE_5__ {int key; } ;
struct TYPE_6__ {TYPE_1__ k; } ;
typedef TYPE_2__ ipfw_obj_tentry ;


 int ENOENT ;
 struct numarray* numarray_find (struct table_info*,int *) ;
 int ta_dump_numarray_tentry (void*,struct table_info*,struct numarray*,TYPE_2__*) ;

__attribute__((used)) static int
ta_find_numarray_tentry(void *ta_state, struct table_info *ti,
    ipfw_obj_tentry *tent)
{
 struct numarray_cfg *cfg;
 struct numarray *ri;

 cfg = (struct numarray_cfg *)ta_state;

 ri = numarray_find(ti, &tent->k.key);

 if (ri != ((void*)0)) {
  ta_dump_numarray_tentry(ta_state, ti, ri, tent);
  return (0);
 }

 return (ENOENT);
}
