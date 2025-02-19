
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* h_name; } ;
struct TYPE_4__ {int sin_addr; } ;
typedef int FILE ;


 int AF_INET ;
 int adate () ;
 scalar_t__ daemonize ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int *,char*,char*) ;
 TYPE_2__* gethostbyaddr (char*,int,int ) ;
 TYPE_2__* hst ;
 long inet_addr (char*) ;
 int inet_ntoa (int ) ;
 int logfile ;
 int printf (char*,char*) ;
 int putenv (char*) ;
 TYPE_1__ source ;
 int sprintf (char*,char*,char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,int ) ;

__attribute__((used)) static void
log_line(char *req)
{
 char log_buff[256];
 char msg[1024];
 char env_host[80], env_addr[80];
 long addr;
 FILE *log;

 strcpy(log_buff,inet_ntoa(source.sin_addr));
 sprintf(env_addr, "REMOTE_ADDR=%s",log_buff);

 addr=inet_addr(log_buff);

 strcpy(msg,adate());
 strcat(msg,"    ");
 hst=gethostbyaddr((char*) &addr, 4, AF_INET);


 if (hst) {
   strcat(msg,hst->h_name);
   sprintf(env_host, "REMOTE_HOST=%s",hst->h_name);
 }
 strcat(msg," (");
 strcat(msg,log_buff);
 strcat(msg,")   ");
 strcat(msg,req);

 if (daemonize) {
   log=fopen(logfile,"a");
   fprintf(log,"%s\n",msg);
   fclose(log);
 } else
   printf("%s\n",msg);


 putenv(env_addr);
 putenv(env_host);
}
