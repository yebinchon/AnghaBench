
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int setenv (char*,int ,int ) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void set_reflog_message(int argc, const char **argv)
{
 int i;
 struct strbuf msg = STRBUF_INIT;

 for (i = 0; i < argc; i++) {
  if (i)
   strbuf_addch(&msg, ' ');
  strbuf_addstr(&msg, argv[i]);
 }

 setenv("GIT_REFLOG_ACTION", msg.buf, 0);

 strbuf_release(&msg);
}
