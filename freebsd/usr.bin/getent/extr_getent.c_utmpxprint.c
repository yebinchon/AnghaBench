
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct utmpx {int ut_type; int ut_pid; char* ut_user; char* ut_line; char* ut_host; TYPE_1__ ut_tv; } ;
typedef int intmax_t ;




 int EMPTY ;






 int UTMPXPRINTID ;
 int ctime (scalar_t__*) ;
 int printf (char*,...) ;

__attribute__((used)) static void
utmpxprint(const struct utmpx *ut)
{

 if (ut->ut_type == EMPTY)
  return;

 printf("[%jd.%06u -- %.24s] ",
     (intmax_t)ut->ut_tv.tv_sec, (unsigned int)ut->ut_tv.tv_usec,
     ctime(&ut->ut_tv.tv_sec));

 switch (ut->ut_type) {
 case 135:
  printf("system boot\n");
  return;
 case 129:
  printf("system shutdown\n");
  return;
 case 130:
  printf("old system time\n");
  return;
 case 131:
  printf("new system time\n");
  return;
 case 128:
  printf("user process: id=\"");
  UTMPXPRINTID;
  printf("\" pid=\"%d\" user=\"%s\" line=\"%s\" host=\"%s\"\n",
      ut->ut_pid, ut->ut_user, ut->ut_line, ut->ut_host);
  break;
 case 133:
  printf("init process: id=\"");
  UTMPXPRINTID;
  printf("\" pid=\"%d\"\n", ut->ut_pid);
  break;
 case 132:
  printf("login process: id=\"");
  UTMPXPRINTID;
  printf("\" pid=\"%d\" user=\"%s\" line=\"%s\" host=\"%s\"\n",
      ut->ut_pid, ut->ut_user, ut->ut_line, ut->ut_host);
  break;
 case 134:
  printf("dead process: id=\"");
  UTMPXPRINTID;
  printf("\" pid=\"%d\"\n", ut->ut_pid);
  break;
 default:
  printf("unknown record type %hu\n", ut->ut_type);
  break;
 }
}
