
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_item {int out; } ;
struct grep_opt {struct work_item* output_priv; } ;


 int strbuf_add (int *,void const*,size_t) ;

__attribute__((used)) static void strbuf_out(struct grep_opt *opt, const void *buf, size_t size)
{
 struct work_item *w = opt->output_priv;
 strbuf_add(&w->out, buf, size);
}
