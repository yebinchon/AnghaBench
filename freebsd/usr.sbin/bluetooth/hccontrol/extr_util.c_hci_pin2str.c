
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZE (char const* const*) ;

char const *
hci_pin2str(int type)
{
 static char const * const t[] = {
             "Variable PIN",
             "Fixed PIN"
 };

 return (type >= SIZE(t)? "?" : t[type]);
}
