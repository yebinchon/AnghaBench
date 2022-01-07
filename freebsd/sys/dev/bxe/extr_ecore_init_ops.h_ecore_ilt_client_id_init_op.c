
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ilt_client_info {int dummy; } ;
struct ecore_ilt {struct ilt_client_info* clients; } ;
struct bxe_softc {int dummy; } ;


 struct ecore_ilt* SC_ILT (struct bxe_softc*) ;
 int ecore_ilt_client_init_op (struct bxe_softc*,struct ilt_client_info*,int ) ;

__attribute__((used)) static void ecore_ilt_client_id_init_op(struct bxe_softc *sc,
     int cli_num, uint8_t initop)
{
 struct ecore_ilt *ilt = SC_ILT(sc);
 struct ilt_client_info *ilt_cli = &ilt->clients[cli_num];

 ecore_ilt_client_init_op(sc, ilt_cli, initop);
}
