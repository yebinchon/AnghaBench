
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_send_buf {int dummy; } ;
struct ib_mad_agent {int dummy; } ;


 int ib_modify_mad (struct ib_mad_agent*,struct ib_mad_send_buf*,int ) ;

void ib_cancel_mad(struct ib_mad_agent *mad_agent,
     struct ib_mad_send_buf *send_buf)
{
 ib_modify_mad(mad_agent, send_buf, 0);
}
