
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;


 int LOG_NDELAY ;
 int LOG_PERROR ;
 int LOG_PID ;
 int LOG_USER ;
 int openlog (char const*,int,int ) ;

void
log_open(char const *prog, int32_t log2stderr)
{
 openlog(prog, LOG_PID|LOG_NDELAY|(log2stderr? LOG_PERROR:0), LOG_USER);
}
