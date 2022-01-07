
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int oid_kind; int oid_children; } ;


 int CTLTYPE ;
 int CTLTYPE_NODE ;
 int CTL_MAXNAME ;
 struct sysctl_oid* SLIST_FIRST (int *) ;
 struct sysctl_oid* SLIST_NEXT (struct sysctl_oid*,int ) ;
 int SYSCTL_ASSERT_LOCKED () ;
 int oid_link ;
 int sysctl__children ;

__attribute__((used)) static int
sysctl_search_oid(struct sysctl_oid **nodes, struct sysctl_oid *needle)
{
 int indx;

 SYSCTL_ASSERT_LOCKED();
 indx = 0;
 while (indx < CTL_MAXNAME && indx >= 0) {
  if (nodes[indx] == ((void*)0) && indx == 0)
   nodes[indx] = SLIST_FIRST(&sysctl__children);
  else if (nodes[indx] == ((void*)0))
   nodes[indx] = SLIST_FIRST(&nodes[indx - 1]->oid_children);
  else
   nodes[indx] = SLIST_NEXT(nodes[indx], oid_link);

  if (nodes[indx] == needle)
   return (indx + 1);

  if (nodes[indx] == ((void*)0)) {
   indx--;
   continue;
  }

  if ((nodes[indx]->oid_kind & CTLTYPE) == CTLTYPE_NODE) {
   indx++;
   continue;
  }
 }
 return (-1);
}
