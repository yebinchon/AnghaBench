
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZE (char const* const*) ;

char const *
hci_vdata2str(int data)
{
 static char const * const t[] = {
             "1's complement",
             "2's complement",
             "Sign-Magnitude",
             "Reserved"
 };

 return (data >= SIZE(t)? "?" : t[data]);
}
