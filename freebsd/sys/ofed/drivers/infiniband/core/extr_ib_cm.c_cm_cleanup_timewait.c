
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cm_timewait_info {scalar_t__ inserted_remote_qp; int remote_qp_node; scalar_t__ inserted_remote_id; int remote_id_node; } ;
struct TYPE_2__ {int remote_qp_table; int remote_id_table; } ;


 TYPE_1__ cm ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void cm_cleanup_timewait(struct cm_timewait_info *timewait_info)
{
 if (timewait_info->inserted_remote_id) {
  rb_erase(&timewait_info->remote_id_node, &cm.remote_id_table);
  timewait_info->inserted_remote_id = 0;
 }

 if (timewait_info->inserted_remote_qp) {
  rb_erase(&timewait_info->remote_qp_node, &cm.remote_qp_table);
  timewait_info->inserted_remote_qp = 0;
 }
}
