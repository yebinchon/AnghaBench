
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int signo ;


 int EX_OSERR ;
 int LOG_ERR ;
 int _exit (int ) ;
 int * signalpipe ;
 int syslog (int ,char*) ;
 size_t write (int ,int*,int) ;

__attribute__((used)) static void
flag_signal(int signo)
{
 size_t len;

 len = write(signalpipe[1], &signo, sizeof(signo));
 if (len != sizeof(signo)) {
  syslog(LOG_ERR, "write: %m");
  _exit(EX_OSERR);
 }
}
