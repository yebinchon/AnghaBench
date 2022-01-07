
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int u_int ;
struct timecounter {int tc_frequency; int tc_counter_mask; int tc_quality; char* tc_name; int (* tc_get_timecount ) (struct timecounter*) ;struct timecounter* tc_next; } ;
struct sysctl_oid {int dummy; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_U64 ;
 int CTLTYPE_UINT ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (int *,int ,int ,char*,int,int*,int ,char*) ;
 struct sysctl_oid* SYSCTL_ADD_NODE_WITH_LABEL (int *,int ,int ,char*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,struct timecounter*,int,int ,char*,char*) ;
 int SYSCTL_ADD_UINT (int *,int ,int ,char*,int,int*,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int _kern_timecounter_tc ;
 scalar_t__ bootverbose ;
 int hz ;
 int printf (char*,...) ;
 int stub1 (struct timecounter*) ;
 int stub2 (struct timecounter*) ;
 int sysctl_kern_timecounter_freq ;
 int sysctl_kern_timecounter_get ;
 scalar_t__ tc_chosen ;
 struct timecounter* timecounter ;
 struct timecounter* timecounters ;

void
tc_init(struct timecounter *tc)
{
 u_int u;
 struct sysctl_oid *tc_root;

 u = tc->tc_frequency / tc->tc_counter_mask;

 u *= 11;
 u /= 10;
 if (u > hz && tc->tc_quality >= 0) {
  tc->tc_quality = -2000;
  if (bootverbose) {
   printf("Timecounter \"%s\" frequency %ju Hz",
       tc->tc_name, (uintmax_t)tc->tc_frequency);
   printf(" -- Insufficient hz, needs at least %u\n", u);
  }
 } else if (tc->tc_quality >= 0 || bootverbose) {
  printf("Timecounter \"%s\" frequency %ju Hz quality %d\n",
      tc->tc_name, (uintmax_t)tc->tc_frequency,
      tc->tc_quality);
 }

 tc->tc_next = timecounters;
 timecounters = tc;



 tc_root = SYSCTL_ADD_NODE_WITH_LABEL(((void*)0),
     SYSCTL_STATIC_CHILDREN(_kern_timecounter_tc), OID_AUTO, tc->tc_name,
     CTLFLAG_RW, 0, "timecounter description", "timecounter");
 SYSCTL_ADD_UINT(((void*)0), SYSCTL_CHILDREN(tc_root), OID_AUTO,
     "mask", CTLFLAG_RD, &(tc->tc_counter_mask), 0,
     "mask for implemented bits");
 SYSCTL_ADD_PROC(((void*)0), SYSCTL_CHILDREN(tc_root), OID_AUTO,
     "counter", CTLTYPE_UINT | CTLFLAG_RD, tc, sizeof(*tc),
     sysctl_kern_timecounter_get, "IU", "current timecounter value");
 SYSCTL_ADD_PROC(((void*)0), SYSCTL_CHILDREN(tc_root), OID_AUTO,
     "frequency", CTLTYPE_U64 | CTLFLAG_RD, tc, sizeof(*tc),
      sysctl_kern_timecounter_freq, "QU", "timecounter frequency");
 SYSCTL_ADD_INT(((void*)0), SYSCTL_CHILDREN(tc_root), OID_AUTO,
     "quality", CTLFLAG_RD, &(tc->tc_quality), 0,
     "goodness of time counter");






 if (tc_chosen)
  return;
 if (tc->tc_quality < 0)
  return;
 if (tc->tc_quality < timecounter->tc_quality)
  return;
 if (tc->tc_quality == timecounter->tc_quality &&
     tc->tc_frequency < timecounter->tc_frequency)
  return;
 (void)tc->tc_get_timecount(tc);
 (void)tc->tc_get_timecount(tc);
 timecounter = tc;
}
