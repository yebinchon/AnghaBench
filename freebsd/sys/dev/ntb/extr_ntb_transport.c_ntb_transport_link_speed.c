
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ntb_transport_qp {struct ntb_transport_ctx* transport; } ;
struct ntb_transport_ctx {int link_speed; int link_width; int link_is_up; } ;







uint64_t
ntb_transport_link_speed(struct ntb_transport_qp *qp)
{
 struct ntb_transport_ctx *nt = qp->transport;
 uint64_t rate;

 if (!nt->link_is_up)
  return (0);
 switch (nt->link_speed) {
 case 131:
  rate = 2500000000 * 8 / 10;
  break;
 case 130:
  rate = 5000000000 * 8 / 10;
  break;
 case 129:
  rate = 8000000000 * 128 / 130;
  break;
 case 128:
  rate = 16000000000 * 128 / 130;
  break;
 default:
  return (0);
 }
 if (nt->link_width <= 0)
  return (0);
 return (rate * nt->link_width);
}
