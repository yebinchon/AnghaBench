
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZE (char const* const*) ;

char const *
hci_coding2str(int coding)
{
 static char const * const t[] = {
             "Linear",
             "u-law",
             "A-law",
             "Reserved"
 };

 return (coding >= SIZE(t)? "?" : t[coding]);
}
