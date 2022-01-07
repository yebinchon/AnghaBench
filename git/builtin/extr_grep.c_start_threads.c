
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct grep_opt {scalar_t__ debug; int output; } ;
struct TYPE_3__ {int out; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int _ (char*) ;
 int compile_grep_patterns (struct grep_opt*) ;
 int cond_add ;
 int cond_result ;
 int cond_write ;
 int die (int ,int ) ;
 int grep_attr_mutex ;
 int grep_mutex ;
 struct grep_opt* grep_opt_dup (struct grep_opt*) ;
 int grep_read_mutex ;
 int grep_use_locks ;
 int num_threads ;
 int pthread_cond_init (int *,int *) ;
 int pthread_create (int *,int *,int ,struct grep_opt*) ;
 int pthread_mutex_init (int *,int *) ;
 int run ;
 int strbuf_init (int *,int ) ;
 int strbuf_out ;
 int strerror (int) ;
 int * threads ;
 TYPE_1__* todo ;
 int * xcalloc (int,int) ;

__attribute__((used)) static void start_threads(struct grep_opt *opt)
{
 int i;

 pthread_mutex_init(&grep_mutex, ((void*)0));
 pthread_mutex_init(&grep_read_mutex, ((void*)0));
 pthread_mutex_init(&grep_attr_mutex, ((void*)0));
 pthread_cond_init(&cond_add, ((void*)0));
 pthread_cond_init(&cond_write, ((void*)0));
 pthread_cond_init(&cond_result, ((void*)0));
 grep_use_locks = 1;

 for (i = 0; i < ARRAY_SIZE(todo); i++) {
  strbuf_init(&todo[i].out, 0);
 }

 threads = xcalloc(num_threads, sizeof(*threads));
 for (i = 0; i < num_threads; i++) {
  int err;
  struct grep_opt *o = grep_opt_dup(opt);
  o->output = strbuf_out;
  if (i)
   o->debug = 0;
  compile_grep_patterns(o);
  err = pthread_create(&threads[i], ((void*)0), run, o);

  if (err)
   die(_("grep: failed to create thread: %s"),
       strerror(err));
 }
}
