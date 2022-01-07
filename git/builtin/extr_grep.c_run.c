
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_item {int source; } ;
struct grep_opt {struct work_item* output_priv; } ;


 int free (void*) ;
 int free_grep_patterns (void*) ;
 struct work_item* get_work () ;
 int grep_source (struct grep_opt*,int *) ;
 int grep_source_clear_data (int *) ;
 int work_done (struct work_item*) ;

__attribute__((used)) static void *run(void *arg)
{
 int hit = 0;
 struct grep_opt *opt = arg;

 while (1) {
  struct work_item *w = get_work();
  if (!w)
   break;

  opt->output_priv = w;
  hit |= grep_source(opt, &w->source);
  grep_source_clear_data(&w->source);
  work_done(w);
 }
 free_grep_patterns(arg);
 free(arg);

 return (void*) (intptr_t) hit;
}
