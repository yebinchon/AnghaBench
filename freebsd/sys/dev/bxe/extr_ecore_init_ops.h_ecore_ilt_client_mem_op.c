
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ilt_client_info {int flags; int start; int end; int page_size; } ;
struct ecore_ilt {int * lines; struct ilt_client_info* clients; } ;
struct bxe_softc {int dummy; } ;


 int ILT_CLIENT_SKIP_INIT ;
 int ILT_CLIENT_SKIP_MEM ;
 struct ecore_ilt* SC_ILT (struct bxe_softc*) ;
 int ecore_ilt_line_mem_op (struct bxe_softc*,int *,int ,int ) ;

__attribute__((used)) static int ecore_ilt_client_mem_op(struct bxe_softc *sc, int cli_num,
       uint8_t memop)
{
 int i, rc;
 struct ecore_ilt *ilt = SC_ILT(sc);
 struct ilt_client_info *ilt_cli = &ilt->clients[cli_num];

 if (!ilt || !ilt->lines)
  return -1;

 if (ilt_cli->flags & (ILT_CLIENT_SKIP_INIT | ILT_CLIENT_SKIP_MEM))
  return 0;

 for (rc = 0, i = ilt_cli->start; i <= ilt_cli->end && !rc; i++) {
  rc = ecore_ilt_line_mem_op(sc, &ilt->lines[i],
        ilt_cli->page_size, memop);
 }
 return rc;
}
