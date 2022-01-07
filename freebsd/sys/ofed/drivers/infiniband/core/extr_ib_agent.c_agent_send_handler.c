
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_mad_send_wc {TYPE_1__* send_buf; } ;
struct ib_mad_agent {int dummy; } ;
struct TYPE_2__ {int ah; } ;


 int ib_destroy_ah (int ) ;
 int ib_free_send_mad (TYPE_1__*) ;

__attribute__((used)) static void agent_send_handler(struct ib_mad_agent *mad_agent,
          struct ib_mad_send_wc *mad_send_wc)
{
 ib_destroy_ah(mad_send_wc->send_buf->ah);
 ib_free_send_mad(mad_send_wc->send_buf);
}
