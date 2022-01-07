
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_flow_destination {int type; int vport_num; int tir_num; TYPE_1__* ft; } ;
struct TYPE_2__ {int id; } ;


 int GFP_KERNEL ;



 int kfree (char*) ;
 char* kzalloc (int,int ) ;
 int snprintf (char*,int,char*,char*,int) ;

__attribute__((used)) static char *get_dest_name(struct mlx5_flow_destination *dest)
{
 char *name = kzalloc(sizeof(char) * 20, GFP_KERNEL);

 switch (dest->type) {
 case 130:
  snprintf(name, 20, "dest_%s_%u", "flow_table",
    dest->ft->id);
  return name;
 case 128:
  snprintf(name, 20, "dest_%s_%u", "vport",
    dest->vport_num);
  return name;
 case 129:
  snprintf(name, 20, "dest_%s_%u", "tir", dest->tir_num);
  return name;
 default:
  kfree(name);
  return ((void*)0);
 }
}
