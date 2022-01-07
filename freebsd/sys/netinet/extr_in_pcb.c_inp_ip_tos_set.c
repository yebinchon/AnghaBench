
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int inp_ip_tos; } ;



void
inp_ip_tos_set(struct inpcb *inp, int val)
{

 inp->inp_ip_tos = val;
}
