
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcbdump_short {struct netidlist* nlist; } ;
struct netidlist {char* netid; struct netidlist* next; } ;
typedef int bool_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ malloc (int) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static bool_t
add_netid(struct rpcbdump_short *rs, char *netid)
{
 struct netidlist *nl;

 for (nl = rs->nlist; nl; nl = nl->next)
  if (strcmp(nl->netid, netid) == 0)
   break;
 if (nl)
  return (TRUE);
 nl = (struct netidlist *)malloc(sizeof (struct netidlist));
 if (nl == ((void*)0))
  return (FALSE);
 nl->netid = netid;
 nl->next = rs->nlist;
 rs->nlist = nl;
 return (TRUE);
}
