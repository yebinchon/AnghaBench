
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int taskqueue_run (int ) ;
 int taskqueue_swi_giant ;

__attribute__((used)) static void
taskqueue_swi_giant_run(void *dummy)
{
 taskqueue_run(taskqueue_swi_giant);
}
