
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;
struct ifnet {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 int LOG_NOTICE ;
 int M_NOWAIT ;
 int if_name (struct ifnet*) ;
 int log (int ,char*,int ,...) ;
 struct m_tag* m_tag_alloc (int ,int ,int,int ) ;
 struct m_tag* m_tag_locate (struct mbuf*,int ,int ,struct m_tag*) ;
 int m_tag_prepend (struct mbuf*,struct m_tag*) ;

int
if_tunnel_check_nesting(struct ifnet *ifp, struct mbuf *m, uint32_t cookie,
    int limit)
{
 struct m_tag *mtag;
 int count;

 count = 1;
 mtag = ((void*)0);
 while ((mtag = m_tag_locate(m, cookie, 0, mtag)) != ((void*)0)) {
  if (*(struct ifnet **)(mtag + 1) == ifp) {
   log(LOG_NOTICE, "%s: loop detected\n", if_name(ifp));
   return (EIO);
  }
  count++;
 }
 if (count > limit) {
  log(LOG_NOTICE,
      "%s: if_output recursively called too many times(%d)\n",
      if_name(ifp), count);
  return (EIO);
 }
 mtag = m_tag_alloc(cookie, 0, sizeof(struct ifnet *), M_NOWAIT);
 if (mtag == ((void*)0))
  return (ENOMEM);
 *(struct ifnet **)(mtag + 1) = ifp;
 m_tag_prepend(m, mtag);
 return (0);
}
