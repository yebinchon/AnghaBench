
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ct_data {scalar_t__ ct_upcallrefs; TYPE_1__* ct_socket; } ;
struct TYPE_2__ {int so_rcv; } ;


 int SOCKBUF_LOCK_ASSERT (int *) ;
 int SOCKBUF_MTX (int *) ;
 int msleep (scalar_t__*,int ,int ,char*,int ) ;

__attribute__((used)) static void
clnt_vc_upcallsdone(struct ct_data *ct)
{

 SOCKBUF_LOCK_ASSERT(&ct->ct_socket->so_rcv);

 while (ct->ct_upcallrefs > 0)
  (void) msleep(&ct->ct_upcallrefs,
      SOCKBUF_MTX(&ct->ct_socket->so_rcv), 0, "rpcvcup", 0);
}
