
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_adapter_t ;
struct TYPE_2__ {char* pr_hostname; int pr_mtx; } ;


 int M_DEVBUF ;
 int M_WAITOK ;
 int attr_mask ;
 scalar_t__ blanked ;
 int free (int ,int ) ;
 int malloc (int,int ,int ) ;
 int message ;
 int messagelen ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 char* osrelease ;
 char* ostype ;
 TYPE_1__ prison0 ;
 int sprintf (int ,char*,char*,char*,char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static int
daemon_init(video_adapter_t *adp)
{
 size_t hostlen;

 mtx_lock(&prison0.pr_mtx);
 for (;;) {
  hostlen = strlen(prison0.pr_hostname);
  mtx_unlock(&prison0.pr_mtx);

  messagelen = hostlen + 3 + strlen(ostype) + 1 +
      strlen(osrelease);
  message = malloc(messagelen + 1, M_DEVBUF, M_WAITOK);
  mtx_lock(&prison0.pr_mtx);
  if (hostlen < strlen(prison0.pr_hostname)) {
   free(message, M_DEVBUF);
   continue;
  }
  break;
 }
 sprintf(message, "%s - %s %s", prison0.pr_hostname, ostype, osrelease);
 mtx_unlock(&prison0.pr_mtx);
 blanked = 0;
 attr_mask = ~0;

 return 0;
}
