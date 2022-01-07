
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;
struct pollfd {int revents; } ;
typedef int FILE ;


 int ATF_REQUIRE_EQ (int ,int ) ;
 int CLOCK_MONOTONIC ;
 int POLLIN ;
 int atf_tc_fail (char*,...) ;
 int clock_gettime (int ,struct timespec*) ;
 int errno ;
 int get_records (char const*,int *) ;
 int ppoll (struct pollfd*,int,struct timespec*,int *) ;
 int strerror (int ) ;

__attribute__((used)) static void
check_auditpipe(struct pollfd fd[], const char *auditregex, FILE *pipestream)
{
 struct timespec currtime, endtime, timeout;


 ATF_REQUIRE_EQ(0, clock_gettime(CLOCK_MONOTONIC, &endtime));
 endtime.tv_sec += 10;
 timeout.tv_nsec = endtime.tv_nsec;

 for (;;) {

  ATF_REQUIRE_EQ(0, clock_gettime(CLOCK_MONOTONIC, &currtime));
  timeout.tv_sec = endtime.tv_sec - currtime.tv_sec;

  switch (ppoll(fd, 1, &timeout, ((void*)0))) {

  case 1:
   if (fd[0].revents & POLLIN) {
    if (get_records(auditregex, pipestream))
     return;
   } else {
    atf_tc_fail("Auditpipe returned an "
    "unknown event %#x", fd[0].revents);
   }
   break;


  case 0:
   atf_tc_fail("%s not found in auditpipe within the "
     "time limit", auditregex);
   break;


  case -1:
   atf_tc_fail("Poll: %s", strerror(errno));
   break;

  default:
   atf_tc_fail("Poll returned too many file descriptors");
  }
 }
}
