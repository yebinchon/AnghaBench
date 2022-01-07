
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip17x_softc {int vlan_mode; } ;



__attribute__((used)) static int
ip175c_get_vlan_mode(struct ip17x_softc *sc)
{

 return (sc->vlan_mode);
}
