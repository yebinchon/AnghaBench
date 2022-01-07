
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int packet_try; int plast; int packet_len; int packet; } ;


 int err (int,char*) ;
 int gettimeofday (int *,int *) ;
 int printf (char*,int) ;
 int send_frame (struct params*,int ,int ) ;

int retransmit(struct params *p)
{




 send_frame(p, p->packet, p->packet_len);
 p->packet_try++;

 if (p->packet_try > 3)
  p->packet_try = 0;
 else {
  if (gettimeofday(&p->plast, ((void*)0)) == -1)
   err(1, "gettimeofday()");
 }

 return p->packet_try;
}
