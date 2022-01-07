
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int flags; short type; } ;
struct mb_args {int flags; short type; } ;


 int MCLBYTES ;
 int MHLEN ;
 int MJUMPAGESIZE ;
 int MLEN ;
 int M_PKTHDR ;
 struct mbuf* uma_zalloc_arg (int ,struct mbuf*,int) ;
 int uma_zfree (int ,struct mbuf*) ;
 int zone_jumbop ;
 int zone_mbuf ;
 int zone_pack ;

struct mbuf *
m_get2(int size, int how, short type, int flags)
{
 struct mb_args args;
 struct mbuf *m, *n;

 args.flags = flags;
 args.type = type;

 if (size <= MHLEN || (size <= MLEN && (flags & M_PKTHDR) == 0))
  return (uma_zalloc_arg(zone_mbuf, &args, how));
 if (size <= MCLBYTES)
  return (uma_zalloc_arg(zone_pack, &args, how));

 if (size > MJUMPAGESIZE)
  return (((void*)0));

 m = uma_zalloc_arg(zone_mbuf, &args, how);
 if (m == ((void*)0))
  return (((void*)0));

 n = uma_zalloc_arg(zone_jumbop, m, how);
 if (n == ((void*)0)) {
  uma_zfree(zone_mbuf, m);
  return (((void*)0));
 }

 return (m);
}
