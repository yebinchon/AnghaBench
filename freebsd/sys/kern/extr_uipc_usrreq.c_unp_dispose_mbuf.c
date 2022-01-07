
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 int unp_freerights ;
 int unp_scan (struct mbuf*,int ) ;

__attribute__((used)) static void
unp_dispose_mbuf(struct mbuf *m)
{

 if (m)
  unp_scan(m, unp_freerights);
}
