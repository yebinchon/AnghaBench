
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int free (char*) ;
 scalar_t__ git_config_get_string (int ,char**) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;

int read_branch_desc(struct strbuf *buf, const char *branch_name)
{
 char *v = ((void*)0);
 struct strbuf name = STRBUF_INIT;
 strbuf_addf(&name, "branch.%s.description", branch_name);
 if (git_config_get_string(name.buf, &v)) {
  strbuf_release(&name);
  return -1;
 }
 strbuf_addstr(buf, v);
 free(v);
 strbuf_release(&name);
 return 0;
}
