
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; } ;
typedef TYPE_1__ ucl_object_t ;
struct ucl_parser {int dummy; } ;
typedef int pkg_conf_file_t ;


 int CONFFILE_PKG ;
 int CONFFILE_REPO ;
 scalar_t__ ENOENT ;
 int EXIT_FAILURE ;
 scalar_t__ UCL_OBJECT ;
 int config_parse (TYPE_1__*,int ) ;
 scalar_t__ errno ;
 int errx (int ,char*,char const*,int ) ;
 int parse_repo_file (TYPE_1__*) ;
 int ucl_object_unref (TYPE_1__*) ;
 int ucl_parser_add_file (struct ucl_parser*,char const*) ;
 int ucl_parser_free (struct ucl_parser*) ;
 int ucl_parser_get_error (struct ucl_parser*) ;
 TYPE_1__* ucl_parser_get_object (struct ucl_parser*) ;
 struct ucl_parser* ucl_parser_new (int ) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static int
read_conf_file(const char *confpath, pkg_conf_file_t conftype)
{
 struct ucl_parser *p;
 ucl_object_t *obj = ((void*)0);

 p = ucl_parser_new(0);

 if (!ucl_parser_add_file(p, confpath)) {
  if (errno != ENOENT)
   errx(EXIT_FAILURE, "Unable to parse configuration "
       "file %s: %s", confpath, ucl_parser_get_error(p));
  ucl_parser_free(p);

  return (1);
 }

 obj = ucl_parser_get_object(p);
 if (obj->type != UCL_OBJECT)
  warnx("Invalid configuration format, ignoring the "
      "configuration file %s", confpath);
 else {
  if (conftype == CONFFILE_PKG)
   config_parse(obj, conftype);
  else if (conftype == CONFFILE_REPO)
   parse_repo_file(obj);
 }

 ucl_object_unref(obj);
 ucl_parser_free(p);

 return (0);
}
