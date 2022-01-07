
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_ath_alq_init_state {int sc_hal_magic; int sc_phy_rev; int sc_mac_revision; int sc_mac_version; } ;


 int be32toh (int ) ;
 int printf (char*,int,int,int,int) ;

__attribute__((used)) static void
ath_alq_print_hdr(struct if_ath_alq_init_state *hdr)
{
 printf("macVersion=%d.%d, PHY=%d, Magic=%08x\n",
     be32toh(hdr->sc_mac_version),
     be32toh(hdr->sc_mac_revision),
     be32toh(hdr->sc_phy_rev),
     be32toh(hdr->sc_hal_magic));
}
