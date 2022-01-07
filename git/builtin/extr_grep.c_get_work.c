
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_item {int dummy; } ;


 size_t ARRAY_SIZE (struct work_item*) ;
 scalar_t__ all_work_added ;
 int cond_add ;
 int grep_lock () ;
 int grep_mutex ;
 int grep_unlock () ;
 int pthread_cond_wait (int *,int *) ;
 struct work_item* todo ;
 size_t todo_end ;
 size_t todo_start ;

__attribute__((used)) static struct work_item *get_work(void)
{
 struct work_item *ret;

 grep_lock();
 while (todo_start == todo_end && !all_work_added) {
  pthread_cond_wait(&cond_add, &grep_mutex);
 }

 if (todo_start == todo_end && all_work_added) {
  ret = ((void*)0);
 } else {
  ret = &todo[todo_start];
  todo_start = (todo_start + 1) % ARRAY_SIZE(todo);
 }
 grep_unlock();
 return ret;
}
