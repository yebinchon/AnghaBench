
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
typedef int * ucl_object_iter_t ;
struct ucl_parser {int dummy; } ;


 int PF_CONFIG_NAME ;
 int asprintf (char**,char*,char const*) ;
 int err (int,char*,...) ;
 int errx (int,char*,...) ;
 char* find_pf_device (int const*) ;
 scalar_t__ strcasecmp (char const*,int ) ;
 int * ucl_iterate_object (int *,int **,int) ;
 char* ucl_object_key (int const*) ;
 int ucl_object_unref (int *) ;
 int ucl_parser_add_file (struct ucl_parser*,char const*) ;
 int ucl_parser_free (struct ucl_parser*) ;
 char* ucl_parser_get_error (struct ucl_parser*) ;
 int * ucl_parser_get_object (struct ucl_parser*) ;
 struct ucl_parser* ucl_parser_new (int ) ;

char *
find_device(const char *filename)
{
 char *device;
 const char *deviceName;
 ucl_object_iter_t it;
 struct ucl_parser *parser;
 ucl_object_t *top;
 const ucl_object_t *obj;
 const char *errmsg, *key;
 int error;

 device = ((void*)0);
 deviceName = ((void*)0);

 parser = ucl_parser_new(0);
 if (parser == ((void*)0))
  err(1, "Could not allocate parser");

 if (!ucl_parser_add_file(parser, filename))
  err(1, "Could not open '%s' for reading", filename);

 errmsg = ucl_parser_get_error(parser);
 if (errmsg != ((void*)0))
  errx(1, "Could not parse '%s': %s", filename, errmsg);

 top = ucl_parser_get_object (parser);
 it = ((void*)0);
 while ((obj = ucl_iterate_object(top, &it, 1)) != ((void*)0)) {
  key = ucl_object_key(obj);

  if (strcasecmp(key, PF_CONFIG_NAME) == 0) {
   deviceName = find_pf_device(obj);
   break;
  }
 }

 if (deviceName == ((void*)0))
  errx(1, "Config file does not specify device");

 error = asprintf(&device, "/dev/iov/%s", deviceName);
 if (error < 0)
  err(1, "Could not allocate memory for device");

 ucl_object_unref(top);
 ucl_parser_free(parser);

 return (device);
}
