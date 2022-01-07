
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct shortlog {int wrap; int in2; int in1; } ;


 int strbuf_add_wrapped_text (struct strbuf*,char const*,int ,int ,int ) ;
 int strbuf_addch (struct strbuf*,char) ;

__attribute__((used)) static void add_wrapped_shortlog_msg(struct strbuf *sb, const char *s,
         const struct shortlog *log)
{
 strbuf_add_wrapped_text(sb, s, log->in1, log->in2, log->wrap);
 strbuf_addch(sb, '\n');
}
