
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_mad_send_wc {TYPE_1__* send_buf; } ;
struct TYPE_2__ {scalar_t__* context; scalar_t__ ah; } ;


 int ib_destroy_ah (scalar_t__) ;
 int ib_free_send_mad (TYPE_1__*) ;

void ib_rmpp_send_handler(struct ib_mad_send_wc *mad_send_wc)
{
 if (mad_send_wc->send_buf->context[0] == mad_send_wc->send_buf->ah)
  ib_destroy_ah(mad_send_wc->send_buf->ah);
 ib_free_send_mad(mad_send_wc->send_buf);
}
