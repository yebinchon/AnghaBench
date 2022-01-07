
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct server* frag_ptr; struct server* tcp; } ;
struct server {int flags; int sockfd; int link_type; TYPE_1__ data; struct server* next; struct server* server; struct libalias* la; } ;
struct libalias {scalar_t__ deleteAllLinks; int packetAliasMode; int protoLinkCount; int fragmentPtrLinkCount; int fragmentIdLinkCount; int pptpLinkCount; int tcpLinkCount; int udpLinkCount; int icmpLinkCount; int sockCount; } ;
struct alias_link {int flags; int sockfd; int link_type; TYPE_1__ data; struct alias_link* next; struct alias_link* server; struct libalias* la; } ;


 int ClearFWHole (struct server*) ;
 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;




 int LINK_PERMANENT ;



 int LIST_REMOVE (struct server*,int ) ;
 int PKT_ALIAS_LOG ;
 int ShowAliasStats (struct libalias*) ;
 int close (int) ;
 int free (struct server*) ;
 int list_in ;
 int list_out ;

__attribute__((used)) static void
DeleteLink(struct alias_link *lnk)
{
 struct libalias *la = lnk->la;

 LIBALIAS_LOCK_ASSERT(la);

 if (la->deleteAllLinks == 0 && lnk->flags & LINK_PERMANENT)
  return;



 ClearFWHole(lnk);



 if (lnk->server != ((void*)0)) {
  struct server *head, *curr, *next;

  head = curr = lnk->server;
  do {
   next = curr->next;
   free(curr);
  } while ((curr = next) != head);
 }

 LIST_REMOVE(lnk, list_out);


 LIST_REMOVE(lnk, list_in);


 if (lnk->sockfd != -1) {
  la->sockCount--;
  close(lnk->sockfd);
 }


 switch (lnk->link_type) {
 case 131:
  la->icmpLinkCount--;
  break;
 case 128:
  la->udpLinkCount--;
  break;
 case 129:
  la->tcpLinkCount--;
  free(lnk->data.tcp);
  break;
 case 130:
  la->pptpLinkCount--;
  break;
 case 133:
  la->fragmentIdLinkCount--;
  break;
 case 132:
  la->fragmentPtrLinkCount--;
  if (lnk->data.frag_ptr != ((void*)0))
   free(lnk->data.frag_ptr);
  break;
 case 134:
  break;
 default:
  la->protoLinkCount--;
  break;
 }


 free(lnk);


 if (la->packetAliasMode & PKT_ALIAS_LOG) {
  ShowAliasStats(la);
 }
}
