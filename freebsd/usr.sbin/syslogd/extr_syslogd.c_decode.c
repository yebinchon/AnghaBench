
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buf ;
struct TYPE_3__ {int c_val; scalar_t__ c_name; } ;
typedef TYPE_1__ CODE ;


 int atoi (char const*) ;
 scalar_t__ isdigit (char const) ;
 scalar_t__ isupper (char const) ;
 int strcmp (char*,scalar_t__) ;
 char tolower (char const) ;

__attribute__((used)) static int
decode(const char *name, const CODE *codetab)
{
 const CODE *c;
 char *p, buf[40];

 if (isdigit(*name))
  return (atoi(name));

 for (p = buf; *name && p < &buf[sizeof(buf) - 1]; p++, name++) {
  if (isupper(*name))
   *p = tolower(*name);
  else
   *p = *name;
 }
 *p = '\0';
 for (c = codetab; c->c_name; c++)
  if (!strcmp(buf, c->c_name))
   return (c->c_val);

 return (-1);
}
