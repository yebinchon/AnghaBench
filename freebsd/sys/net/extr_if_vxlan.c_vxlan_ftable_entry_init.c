
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct vxlan_softc {scalar_t__ vxl_ftable_timeout; } ;
struct vxlan_ftable_entry {int vxlfe_raddr; int vxlfe_mac; scalar_t__ vxlfe_expire; int vxlfe_flags; } ;
struct sockaddr {int dummy; } ;


 int ETHER_ADDR_LEN ;
 int memcpy (int ,int const*,int ) ;
 scalar_t__ time_uptime ;
 int vxlan_sockaddr_copy (int *,struct sockaddr const*) ;

__attribute__((used)) static void
vxlan_ftable_entry_init(struct vxlan_softc *sc, struct vxlan_ftable_entry *fe,
    const uint8_t *mac, const struct sockaddr *sa, uint32_t flags)
{

 fe->vxlfe_flags = flags;
 fe->vxlfe_expire = time_uptime + sc->vxl_ftable_timeout;
 memcpy(fe->vxlfe_mac, mac, ETHER_ADDR_LEN);
 vxlan_sockaddr_copy(&fe->vxlfe_raddr, sa);
}
