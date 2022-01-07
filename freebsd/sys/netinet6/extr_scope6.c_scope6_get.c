
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scope6_id {int dummy; } ;
struct ifnet {int dummy; } ;
struct epoch_tracker {int dummy; } ;


 int EINVAL ;
 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 struct scope6_id* SID (struct ifnet*) ;

__attribute__((used)) static int
scope6_get(struct ifnet *ifp, struct scope6_id *idlist)
{
 struct epoch_tracker et;
 struct scope6_id *sid;


 NET_EPOCH_ENTER(et);
 sid = SID(ifp);
 if (sid == ((void*)0)) {
  NET_EPOCH_EXIT(et);
  return (EINVAL);
 }

 *idlist = *sid;

 NET_EPOCH_EXIT(et);
 return (0);
}
