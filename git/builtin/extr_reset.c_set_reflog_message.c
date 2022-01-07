
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 char* getenv (char*) ;
 int strbuf_addf (struct strbuf*,char*,char const*,...) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static void set_reflog_message(struct strbuf *sb, const char *action,
          const char *rev)
{
 const char *rla = getenv("GIT_REFLOG_ACTION");

 strbuf_reset(sb);
 if (rla)
  strbuf_addf(sb, "%s: %s", rla, action);
 else if (rev)
  strbuf_addf(sb, "reset: moving to %s", rev);
 else
  strbuf_addf(sb, "reset: %s", action);
}
