
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int defined_add (char*,char*) ;
 int log_errx (int,char*) ;
 char* strsep (char**,char*) ;

void
defined_parse_and_add(char *def)
{
 char *name, *value;

 value = def;
 name = strsep(&value, "=");

 if (value == ((void*)0) || value[0] == '\0')
  log_errx(1, "missing variable value");
 if (name == ((void*)0) || name[0] == '\0')
  log_errx(1, "missing variable name");

 defined_add(name, value);
}
