
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct grep_source {int dummy; } ;
struct grep_opt {scalar_t__ binary; TYPE_1__* repo; } ;
struct TYPE_5__ {int out; scalar_t__ done; struct grep_source source; } ;
struct TYPE_4__ {int index; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 scalar_t__ GREP_BINARY_TEXT ;
 int cond_add ;
 int cond_write ;
 int grep_lock () ;
 int grep_mutex ;
 int grep_source_load_driver (struct grep_source*,int ) ;
 int grep_unlock () ;
 int pthread_cond_signal (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int strbuf_reset (int *) ;
 TYPE_2__* todo ;
 int todo_done ;
 int todo_end ;

__attribute__((used)) static void add_work(struct grep_opt *opt, const struct grep_source *gs)
{
 grep_lock();

 while ((todo_end+1) % ARRAY_SIZE(todo) == todo_done) {
  pthread_cond_wait(&cond_write, &grep_mutex);
 }

 todo[todo_end].source = *gs;
 if (opt->binary != GREP_BINARY_TEXT)
  grep_source_load_driver(&todo[todo_end].source,
     opt->repo->index);
 todo[todo_end].done = 0;
 strbuf_reset(&todo[todo_end].out);
 todo_end = (todo_end + 1) % ARRAY_SIZE(todo);

 pthread_cond_signal(&cond_add);
 grep_unlock();
}
