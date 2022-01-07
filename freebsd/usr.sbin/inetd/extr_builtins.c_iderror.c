
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_OSERR ;
 int LOG_ERR ;
 int MSG_EOF ;
 int asprintf (char**,char*,int,int,char const*) ;
 int exit (int ) ;
 int free (char*) ;
 int send (int,char*,int ,int ) ;
 int strlen (char*) ;
 int syslog (int ,char*) ;

__attribute__((used)) static void
iderror(int lport, int fport, int s, const char *er)
{
 char *p;

 asprintf(&p, "%d , %d : ERROR : %s\r\n", lport, fport, er);
 if (p == ((void*)0)) {
  syslog(LOG_ERR, "asprintf: %m");
  exit(EX_OSERR);
 }
 send(s, p, strlen(p), MSG_EOF);
 free(p);

 exit(0);
}
