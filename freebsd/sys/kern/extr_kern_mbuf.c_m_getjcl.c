
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uma_zone_t ;
struct mbuf {int flags; short type; } ;
struct mb_args {int flags; short type; } ;


 int MCLBYTES ;
 struct mbuf* m_getcl (int,short,int) ;
 int m_getzone (int) ;
 struct mbuf* uma_zalloc_arg (int ,struct mbuf*,int) ;
 int uma_zfree (int ,struct mbuf*) ;
 int zone_mbuf ;

struct mbuf *
m_getjcl(int how, short type, int flags, int size)
{
 struct mb_args args;
 struct mbuf *m, *n;
 uma_zone_t zone;

 if (size == MCLBYTES)
  return m_getcl(how, type, flags);

 args.flags = flags;
 args.type = type;

 m = uma_zalloc_arg(zone_mbuf, &args, how);
 if (m == ((void*)0))
  return (((void*)0));

 zone = m_getzone(size);
 n = uma_zalloc_arg(zone, m, how);
 if (n == ((void*)0)) {
  uma_zfree(zone_mbuf, m);
  return (((void*)0));
 }
 return (m);
}
