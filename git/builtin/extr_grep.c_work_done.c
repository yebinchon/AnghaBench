
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t len; char* buf; } ;
struct work_item {int done; int source; TYPE_1__ out; } ;


 size_t ARRAY_SIZE (struct work_item*) ;
 scalar_t__ all_work_added ;
 int cond_result ;
 int cond_write ;
 int grep_lock () ;
 int grep_source_clear (int *) ;
 int grep_unlock () ;
 int pthread_cond_signal (int *) ;
 scalar_t__ skip_first_line ;
 struct work_item* todo ;
 size_t todo_done ;
 size_t todo_end ;
 size_t todo_start ;
 int write_or_die (int,char const*,size_t) ;

__attribute__((used)) static void work_done(struct work_item *w)
{
 int old_done;

 grep_lock();
 w->done = 1;
 old_done = todo_done;
 for(; todo[todo_done].done && todo_done != todo_start;
     todo_done = (todo_done+1) % ARRAY_SIZE(todo)) {
  w = &todo[todo_done];
  if (w->out.len) {
   const char *p = w->out.buf;
   size_t len = w->out.len;


   if (skip_first_line) {
    while (len) {
     len--;
     if (*p++ == '\n')
      break;
    }
    skip_first_line = 0;
   }

   write_or_die(1, p, len);
  }
  grep_source_clear(&w->source);
 }

 if (old_done != todo_done)
  pthread_cond_signal(&cond_write);

 if (all_work_added && todo_done == todo_end)
  pthread_cond_signal(&cond_result);

 grep_unlock();
}
