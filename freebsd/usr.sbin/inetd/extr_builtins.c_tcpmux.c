
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servtab {char* se_service; struct servtab* se_next; } ;


 int ISMUX (struct servtab*) ;
 scalar_t__ ISMUXPLUS (struct servtab*) ;
 int MAX_SERV_LEN ;
 scalar_t__ debug ;
 int get_line (int,char*,int ) ;
 struct servtab* servtab ;
 int strcasecmp (char*,char*) ;
 int strlen (char*) ;
 int strwrite (int,char*) ;
 int warnx (char*,char*) ;
 int write (int,char*,int ) ;

struct servtab *
tcpmux(int s)
{
 struct servtab *sep;
 char service[MAX_SERV_LEN+1];
 int len;


 if ((len = get_line(s, service, MAX_SERV_LEN)) < 0) {
  strwrite(s, "-Error reading service name\r\n");
  return (((void*)0));
 }
 service[len] = '\0';

 if (debug)
  warnx("tcpmux: someone wants %s", service);





 if (!strcasecmp(service, "help")) {
  for (sep = servtab; sep; sep = sep->se_next) {
   if (!ISMUX(sep))
    continue;
   (void)write(s,sep->se_service,strlen(sep->se_service));
   strwrite(s, "\r\n");
  }
  return (((void*)0));
 }


 for (sep = servtab; sep; sep = sep->se_next) {
  if (!ISMUX(sep))
   continue;
  if (!strcasecmp(service, sep->se_service)) {
   if (ISMUXPLUS(sep)) {
    strwrite(s, "+Go\r\n");
   }
   return (sep);
  }
 }
 strwrite(s, "-Service not available\r\n");
 return (((void*)0));
}
