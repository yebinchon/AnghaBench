
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZE (char const* const*) ;

char const *
hci_lmpver2str(int ver)
{
 static char const * const t[] = {
             "Bluetooth LMP 1.0",
             "Bluetooth LMP 1.1",
             "Bluetooth LMP 1.2",
             "Bluetooth LMP 2.0",
             "Bluetooth LMP 2.1",
             "Bluetooth LMP 3.0",
             "Bluetooth LMP 4.0",
             "Bluetooth LMP 4.1",
             "Bluetooth LMP 4.2"
 };

 return (ver >= SIZE(t)? "?" : t[ver]);
}
