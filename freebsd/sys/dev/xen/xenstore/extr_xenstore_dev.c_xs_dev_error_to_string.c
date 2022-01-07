
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int errnum; char const* errstring; } ;


 unsigned int nitems (TYPE_1__*) ;
 TYPE_1__* xsd_errors ;

__attribute__((used)) static const char *
xs_dev_error_to_string(int error)
{
 unsigned int i;

 for (i = 0; i < nitems(xsd_errors); i++)
  if (xsd_errors[i].errnum == error)
   return (xsd_errors[i].errstring);

 return (((void*)0));
}
