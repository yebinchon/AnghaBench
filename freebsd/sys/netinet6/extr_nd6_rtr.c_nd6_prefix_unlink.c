
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_prhead {int dummy; } ;
struct nd_prefix {int dummy; } ;


 int LIST_INSERT_HEAD (struct nd_prhead*,struct nd_prefix*,int ) ;
 int LIST_REMOVE (struct nd_prefix*,int ) ;
 int ND6_WLOCK_ASSERT () ;
 int V_nd6_list_genid ;
 int ndpr_entry ;

void
nd6_prefix_unlink(struct nd_prefix *pr, struct nd_prhead *list)
{

 ND6_WLOCK_ASSERT();

 LIST_REMOVE(pr, ndpr_entry);
 V_nd6_list_genid++;
 if (list != ((void*)0))
  LIST_INSERT_HEAD(list, pr, ndpr_entry);
}
