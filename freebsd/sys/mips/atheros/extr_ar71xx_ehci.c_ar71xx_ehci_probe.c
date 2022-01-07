
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_NOWILDCARD ;
 int EHCI_HC_DEVSTR ;
 int device_set_desc (int ,int ) ;

__attribute__((used)) static int
ar71xx_ehci_probe(device_t self)
{

 device_set_desc(self, EHCI_HC_DEVSTR);

 return (BUS_PROBE_NOWILDCARD);
}
