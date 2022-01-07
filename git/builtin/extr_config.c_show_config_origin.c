
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int current_config_name () ;
 int current_config_origin_type () ;
 scalar_t__ end_null ;
 int quote_c_style (int ,struct strbuf*,int *,int ) ;
 int strbuf_addch (struct strbuf*,char const) ;
 int strbuf_addstr (struct strbuf*,int ) ;

__attribute__((used)) static void show_config_origin(struct strbuf *buf)
{
 const char term = end_null ? '\0' : '\t';

 strbuf_addstr(buf, current_config_origin_type());
 strbuf_addch(buf, ':');
 if (end_null)
  strbuf_addstr(buf, current_config_name());
 else
  quote_c_style(current_config_name(), buf, ((void*)0), 0);
 strbuf_addch(buf, term);
}
