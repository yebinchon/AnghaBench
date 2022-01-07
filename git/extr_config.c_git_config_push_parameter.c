
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 int CONFIG_DATA_ENVIRONMENT ;
 struct strbuf STRBUF_INIT ;
 char* getenv (int ) ;
 int setenv (int ,int ,int) ;
 int sq_quote_buf (struct strbuf*,char const*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;

void git_config_push_parameter(const char *text)
{
 struct strbuf env = STRBUF_INIT;
 const char *old = getenv(CONFIG_DATA_ENVIRONMENT);
 if (old && *old) {
  strbuf_addstr(&env, old);
  strbuf_addch(&env, ' ');
 }
 sq_quote_buf(&env, text);
 setenv(CONFIG_DATA_ENVIRONMENT, env.buf, 1);
 strbuf_release(&env);
}
