
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sc_info {int dummy; } ;


 int CMPCI_REG_SBADDR ;
 int CMPCI_REG_SBDATA ;
 int cmi_wr (struct sc_info*,int ,int ,int) ;

__attribute__((used)) static void
cmimix_wr(struct sc_info *sc, u_int8_t port, u_int8_t val)
{
 cmi_wr(sc, CMPCI_REG_SBADDR, port, 1);
 cmi_wr(sc, CMPCI_REG_SBDATA, val, 1);
}
