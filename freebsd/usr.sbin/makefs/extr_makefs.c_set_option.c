
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int option_t ;


 int assert (int ) ;
 char* estrdup (char const*) ;
 int free (char*) ;
 int set_option_var (int const*,char*,char*,char*,size_t) ;

int
set_option(const option_t *options, const char *option, char *buf, size_t len)
{
 char *var, *val;
 int retval;

 assert(option != ((void*)0));

 var = estrdup(option);
 for (val = var; *val; val++)
  if (*val == '=') {
   *val++ = '\0';
   break;
  }
 retval = set_option_var(options, var, val, buf, len);
 free(var);
 return retval;
}
