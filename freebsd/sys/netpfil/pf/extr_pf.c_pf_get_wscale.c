
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int16_t ;
struct tcphdr {int dummy; } ;
struct mbuf {int dummy; } ;
typedef int sa_family_t ;


 int PF_WSCALE_FLAG ;



 int TCP_MAX_WINSHIFT ;
 int pf_pull_hdr (struct mbuf*,int,int*,int,int *,int *,int ) ;

__attribute__((used)) static u_int8_t
pf_get_wscale(struct mbuf *m, int off, u_int16_t th_off, sa_family_t af)
{
 int hlen;
 u_int8_t hdr[60];
 u_int8_t *opt, optlen;
 u_int8_t wscale = 0;

 hlen = th_off << 2;
 if (hlen <= sizeof(struct tcphdr))
  return (0);
 if (!pf_pull_hdr(m, off, hdr, hlen, ((void*)0), ((void*)0), af))
  return (0);
 opt = hdr + sizeof(struct tcphdr);
 hlen -= sizeof(struct tcphdr);
 while (hlen >= 3) {
  switch (*opt) {
  case 130:
  case 129:
   ++opt;
   --hlen;
   break;
  case 128:
   wscale = opt[2];
   if (wscale > TCP_MAX_WINSHIFT)
    wscale = TCP_MAX_WINSHIFT;
   wscale |= PF_WSCALE_FLAG;

  default:
   optlen = opt[1];
   if (optlen < 2)
    optlen = 2;
   hlen -= optlen;
   opt += optlen;
   break;
  }
 }
 return (wscale);
}
