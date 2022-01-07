
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mevent_tid ;
 int pthread_set_name_np (int ,char*) ;

__attribute__((used)) static void
mevent_set_name(void)
{

 pthread_set_name_np(mevent_tid, "mevent");
}
