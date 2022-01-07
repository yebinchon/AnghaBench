
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ V_ip_rsvp_on ;
 int * V_ip_rsvpd ;
 int V_rsvp_on ;

int
ip_rsvp_done(void)
{

 V_ip_rsvpd = ((void*)0);




 if (V_ip_rsvp_on) {
  V_ip_rsvp_on = 0;
  V_rsvp_on--;
 }
 return 0;
}
