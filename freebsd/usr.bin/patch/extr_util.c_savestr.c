
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatal (char*) ;
 int out_of_mem ;
 char* strdup (char const*) ;
 scalar_t__ using_plan_a ;

char *
savestr(const char *s)
{
 char *rv;

 if (!s)
  s = "Oops";
 rv = strdup(s);
 if (rv == ((void*)0)) {
  if (using_plan_a)
   out_of_mem = 1;
  else
   fatal("out of memory\n");
 }
 return rv;
}
