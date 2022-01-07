
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
typedef int time_t ;
struct netbuf {int dummy; } ;
typedef scalar_t__ rpcvers_t ;
typedef scalar_t__ rpcproc_t ;
struct TYPE_2__ {int time; int flag; scalar_t__ caller_xid; scalar_t__ reply_type; scalar_t__ versnum; int forward_fd; char* uaddr; scalar_t__ forward_xid; int * caller_addr; } ;


 TYPE_1__* FINFO ;
 int FINFO_ACTIVE ;
 int MAXTIME_OFF ;
 int NFORWARD ;
 int free_slot_by_index (int) ;
 int netbufcmp (int *,struct netbuf*) ;
 int * netbufdup (struct netbuf*) ;
 int rpcb_rmtcalls ;
 void* time (int*) ;

__attribute__((used)) static int
forward_register(u_int32_t caller_xid, struct netbuf *caller_addr,
   int forward_fd, char *uaddr, rpcproc_t reply_type,
   rpcvers_t versnum, u_int32_t *callxidp)
{
 int i;
 int j = 0;
 time_t min_time, time_now;
 static u_int32_t lastxid;
 int entry = -1;

 min_time = FINFO[0].time;
 time_now = time((time_t *)0);

 if (lastxid == 0)
  lastxid = time_now * NFORWARD;






 for (i = 0; i < NFORWARD; i++) {
  if (FINFO[i].flag & FINFO_ACTIVE) {
   if ((FINFO[i].caller_xid == caller_xid) &&
       (FINFO[i].reply_type == reply_type) &&
       (FINFO[i].versnum == versnum) &&
       (!netbufcmp(FINFO[i].caller_addr,
         caller_addr))) {
    FINFO[i].time = time((time_t *)0);
    return (0);
   } else {

    if ((time_now - FINFO[i].time) > MAXTIME_OFF)
     (void) free_slot_by_index(i);
   }
  }
  if (entry == -1) {
   if ((FINFO[i].flag & FINFO_ACTIVE) == 0) {
    entry = i;
   } else if (FINFO[i].time < min_time) {
    j = i;
    min_time = FINFO[i].time;
   }
  }
 }
 if (entry != -1) {

  j = entry;
 } else {
  (void) free_slot_by_index(j);
 }
 if ((FINFO[j].caller_addr = netbufdup(caller_addr)) == ((void*)0)) {
  return (-1);
 }
 rpcb_rmtcalls++;
 FINFO[j].flag = FINFO_ACTIVE;
 FINFO[j].reply_type = reply_type;
 FINFO[j].versnum = versnum;
 FINFO[j].time = time_now;
 FINFO[j].caller_xid = caller_xid;
 FINFO[j].forward_fd = forward_fd;




 FINFO[j].uaddr = uaddr;
 lastxid = lastxid + NFORWARD;

 if ((u_int32_t)(lastxid + NFORWARD) <= NFORWARD)
  lastxid = NFORWARD;
 FINFO[j].forward_xid = lastxid + j;
 *callxidp = FINFO[j].forward_xid;
 return (1);
}
