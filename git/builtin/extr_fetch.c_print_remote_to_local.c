
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int refcol_width ;
 int strbuf_addf (struct strbuf*,char*,int ,char const*,char const*) ;

__attribute__((used)) static void print_remote_to_local(struct strbuf *display,
      const char *remote, const char *local)
{
 strbuf_addf(display, "%-*s -> %s", refcol_width, remote, local);
}
