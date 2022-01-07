
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned int time_t ;
struct sockaddr_storage {int ss_family; } ;
struct sockaddr_in6 {int sin6_family; int sin6_addr; } ;
struct TYPE_6__ {scalar_t__ s_addr; } ;
struct sockaddr_in {int sin_family; TYPE_1__ sin_addr; } ;
struct sockaddr {int sa_len; } ;
struct servtab {int se_maxcpm; int se_family; int se_service; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int socklen_t ;
typedef int rss ;
typedef int pname ;
struct TYPE_8__ {int ch_Family; scalar_t__ ch_LTime; TYPE_2__* ch_Times; int * ch_Service; int ch_Addr6; TYPE_1__ ch_Addr4; } ;
struct TYPE_7__ {unsigned int ct_Ticks; scalar_t__ ct_Count; } ;
typedef TYPE_2__ CTime ;
typedef TYPE_3__ CHash ;




 unsigned int CHTGRAN ;
 unsigned int CHTSIZE ;
 TYPE_3__* CHashAry ;
 int CPMHMASK ;
 scalar_t__ IN6_ARE_ADDR_EQUAL (int *,int *) ;
 int LOG_ERR ;
 int NI_MAXHOST ;
 int NI_NUMERICHOST ;
 int bzero (TYPE_2__*,int) ;
 int free (int *) ;
 int getnameinfo (struct sockaddr*,int ,char*,int,int *,int ,int ) ;
 scalar_t__ getpeername (int,struct sockaddr*,int*) ;
 scalar_t__ strcmp (int ,int *) ;
 void* strdup (int ) ;
 int syslog (int ,char*,int ,char*,int) ;
 unsigned int time (int *) ;

__attribute__((used)) static int
cpmip(const struct servtab *sep, int ctrl)
{
 struct sockaddr_storage rss;
 socklen_t rssLen = sizeof(rss);
 int r = 0;






 if (sep->se_maxcpm > 0 &&
    (sep->se_family == 129 || sep->se_family == 128) &&
     getpeername(ctrl, (struct sockaddr *)&rss, &rssLen) == 0 ) {
  time_t t = time(((void*)0));
  int hv = 0xABC3D20F;
  int i;
  int cnt = 0;
  CHash *chBest = ((void*)0);
  unsigned int ticks = t / CHTGRAN;
  struct sockaddr_in *sin4;




  sin4 = (struct sockaddr_in *)&rss;



  {
   char *p;
   int addrlen;

   switch (rss.ss_family) {
   case 129:
    p = (char *)&sin4->sin_addr;
    addrlen = sizeof(struct in_addr);
    break;






   default:

    return -1;
   }

   for (i = 0; i < addrlen; ++i, ++p) {
    hv = (hv << 5) ^ (hv >> 23) ^ *p;
   }
   hv = (hv ^ (hv >> 16));
  }
  for (i = 0; i < 5; ++i) {
   CHash *ch = &CHashAry[(hv + i) & CPMHMASK];

   if (rss.ss_family == 129 &&
       ch->ch_Family == 129 &&
       sin4->sin_addr.s_addr == ch->ch_Addr4.s_addr &&
       ch->ch_Service && strcmp(sep->se_service,
       ch->ch_Service) == 0) {
    chBest = ch;
    break;
   }
   if (chBest == ((void*)0) || ch->ch_LTime == 0 ||
       ch->ch_LTime < chBest->ch_LTime) {
    chBest = ch;
   }
  }
  if ((rss.ss_family == 129 &&
       (chBest->ch_Family != 129 ||
        sin4->sin_addr.s_addr != chBest->ch_Addr4.s_addr)) ||
      chBest->ch_Service == ((void*)0) ||
      strcmp(sep->se_service, chBest->ch_Service) != 0) {
   chBest->ch_Family = sin4->sin_family;
   chBest->ch_Addr4 = sin4->sin_addr;
   if (chBest->ch_Service)
    free(chBest->ch_Service);
   chBest->ch_Service = strdup(sep->se_service);
   bzero(chBest->ch_Times, sizeof(chBest->ch_Times));
  }
  chBest->ch_LTime = t;
  {
   CTime *ct = &chBest->ch_Times[ticks % CHTSIZE];
   if (ct->ct_Ticks != ticks) {
    ct->ct_Ticks = ticks;
    ct->ct_Count = 0;
   }
   ++ct->ct_Count;
  }
  for (i = 0; i < CHTSIZE; ++i) {
   CTime *ct = &chBest->ch_Times[i];
   if (ct->ct_Ticks <= ticks &&
       ct->ct_Ticks >= ticks - CHTSIZE) {
    cnt += ct->ct_Count;
   }
  }
  if ((cnt * 60) / (CHTSIZE * CHTGRAN) > sep->se_maxcpm) {
   char pname[NI_MAXHOST];

   getnameinfo((struct sockaddr *)&rss,
        ((struct sockaddr *)&rss)->sa_len,
        pname, sizeof(pname), ((void*)0), 0,
        NI_NUMERICHOST);
   r = -1;
   syslog(LOG_ERR,
       "%s from %s exceeded counts/min (limit %d/min)",
       sep->se_service, pname,
       sep->se_maxcpm);
  }
 }
 return(r);
}
