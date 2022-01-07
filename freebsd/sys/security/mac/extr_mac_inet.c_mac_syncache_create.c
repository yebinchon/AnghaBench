
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;
struct inpcb {int dummy; } ;


 int INP_WLOCK_ASSERT (struct inpcb*) ;
 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct label*,struct inpcb*) ;
 int syncache_create ;

void
mac_syncache_create(struct label *label, struct inpcb *inp)
{

 INP_WLOCK_ASSERT(inp);

 MAC_POLICY_PERFORM_NOSLEEP(syncache_create, label, inp);
}
