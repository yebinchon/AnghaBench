
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_fc {int gtask; } ;


 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;

__attribute__((used)) static void
isp_gdt(void *arg)
{
 struct isp_fc *fc = arg;
 taskqueue_enqueue(taskqueue_thread, &fc->gtask);
}
