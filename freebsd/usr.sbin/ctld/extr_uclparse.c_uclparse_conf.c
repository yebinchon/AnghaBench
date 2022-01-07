
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {int dummy; } ;
struct conf {int dummy; } ;


 struct conf* conf ;
 int log_warn (char*,char const*,int ) ;
 int ucl_parser_add_file (struct ucl_parser*,char const*) ;
 int ucl_parser_get_error (struct ucl_parser*) ;
 int ucl_parser_get_object (struct ucl_parser*) ;
 struct ucl_parser* ucl_parser_new (int ) ;
 int uclparse_toplevel (int ) ;

int
uclparse_conf(struct conf *newconf, const char *path)
{
 struct ucl_parser *parser;
 int error;

 conf = newconf;
 parser = ucl_parser_new(0);

 if (!ucl_parser_add_file(parser, path)) {
  log_warn("unable to parse configuration file %s: %s", path,
      ucl_parser_get_error(parser));
  return (1);
 }

 error = uclparse_toplevel(ucl_parser_get_object(parser));

 return (error);
}
