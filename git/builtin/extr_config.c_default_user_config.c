
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int ident_default_email () ;
 int ident_default_name () ;
 int strbuf_addf (struct strbuf*,int ,int ,int ) ;
 char* strbuf_detach (struct strbuf*,int *) ;

__attribute__((used)) static char *default_user_config(void)
{
 struct strbuf buf = STRBUF_INIT;
 strbuf_addf(&buf,
      _("# This is Git's per-user configuration file.\n"
        "[user]\n"
        "# Please adapt and uncomment the following lines:\n"
        "#	name = %s\n"
        "#	email = %s\n"),
      ident_default_name(),
      ident_default_email());
 return strbuf_detach(&buf, ((void*)0));
}
