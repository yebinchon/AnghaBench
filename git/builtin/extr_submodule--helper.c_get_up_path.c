
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int count_slashes (char const*) ;
 int is_dir_sep (char const) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int strlen (char const*) ;

__attribute__((used)) static char *get_up_path(const char *path)
{
 int i;
 struct strbuf sb = STRBUF_INIT;

 for (i = count_slashes(path); i; i--)
  strbuf_addstr(&sb, "../");






 if (!is_dir_sep(path[strlen(path) - 1]))
  strbuf_addstr(&sb, "../");

 return strbuf_detach(&sb, ((void*)0));
}
