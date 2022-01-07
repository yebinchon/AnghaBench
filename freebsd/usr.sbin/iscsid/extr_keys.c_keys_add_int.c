
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keys {int dummy; } ;


 int asprintf (char**,char*,int) ;
 int free (char*) ;
 int keys_add (struct keys*,char const*,char*) ;
 int log_err (int,char*) ;

void
keys_add_int(struct keys *keys, const char *name, int value)
{
 char *str;
 int ret;

 ret = asprintf(&str, "%d", value);
 if (ret <= 0)
  log_err(1, "asprintf");

 keys_add(keys, name, str);
 free(str);
}
