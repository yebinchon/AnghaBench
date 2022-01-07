
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int logflag ;
 int write_msg_out () ;
 int write_timeout_func () ;

void
write_svc_aux(int nomain)
{
 if (!logflag)
  write_msg_out();
 if (!nomain)
  write_timeout_func();
}
