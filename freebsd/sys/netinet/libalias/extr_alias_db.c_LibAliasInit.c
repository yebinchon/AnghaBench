
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {void* tv_sec; } ;
struct TYPE_4__ {void* s_addr; } ;
struct TYPE_3__ {void* s_addr; } ;
struct libalias {int deleteAllLinks; int packetAliasMode; int fireWallFD; scalar_t__ cleanupIndex; scalar_t__ sockCount; scalar_t__ fragmentPtrLinkCount; scalar_t__ fragmentIdLinkCount; scalar_t__ protoLinkCount; scalar_t__ pptpLinkCount; scalar_t__ sctpLinkCount; scalar_t__ tcpLinkCount; scalar_t__ udpLinkCount; scalar_t__ icmpLinkCount; TYPE_2__ targetAddress; TYPE_1__ aliasAddress; int * linkTableIn; int * linkTableOut; void* lastCleanupTime; void* timeStamp; } ;


 int AliasSctpInit (struct libalias*) ;
 int AliasSctpTerm (struct libalias*) ;
 int CleanupAliasData (struct libalias*) ;
 void* INADDR_ANY ;
 int LIBALIAS_LOCK (struct libalias*) ;
 int LIBALIAS_LOCK_INIT (struct libalias*) ;
 int LIBALIAS_UNLOCK (struct libalias*) ;
 int LINK_TABLE_IN_SIZE ;
 int LINK_TABLE_OUT_SIZE ;
 scalar_t__ LIST_EMPTY (int *) ;
 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,struct libalias*,int ) ;
 int LibAliasRefreshModules () ;
 int M_ALIAS ;
 int M_WAITOK ;
 int M_ZERO ;
 int PKT_ALIAS_RESET_ON_ADDR_CHANGE ;
 int PKT_ALIAS_SAME_PORTS ;
 int PKT_ALIAS_USE_SOCKETS ;
 int atexit (int ) ;
 struct libalias* calloc (int,int) ;
 int finishoff ;
 int gettimeofday (struct timeval*,int *) ;
 int instancehead ;
 int instancelist ;
 struct libalias* malloc (int,int ,int) ;
 void* time_uptime ;

struct libalias *
LibAliasInit(struct libalias *la)
{
 int i;

 struct timeval tv;


 if (la == ((void*)0)) {




  la = calloc(sizeof *la, 1);
  if (la == ((void*)0))
   return (la);



  if (LIST_EMPTY(&instancehead))
   atexit(finishoff);

  LIST_INSERT_HEAD(&instancehead, la, instancelist);





  gettimeofday(&tv, ((void*)0));
  la->timeStamp = tv.tv_sec;
  la->lastCleanupTime = tv.tv_sec;


  for (i = 0; i < LINK_TABLE_OUT_SIZE; i++)
   LIST_INIT(&la->linkTableOut[i]);
  for (i = 0; i < LINK_TABLE_IN_SIZE; i++)
   LIST_INIT(&la->linkTableIn[i]);



  LIBALIAS_LOCK_INIT(la);
  LIBALIAS_LOCK(la);
 } else {
  LIBALIAS_LOCK(la);
  la->deleteAllLinks = 1;
  CleanupAliasData(la);
  la->deleteAllLinks = 0;




 }

 la->aliasAddress.s_addr = INADDR_ANY;
 la->targetAddress.s_addr = INADDR_ANY;

 la->icmpLinkCount = 0;
 la->udpLinkCount = 0;
 la->tcpLinkCount = 0;
 la->sctpLinkCount = 0;
 la->pptpLinkCount = 0;
 la->protoLinkCount = 0;
 la->fragmentIdLinkCount = 0;
 la->fragmentPtrLinkCount = 0;
 la->sockCount = 0;

 la->cleanupIndex = 0;

 la->packetAliasMode = PKT_ALIAS_SAME_PORTS

     | PKT_ALIAS_USE_SOCKETS

     | PKT_ALIAS_RESET_ON_ADDR_CHANGE;

 la->fireWallFD = -1;


 LibAliasRefreshModules();

 LIBALIAS_UNLOCK(la);
 return (la);
}
