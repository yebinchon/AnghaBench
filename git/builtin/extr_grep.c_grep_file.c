
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct grep_source {int dummy; } ;
struct grep_opt {int prefix; scalar_t__ prefix_length; scalar_t__ relative; } ;


 int GREP_SOURCE_FILE ;
 struct strbuf STRBUF_INIT ;
 int add_work (struct grep_opt*,struct grep_source*) ;
 int grep_source (struct grep_opt*,struct grep_source*) ;
 int grep_source_clear (struct grep_source*) ;
 int grep_source_init (struct grep_source*,int ,int ,char const*,char const*) ;
 int num_threads ;
 int quote_path_relative (char const*,int ,struct strbuf*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int grep_file(struct grep_opt *opt, const char *filename)
{
 struct strbuf buf = STRBUF_INIT;
 struct grep_source gs;

 if (opt->relative && opt->prefix_length)
  quote_path_relative(filename, opt->prefix, &buf);
 else
  strbuf_addstr(&buf, filename);

 grep_source_init(&gs, GREP_SOURCE_FILE, buf.buf, filename, filename);
 strbuf_release(&buf);

 if (num_threads > 1) {




  add_work(opt, &gs);
  return 0;
 } else {
  int hit;

  hit = grep_source(opt, &gs);

  grep_source_clear(&gs);
  return hit;
 }
}
