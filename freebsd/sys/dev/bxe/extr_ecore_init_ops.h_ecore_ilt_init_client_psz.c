
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ilt_client_info {int flags; int page_size; } ;
struct ecore_ilt {struct ilt_client_info* clients; } ;
struct bxe_softc {int dummy; } ;


 int ILOG2 (int) ;
 int ILT_CLIENT_SKIP_INIT ;



 int REG_WR (struct bxe_softc*,int ,int ) ;
 struct ecore_ilt* SC_ILT (struct bxe_softc*) ;

__attribute__((used)) static void ecore_ilt_init_client_psz(struct bxe_softc *sc, int cli_num,
          uint32_t psz_reg, uint8_t initop)
{
 struct ecore_ilt *ilt = SC_ILT(sc);
 struct ilt_client_info *ilt_cli = &ilt->clients[cli_num];

 if (ilt_cli->flags & ILT_CLIENT_SKIP_INIT)
  return;

 switch (initop) {
 case 129:

 case 128:
  REG_WR(sc, psz_reg, ILOG2(ilt_cli->page_size >> 12));
  break;
 case 130:
  break;
 }
}
