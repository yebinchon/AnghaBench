
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DAEMON ;
 int LOG_NDELAY ;
 int LOG_PID ;
 int getprogname () ;
 int log_level ;
 int openlog (int ,int,int ) ;

void
log_init(int level)
{

 log_level = level;
 openlog(getprogname(), LOG_NDELAY | LOG_PID, LOG_DAEMON);
}
