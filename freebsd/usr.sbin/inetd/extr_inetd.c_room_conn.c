
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct servtab {int se_maxperip; int se_service; } ;
struct TYPE_2__ {int ss_len; } ;
struct conninfo {TYPE_1__ co_addr; int co_numchild; } ;
typedef int pname ;


 int LOG_ERR ;
 int NI_MAXHOST ;
 int NI_NUMERICHOST ;
 int getnameinfo (struct sockaddr*,int ,char*,int,int *,int ,int ) ;
 int syslog (int ,char*,int ,char*,int ) ;

__attribute__((used)) static int
room_conn(struct servtab *sep, struct conninfo *conn)
{
 char pname[NI_MAXHOST];

 if (conn->co_numchild >= sep->se_maxperip) {
  getnameinfo((struct sockaddr *)&conn->co_addr,
      conn->co_addr.ss_len, pname, sizeof(pname), ((void*)0), 0,
      NI_NUMERICHOST);
  syslog(LOG_ERR, "%s from %s exceeded counts (limit %d)",
      sep->se_service, pname, sep->se_maxperip);
  return 0;
 }
 return 1;
}
