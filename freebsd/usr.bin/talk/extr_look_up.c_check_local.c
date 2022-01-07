
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct tsockaddr {int sa_family; } ;
struct sockaddr {scalar_t__ sa_family; int sa_len; } ;
typedef int addr ;
struct TYPE_11__ {int sin_family; } ;
struct TYPE_10__ {struct tsockaddr ctl_addr; } ;
struct TYPE_8__ {scalar_t__ sa_family; } ;
struct TYPE_9__ {TYPE_1__ addr; } ;
typedef TYPE_2__ CTL_RESPONSE ;


 scalar_t__ AF_INET ;
 int DELETE ;
 scalar_t__ ECONNREFUSED ;
 scalar_t__ EINTR ;
 int close (int ) ;
 int connect (int ,struct sockaddr*,int) ;
 TYPE_7__ ctl_addr ;
 int ctl_transact (int ,TYPE_3__,int ,TYPE_2__*) ;
 char* current_state ;
 scalar_t__ errno ;
 int his_machine_addr ;
 int htons (int ) ;
 int look_for_invite (TYPE_2__*) ;
 int memcpy (struct sockaddr*,scalar_t__*,int) ;
 TYPE_3__ msg ;
 int open_sockt () ;
 int p_error (char*) ;
 int sockt ;

int
check_local(void)
{
 CTL_RESPONSE response;
 CTL_RESPONSE *rp = &response;
 struct sockaddr addr;



 msg.ctl_addr = *(struct tsockaddr *)&ctl_addr;
 msg.ctl_addr.sa_family = htons(ctl_addr.sin_family);

 if (!look_for_invite(rp))
  return (0);




 current_state = "Waiting to connect with caller";
 do {
  if (rp->addr.sa_family != AF_INET)
   p_error("Response uses invalid network address");
  (void)memcpy(&addr, &rp->addr.sa_family, sizeof(addr));
  addr.sa_family = rp->addr.sa_family;
  addr.sa_len = sizeof(addr);
  errno = 0;
  if (connect(sockt, &addr, sizeof(addr)) != -1)
   return (1);
 } while (errno == EINTR);
 if (errno == ECONNREFUSED) {






  ctl_transact(his_machine_addr, msg, DELETE, rp);
  close(sockt);
  open_sockt();
  return (0);
 }
 p_error("Unable to connect with initiator");

 return (0);
}
