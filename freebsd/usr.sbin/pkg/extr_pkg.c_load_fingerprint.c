
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; } ;
typedef TYPE_1__ ucl_object_t ;
struct ucl_parser {int dummy; } ;
struct fingerprint {int name; } ;


 int MAXPATHLEN ;
 scalar_t__ UCL_OBJECT ;
 struct fingerprint* parse_fingerprint (TYPE_1__*) ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 int strdup (char const*) ;
 int ucl_object_unref (TYPE_1__*) ;
 int ucl_parser_add_file (struct ucl_parser*,char*) ;
 int ucl_parser_free (struct ucl_parser*) ;
 int ucl_parser_get_error (struct ucl_parser*) ;
 TYPE_1__* ucl_parser_get_object (struct ucl_parser*) ;
 struct ucl_parser* ucl_parser_new (int ) ;
 int warnx (char*,char*,int ) ;

__attribute__((used)) static struct fingerprint *
load_fingerprint(const char *dir, const char *filename)
{
 ucl_object_t *obj = ((void*)0);
 struct ucl_parser *p = ((void*)0);
 struct fingerprint *f;
 char path[MAXPATHLEN];

 f = ((void*)0);

 snprintf(path, MAXPATHLEN, "%s/%s", dir, filename);

 p = ucl_parser_new(0);
 if (!ucl_parser_add_file(p, path)) {
  warnx("%s: %s", path, ucl_parser_get_error(p));
  ucl_parser_free(p);
  return (((void*)0));
 }

 obj = ucl_parser_get_object(p);

 if (obj->type == UCL_OBJECT)
  f = parse_fingerprint(obj);

 if (f != ((void*)0))
  f->name = strdup(filename);

 ucl_object_unref(obj);
 ucl_parser_free(p);

 return (f);
}
