
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_multi_head {int dummy; } ;
struct ifnet {int dummy; } ;


 int IN6_MULTI_LIST_LOCK () ;
 int IN6_MULTI_LIST_UNLOCK () ;
 int IN6_MULTI_LOCK () ;
 int IN6_MULTI_UNLOCK () ;
 int SLIST_INIT (struct in6_multi_head*) ;
 int in6m_release_list_deferred (struct in6_multi_head*) ;
 int in6m_release_wait () ;
 int mld_ifdetach (struct ifnet*,struct in6_multi_head*) ;

__attribute__((used)) static void
in6_purgemaddrs(struct ifnet *ifp)
{
 struct in6_multi_head inmh;

 SLIST_INIT(&inmh);
 IN6_MULTI_LOCK();
 IN6_MULTI_LIST_LOCK();
 mld_ifdetach(ifp, &inmh);
 IN6_MULTI_LIST_UNLOCK();
 IN6_MULTI_UNLOCK();
 in6m_release_list_deferred(&inmh);






 in6m_release_wait();
}
