
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct rt_msghdr {int rtm_msglen; } ;


 int AF_INET6 ;
 int CTL_NET ;
 int LOG_INFO ;
 int NET_RT_DUMP ;
 int PF_ROUTE ;
 int RT_DUMP_MAXRETRY ;
 int fatal (char*,char const*,int,int ) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int nitems (int*) ;
 int rt_entry (struct rt_msghdr*,int) ;
 int sleep (int) ;
 scalar_t__ sysctl (int*,int ,char*,size_t*,int *,int ) ;
 int syslog (int ,char*,int) ;

__attribute__((used)) static void
krtread(int again)
{
 int mib[6];
 size_t msize;
 char *buf, *p, *lim;
 struct rt_msghdr *rtm;
 int retry;
 const char *errmsg;

 retry = 0;
 buf = ((void*)0);
 mib[0] = CTL_NET;
 mib[1] = PF_ROUTE;
 mib[2] = 0;
 mib[3] = AF_INET6;
 mib[4] = NET_RT_DUMP;
 mib[5] = 0;
 do {
  if (retry)
   sleep(1);
  retry++;
  errmsg = ((void*)0);
  if (buf) {
   free(buf);
   buf = ((void*)0);
  }
  if (sysctl(mib, nitems(mib), ((void*)0), &msize, ((void*)0), 0) < 0) {
   errmsg = "sysctl estimate";
   continue;
  }
  if ((buf = malloc(msize)) == ((void*)0)) {
   errmsg = "malloc";
   continue;
  }
  if (sysctl(mib, nitems(mib), buf, &msize, ((void*)0), 0) < 0) {
   errmsg = "sysctl NET_RT_DUMP";
   continue;
  }
 } while (retry < RT_DUMP_MAXRETRY && errmsg != ((void*)0));
 if (errmsg) {
  fatal("%s (with %d retries, msize=%lu)", errmsg, retry,
      (u_long)msize);

 } else if (1 < retry)
  syslog(LOG_INFO, "NET_RT_DUMP %d retires", retry);

 lim = buf + msize;
 for (p = buf; p < lim; p += rtm->rtm_msglen) {
  rtm = (struct rt_msghdr *)(void *)p;
  rt_entry(rtm, again);
 }
 free(buf);
}
