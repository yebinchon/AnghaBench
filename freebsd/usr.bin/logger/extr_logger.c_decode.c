
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int c_val; scalar_t__ c_name; } ;
typedef TYPE_1__ CODE ;


 int atoi (char*) ;
 scalar_t__ isdigit (char) ;
 int strcasecmp (char*,scalar_t__) ;

__attribute__((used)) static int
decode(char *name, const CODE *codetab)
{
 const CODE *c;

 if (isdigit(*name))
  return (atoi(name));

 for (c = codetab; c->c_name; c++)
  if (!strcasecmp(name, c->c_name))
   return (c->c_val);

 return (-1);
}
