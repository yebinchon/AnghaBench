
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;
struct utmpx {int ut_host; int ut_line; int ut_user; TYPE_1__ ut_tv; } ;


 int ctime (scalar_t__*) ;
 int xo_attr (char*,char*,unsigned long) ;
 int xo_close_instance (char*) ;
 int xo_emit (char*,int ,...) ;
 int xo_open_instance (char*) ;

__attribute__((used)) static void
output(struct utmpx *u)
{
 time_t t = u->ut_tv.tv_sec;

 xo_open_instance("lastlogin");
 xo_emit("{:user/%-10s/%s} {:tty/%-8s/%s} {:from/%-22.22s/%s}",
  u->ut_user, u->ut_line, u->ut_host);
 xo_attr("seconds", "%lu", (unsigned long)t);
 xo_emit(" {:login-time/%.24s/%.24s}\n", ctime(&t));
 xo_close_instance("lastlogin");
}
