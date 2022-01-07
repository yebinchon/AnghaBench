
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int timer_reclaim_task; } ;


 int TASK_INIT (int *,int ,int ,struct port_info*) ;
 int sge_timer_reclaim ;

int
t3_sge_init_port(struct port_info *pi)
{
 TASK_INIT(&pi->timer_reclaim_task, 0, sge_timer_reclaim, pi);
 return (0);
}
