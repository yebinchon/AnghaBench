
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_source {int linenr; struct config_source* prev; int var; int value; scalar_t__ eof; } ;
struct config_options {int dummy; } ;
typedef int config_fn_t ;


 struct config_source* cf ;
 int git_parse_source (int ,void*,struct config_options const*) ;
 int strbuf_init (int *,int) ;
 int strbuf_release (int *) ;

__attribute__((used)) static int do_config_from(struct config_source *top, config_fn_t fn, void *data,
     const struct config_options *opts)
{
 int ret;


 top->prev = cf;
 top->linenr = 1;
 top->eof = 0;
 strbuf_init(&top->value, 1024);
 strbuf_init(&top->var, 1024);
 cf = top;

 ret = git_parse_source(fn, data, opts);


 strbuf_release(&top->value);
 strbuf_release(&top->var);
 cf = top->prev;

 return ret;
}
