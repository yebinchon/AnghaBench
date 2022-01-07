
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vdump_args {int error; int sd; } ;
struct table_value {int spare1; } ;
struct TYPE_2__ {int kidx; } ;
struct table_val_link {TYPE_1__ no; int pval; } ;
struct namedobj_instance {int dummy; } ;
struct named_object {int dummy; } ;


 int ENOMEM ;
 scalar_t__ ipfw_get_sopt_space (int ,int) ;
 int memcpy (struct table_value*,int ,int) ;

__attribute__((used)) static int
dump_tvalue(struct namedobj_instance *ni, struct named_object *no, void *arg)
{
 struct vdump_args *da;
 struct table_val_link *ptv;
 struct table_value *v;

 da = (struct vdump_args *)arg;
 ptv = (struct table_val_link *)no;

 v = (struct table_value *)ipfw_get_sopt_space(da->sd, sizeof(*v));

 if (v == ((void*)0)) {
  da->error = ENOMEM;
  return (ENOMEM);
 }

 memcpy(v, ptv->pval, sizeof(*v));
 v->spare1 = ptv->no.kidx;
 return (0);
}
