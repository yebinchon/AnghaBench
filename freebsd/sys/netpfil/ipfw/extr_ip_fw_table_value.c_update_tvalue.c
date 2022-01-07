
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vdump_args {struct table_value* pval; } ;
struct table_value {int dummy; } ;
struct TYPE_2__ {size_t kidx; char* name; } ;
struct table_val_link {TYPE_1__ no; struct table_value* pval; } ;
struct namedobj_instance {int dummy; } ;
struct named_object {int dummy; } ;



__attribute__((used)) static int
update_tvalue(struct namedobj_instance *ni, struct named_object *no, void *arg)
{
 struct vdump_args *da;
 struct table_val_link *ptv;
 struct table_value *pval;

 da = (struct vdump_args *)arg;
 ptv = (struct table_val_link *)no;

 pval = da->pval;
 ptv->pval = &pval[ptv->no.kidx];
 ptv->no.name = (char *)&pval[ptv->no.kidx];
 return (0);
}
