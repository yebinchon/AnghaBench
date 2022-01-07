
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int inp_ip_tos; } ;



int
inp_ip_tos_get(const struct inpcb *inp)
{

 return (inp->inp_ip_tos);
}
