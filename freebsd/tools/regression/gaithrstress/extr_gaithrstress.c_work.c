
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int suffixes ;
struct timespec {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct worker {int w_lookup_failure; int w_lookup_success; struct timespec w_max_lookup_time; } ;
struct addrinfo {int dummy; } ;
struct TYPE_2__ {int options; } ;


 int CLOCK_REALTIME ;
 int RES_DNSRCH ;
 int RES_INIT ;
 TYPE_1__ _res ;
 int asprintf (char**,char*,char*,char*,char*,char const*) ;
 int clock_gettime (int ,struct timespec*) ;
 int free (char*) ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char*,int *,int ,struct addrinfo**) ;
 int hints ;
 int max_random_sleep ;
 size_t const my_arc4random_r () ;
 size_t nrandwords ;
 int pthread_exit (int *) ;
 int randomsleep (int ) ;
 char** randwords ;
 scalar_t__ res_init () ;
 int workers_stop ;

__attribute__((used)) static void *
work(void *arg)
{
 struct worker *w = arg;


 if (_res.options & RES_INIT || res_init() == 0)
  _res.options &= ~RES_DNSRCH;
 do {
  const char *suffixes[] = { "net", "com", "org" };
  const size_t nsuffixes = sizeof(suffixes) / sizeof(suffixes[0]);
  struct timespec ts_begintime, ts_total;
  struct addrinfo *res;
  char *hostname;
  int error;

  randomsleep(max_random_sleep);
  if (asprintf(&hostname, "%s%s%s.%s",
      (my_arc4random_r() % 2) == 0 ? "www." : "",
      randwords[my_arc4random_r() % nrandwords],
      (my_arc4random_r() % 3) == 0 ?
      randwords[my_arc4random_r() % nrandwords] : "",
      suffixes[my_arc4random_r() % nsuffixes]) == -1)
   continue;
  (void)clock_gettime(CLOCK_REALTIME, &ts_begintime);
  error = getaddrinfo(hostname, ((void*)0), hints, &res);
  (void)clock_gettime(CLOCK_REALTIME, &ts_total);
  ts_total.tv_sec -= ts_begintime.tv_sec;
  ts_total.tv_nsec -= ts_begintime.tv_nsec;
  if (ts_total.tv_nsec < 0) {
   ts_total.tv_sec--;
   ts_total.tv_nsec += 1000000000;
  }
  if (ts_total.tv_sec > w->w_max_lookup_time.tv_sec ||
      (ts_total.tv_sec == w->w_max_lookup_time.tv_sec &&
      ts_total.tv_nsec > w->w_max_lookup_time.tv_sec))
   w->w_max_lookup_time = ts_total;
  free(hostname);
  if (error == 0) {
   w->w_lookup_success++;
   freeaddrinfo(res);
  } else {
   w->w_lookup_failure++;
  }
 } while (!workers_stop);

 pthread_exit(((void*)0));
}
