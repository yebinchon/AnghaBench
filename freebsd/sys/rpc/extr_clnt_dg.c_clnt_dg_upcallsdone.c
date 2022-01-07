
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_rcv; } ;
struct cu_socket {scalar_t__ cs_upcallrefs; } ;


 int SOCKBUF_LOCK_ASSERT (int *) ;
 int SOCKBUF_MTX (int *) ;
 int msleep (scalar_t__*,int ,int ,char*,int ) ;

__attribute__((used)) static void
clnt_dg_upcallsdone(struct socket *so, struct cu_socket *cs)
{

 SOCKBUF_LOCK_ASSERT(&so->so_rcv);

 while (cs->cs_upcallrefs > 0)
  (void) msleep(&cs->cs_upcallrefs, SOCKBUF_MTX(&so->so_rcv), 0,
      "rpcdgup", 0);
}
