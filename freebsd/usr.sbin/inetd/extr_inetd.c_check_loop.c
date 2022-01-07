
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr {int sa_len; } ;
struct TYPE_6__ {int sin6_port; } ;
struct TYPE_5__ {int sin_port; } ;
struct servtab {scalar_t__ se_socktype; int se_family; int se_proto; int se_service; TYPE_2__ se_ctrladdr6; TYPE_1__ se_ctrladdr4; int se_bi; struct servtab* se_next; } ;
typedef int pname ;
struct TYPE_8__ {int sin_port; } ;
struct TYPE_7__ {int sin6_port; } ;




 int LOG_WARNING ;
 int NI_MAXHOST ;
 int NI_NUMERICHOST ;
 scalar_t__ SOCK_DGRAM ;
 TYPE_4__* csatosin (struct sockaddr const*) ;
 TYPE_3__* csatosin6 (struct sockaddr const*) ;
 int getnameinfo (struct sockaddr const*,int ,char*,int,int *,int ,int ) ;
 struct servtab* servtab ;
 int syslog (int ,char*,int ,int ,int ,int ,char*) ;

int
check_loop(const struct sockaddr *sa, const struct servtab *sep)
{
 struct servtab *se2;
 char pname[NI_MAXHOST];

 for (se2 = servtab; se2; se2 = se2->se_next) {
  if (!se2->se_bi || se2->se_socktype != SOCK_DGRAM)
   continue;

  switch (se2->se_family) {
  case 129:
   if (csatosin(sa)->sin_port ==
       se2->se_ctrladdr4.sin_port)
    goto isloop;
   continue;







  default:
   continue;
  }
 isloop:
  getnameinfo(sa, sa->sa_len, pname, sizeof(pname), ((void*)0), 0,
       NI_NUMERICHOST);
  syslog(LOG_WARNING, "%s/%s:%s/%s loop request REFUSED from %s",
         sep->se_service, sep->se_proto,
         se2->se_service, se2->se_proto,
         pname);
  return 1;
 }
 return 0;
}
