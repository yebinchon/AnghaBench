
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_ib_demux_pv_ctx {int port; } ;
struct ib_event {int event; } ;


 int pr_err (char*,int ,int ) ;

__attribute__((used)) static void pv_qp_event_handler(struct ib_event *event, void *qp_context)
{
 struct mlx4_ib_demux_pv_ctx *sqp = qp_context;


 pr_err("Fatal error (%d) on a MAD QP on port %d\n",
        event->event, sqp->port);
}
