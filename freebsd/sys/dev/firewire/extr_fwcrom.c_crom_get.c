
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct csrreg {int dummy; } ;
struct crom_ptr {size_t index; TYPE_1__* dir; } ;
struct crom_context {size_t depth; struct crom_ptr* stack; } ;
struct TYPE_2__ {struct csrreg* entry; } ;



struct csrreg *
crom_get(struct crom_context *cc)
{
 struct crom_ptr *ptr;

 ptr = &cc->stack[cc->depth];
 return (&ptr->dir->entry[ptr->index]);
}
