
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
typedef int pfil_return_t ;


 int PFIL_CONSUMED ;
 int PFIL_DROPPED ;
 int PFIL_PASS ;

 int m_freem (struct mbuf*) ;

__attribute__((used)) static pfil_return_t
pf_check_return(int chk, struct mbuf **m)
{

 switch (chk) {
 case 128:
  if (*m == ((void*)0))
   return (PFIL_CONSUMED);
  else
   return (PFIL_PASS);
  break;
 default:
  if (*m != ((void*)0)) {
   m_freem(*m);
   *m = ((void*)0);
  }
  return (PFIL_DROPPED);
 }
}
