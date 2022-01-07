
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_4__ {scalar_t__ domain; char* name; } ;
struct TYPE_3__ {scalar_t__ type; char* name; } ;


 scalar_t__ PF_LOCAL ;
 scalar_t__ PF_ROUTE ;
 scalar_t__ SOCK_RAW ;
 int close (int) ;
 int errno ;
 int printf (char*,int,char*,char*,char*) ;
 scalar_t__ random () ;
 int rt_numfibs ;
 int so_setfib (int,int,size_t,size_t) ;
 int socket (scalar_t__,scalar_t__,int ) ;
 char* strerror (int ) ;
 TYPE_2__* t_dom ;
 TYPE_1__* t_type ;
 int testno ;

__attribute__((used)) static void
t(u_int dom, u_int type)
{
 int i, s;


 if (t_dom[dom].domain == PF_ROUTE && t_type[type].type != SOCK_RAW)
  return;
 if (t_dom[dom].domain == PF_LOCAL && t_type[type].type == SOCK_RAW)
  return;


 s = socket(t_dom[dom].domain, t_type[type].type, 0);
 if (s == -1) {
  printf("not ok %d %s_%s # socket(): %s\n", testno,
      t_dom[dom].name, t_type[type].name, strerror(errno));
  testno++;
  return;
 }


 for (i = -2; i <= (rt_numfibs + 2); i++)
  so_setfib(s, i, dom, type);


 for (i = 0; i < 3; i++)
  so_setfib(s, (int)random(), dom, type);


 close(s);
}
