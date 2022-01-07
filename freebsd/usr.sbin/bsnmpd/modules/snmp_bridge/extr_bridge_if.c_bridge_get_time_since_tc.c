
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct timeval {int tv_usec; int tv_sec; } ;
struct TYPE_2__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct bridge_if {TYPE_1__ last_tc_time; } ;


 int LOG_ERR ;
 int errno ;
 scalar_t__ gettimeofday (struct timeval*,int *) ;
 int strerror (int ) ;
 int syslog (int ,char*,int ) ;

__attribute__((used)) static int
bridge_get_time_since_tc(struct bridge_if *bif, uint32_t *ticks)
{
 struct timeval ct;

 if (gettimeofday(&ct, ((void*)0)) < 0) {
  syslog(LOG_ERR, "bridge get time since last TC:"
      "gettimeofday failed: %s", strerror(errno));
  return (-1);
 }

 if (ct.tv_usec - bif->last_tc_time.tv_usec < 0) {
  ct.tv_sec -= 1;
  ct.tv_usec += 1000000;
 }

 ct.tv_sec -= bif->last_tc_time.tv_sec;
 ct.tv_usec -= bif->last_tc_time.tv_usec;

 *ticks = ct.tv_sec * 100 + ct.tv_usec/10000;

 return (0);
}
