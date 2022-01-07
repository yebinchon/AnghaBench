
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 int ip6_nexthdr (struct mbuf const*,int,int,int*) ;

int
ip6_lasthdr(const struct mbuf *m, int off, int proto, int *nxtp)
{
 int newoff;
 int nxt;

 if (!nxtp) {
  nxt = -1;
  nxtp = &nxt;
 }
 while (1) {
  newoff = ip6_nexthdr(m, off, proto, nxtp);
  if (newoff < 0)
   return off;
  else if (newoff < off)
   return -1;
  else if (newoff == off)
   return newoff;

  off = newoff;
  proto = *nxtp;
 }
}
