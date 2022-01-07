
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_local {int dummy; } ;


 scalar_t__ HAVE_THREADS ;
 int assert (int ) ;
 int key ;
 struct thread_local nothread_data ;
 struct thread_local* pthread_getspecific (int ) ;
 scalar_t__ threads_active ;

__attribute__((used)) static inline struct thread_local *get_thread_data(void)
{
 if (HAVE_THREADS) {
  if (threads_active)
   return pthread_getspecific(key);
  assert(!threads_active &&
         "This should only be reached when all threads are gone");
 }
 return &nothread_data;
}
