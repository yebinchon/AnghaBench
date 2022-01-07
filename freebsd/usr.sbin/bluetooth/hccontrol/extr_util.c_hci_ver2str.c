
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZE (char const* const*) ;

char const *
hci_ver2str(int ver)
{
 static char const * const t[] = {
             "Bluetooth HCI Specification 1.0B",
             "Bluetooth HCI Specification 1.1",
             "Bluetooth HCI Specification 1.2",
             "Bluetooth HCI Specification 2.0",
             "Bluetooth HCI Specification 2.1",
             "Bluetooth HCI Specification 3.0",
             "Bluetooth HCI Specification 4.0",
             "Bluetooth HCI Specification 4.1",
             "Bluetooth HCI Specification 4.2"
 };

 return (ver >= SIZE(t)? "?" : t[ver]);
}
