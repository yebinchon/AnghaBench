
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ntb_transport_qp {unsigned long long qp_num; int link_is_up; int link_work; int cb_data; int (* event_handler ) (int ,int ) ;struct ntb_transport_ctx* transport; int dev; } ;
struct ntb_transport_ctx {int qp_count; scalar_t__ link_is_up; TYPE_1__* qp_vec; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ client_ready; } ;


 int NTBT_QP_LINKS ;
 int NTB_LINK_DOWN_TIMEOUT ;
 int NTB_LINK_UP ;
 int callout_reset (int *,int,void (*) (void*),struct ntb_transport_qp*) ;
 int hz ;
 int ntb_db_clear_mask (int ,unsigned long long) ;
 int ntb_peer_spad_write (int ,int ,int) ;
 int ntb_printf (int,char*,unsigned long long) ;
 int ntb_spad_read (int ,int ,int*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
ntb_qp_link_work(void *arg)
{
 struct ntb_transport_qp *qp = arg;
 device_t dev = qp->dev;
 struct ntb_transport_ctx *nt = qp->transport;
 int i;
 uint32_t val;


 for (i = 0, val = 0; i < nt->qp_count; i++) {
  if (nt->qp_vec[i].client_ready)
   val |= (1 << i);
 }
 ntb_peer_spad_write(dev, NTBT_QP_LINKS, val);


 ntb_spad_read(dev, NTBT_QP_LINKS, &val);
 if ((val & (1ull << qp->qp_num)) != 0) {
  ntb_printf(2, "qp %d link up\n", qp->qp_num);
  qp->link_is_up = 1;

  if (qp->event_handler != ((void*)0))
   qp->event_handler(qp->cb_data, NTB_LINK_UP);

  ntb_db_clear_mask(dev, 1ull << qp->qp_num);
 } else if (nt->link_is_up)
  callout_reset(&qp->link_work,
      NTB_LINK_DOWN_TIMEOUT * hz / 1000, ntb_qp_link_work, qp);
}
