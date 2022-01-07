
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_local {int dummy; } ;


 int key ;
 int pthread_setspecific (int ,struct thread_local*) ;
 scalar_t__ threads_active ;

__attribute__((used)) static void set_thread_data(struct thread_local *data)
{
 if (threads_active)
  pthread_setspecific(key, data);
}
