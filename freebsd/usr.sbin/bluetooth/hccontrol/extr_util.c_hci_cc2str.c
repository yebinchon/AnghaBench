
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZE (char const* const*) ;

char const *
hci_cc2str(int cc)
{
 static char const * const t[] = {
             "North America, Europe, Japan",
             "France"
 };

 return (cc >= SIZE(t)? "?" : t[cc]);
}
