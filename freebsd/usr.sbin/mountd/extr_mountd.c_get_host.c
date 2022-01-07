
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct addrinfo* gt_addrinfo; } ;
struct grouplist {scalar_t__ gr_type; TYPE_1__ gr_ptr; struct grouplist* gr_next; } ;
struct addrinfo {char* ai_canonname; struct addrinfo* ai_next; int ai_addr; int ai_flags; int ai_addrlen; int ai_protocol; } ;
typedef int host ;


 int AI_CANONNAME ;
 scalar_t__ GT_HOST ;
 scalar_t__ GT_IGNORE ;
 scalar_t__ GT_NULL ;
 int IPPROTO_UDP ;
 int LOG_ERR ;
 int NI_MAXHOST ;
 int NI_NUMERICHOST ;
 scalar_t__ debug ;
 int fprintf (int ,char*,char*) ;
 int getaddrinfo (char*,int *,struct addrinfo*,struct addrinfo**) ;
 scalar_t__ getnameinfo (int ,int ,char*,int,int *,int ,int ) ;
 int memset (struct addrinfo*,int ,int) ;
 scalar_t__ sacmp (int ,int ,int *) ;
 int stderr ;
 char* strdup (char*) ;
 int strlcpy (char*,char*,int) ;
 int syslog (int ,char*,char*) ;

__attribute__((used)) static int
get_host(char *cp, struct grouplist *grp, struct grouplist *tgrp)
{
 struct grouplist *checkgrp;
 struct addrinfo *ai, *tai, hints;
 int ecode;
 char host[NI_MAXHOST];

 if (grp->gr_type != GT_NULL) {
  syslog(LOG_ERR, "Bad netgroup type for ip host %s", cp);
  return (1);
 }
 memset(&hints, 0, sizeof hints);
 hints.ai_flags = AI_CANONNAME;
 hints.ai_protocol = IPPROTO_UDP;
 ecode = getaddrinfo(cp, ((void*)0), &hints, &ai);
 if (ecode != 0) {
  syslog(LOG_ERR,"can't get address info for host %s", cp);
  return 1;
 }
 grp->gr_ptr.gt_addrinfo = ai;
 while (ai != ((void*)0)) {
  if (ai->ai_canonname == ((void*)0)) {
   if (getnameinfo(ai->ai_addr, ai->ai_addrlen, host,
       sizeof host, ((void*)0), 0, NI_NUMERICHOST) != 0)
    strlcpy(host, "?", sizeof(host));
   ai->ai_canonname = strdup(host);
   ai->ai_flags |= AI_CANONNAME;
  }
  if (debug)
   fprintf(stderr, "got host %s\n", ai->ai_canonname);




  for (checkgrp = tgrp; checkgrp != ((void*)0);
      checkgrp = checkgrp->gr_next) {
   if (checkgrp->gr_type != GT_HOST)
    continue;
   for (tai = checkgrp->gr_ptr.gt_addrinfo; tai != ((void*)0);
       tai = tai->ai_next) {
    if (sacmp(tai->ai_addr, ai->ai_addr, ((void*)0)) != 0)
     continue;
    if (debug)
     fprintf(stderr,
         "ignoring duplicate host %s\n",
         ai->ai_canonname);
    grp->gr_type = GT_IGNORE;
    return (0);
   }
  }
  ai = ai->ai_next;
 }
 grp->gr_type = GT_HOST;
 return (0);
}
