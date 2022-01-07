
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sc_info {int dummy; } ;


 int CMPCI_REG_SBADDR ;
 int CMPCI_REG_SBDATA ;
 int cmi_rd (struct sc_info*,int ,int) ;
 int cmi_wr (struct sc_info*,int ,int ,int) ;

__attribute__((used)) static u_int8_t
cmimix_rd(struct sc_info *sc, u_int8_t port)
{
 cmi_wr(sc, CMPCI_REG_SBADDR, port, 1);
 return (u_int8_t)cmi_rd(sc, CMPCI_REG_SBDATA, 1);
}
