
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_cmd_work_ent {int cb_timeout_work; } ;


 int cancel_delayed_work_sync (int *) ;
 int kfree (struct mlx5_cmd_work_ent*) ;

__attribute__((used)) static void free_cmd(struct mlx5_cmd_work_ent *ent)
{
        cancel_delayed_work_sync(&ent->cb_timeout_work);
 kfree(ent);
}
