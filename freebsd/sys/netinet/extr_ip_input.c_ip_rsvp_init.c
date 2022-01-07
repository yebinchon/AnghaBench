
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {scalar_t__ so_type; TYPE_1__* so_proto; } ;
struct TYPE_2__ {scalar_t__ pr_protocol; } ;


 int EADDRINUSE ;
 int EOPNOTSUPP ;
 scalar_t__ IPPROTO_RSVP ;
 scalar_t__ SOCK_RAW ;
 int V_ip_rsvp_on ;
 struct socket* V_ip_rsvpd ;
 int V_rsvp_on ;

int
ip_rsvp_init(struct socket *so)
{

 if (so->so_type != SOCK_RAW ||
     so->so_proto->pr_protocol != IPPROTO_RSVP)
  return EOPNOTSUPP;

 if (V_ip_rsvpd != ((void*)0))
  return EADDRINUSE;

 V_ip_rsvpd = so;




 if (!V_ip_rsvp_on) {
  V_ip_rsvp_on = 1;
  V_rsvp_on++;
 }

 return 0;
}
