
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {int errnum; int errstring; } ;


 int EINVAL ;
 int LOG_WARNING ;
 int log (int ,char*,char const*) ;
 int strcmp (char const*,int ) ;
 size_t xsd_error_count ;
 TYPE_1__* xsd_errors ;

__attribute__((used)) static int
xs_get_error(const char *errorstring)
{
 u_int i;

 for (i = 0; i < xsd_error_count; i++) {
  if (!strcmp(errorstring, xsd_errors[i].errstring))
   return (xsd_errors[i].errnum);
 }
 log(LOG_WARNING, "XENSTORE xen store gave: unknown error %s",
     errorstring);
 return (EINVAL);
}
