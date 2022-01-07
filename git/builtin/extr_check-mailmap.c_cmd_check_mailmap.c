
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct strbuf {char const* buf; } ;


 scalar_t__ EOF ;
 struct strbuf STRBUF_INIT ;
 struct string_list STRING_LIST_INIT_NODUP ;
 int _ (char*) ;
 int check_mailmap (struct string_list*,char const*) ;
 int check_mailmap_options ;
 int check_mailmap_usage ;
 int clear_mailmap (struct string_list*) ;
 int die (int ) ;
 int git_config (int ,int *) ;
 int git_default_config ;
 int maybe_flush_or_die (int ,char*) ;
 int parse_options (int,char const**,char const*,int ,int ,int ) ;
 int read_mailmap (struct string_list*,int *) ;
 int stdin ;
 int stdout ;
 scalar_t__ strbuf_getline_lf (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 scalar_t__ use_stdin ;

int cmd_check_mailmap(int argc, const char **argv, const char *prefix)
{
 int i;
 struct string_list mailmap = STRING_LIST_INIT_NODUP;

 git_config(git_default_config, ((void*)0));
 argc = parse_options(argc, argv, prefix, check_mailmap_options,
        check_mailmap_usage, 0);
 if (argc == 0 && !use_stdin)
  die(_("no contacts specified"));

 read_mailmap(&mailmap, ((void*)0));

 for (i = 0; i < argc; ++i)
  check_mailmap(&mailmap, argv[i]);
 maybe_flush_or_die(stdout, "stdout");

 if (use_stdin) {
  struct strbuf buf = STRBUF_INIT;
  while (strbuf_getline_lf(&buf, stdin) != EOF) {
   check_mailmap(&mailmap, buf.buf);
   maybe_flush_or_die(stdout, "stdout");
  }
  strbuf_release(&buf);
 }

 clear_mailmap(&mailmap);
 return 0;
}
