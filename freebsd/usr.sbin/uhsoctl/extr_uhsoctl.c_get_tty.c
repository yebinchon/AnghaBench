
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctx {char* ifnam; } ;
typedef int data ;


 char* SYSCTL_LOCATION ;
 char* SYSCTL_NAME_TTY ;
 char* SYSCTL_NETIF ;
 char* SYSCTL_TEST ;
 char* TTY_NAME ;
 int fprintf (int ,char*,...) ;
 char* malloc (scalar_t__) ;
 int memset (char**,int ,int) ;
 char** port_type_list ;
 char** realloc (char**,int) ;
 int snprintf (char*,int,char*,int,...) ;
 int sprintf (char*,char*,char*) ;
 int sscanf (char const*,char*,int*) ;
 int stderr ;
 scalar_t__ strcasecmp (char*,char*) ;
 scalar_t__ strlen (char*) ;
 char* strstr (char*,char*) ;
 int sysctlbyname (char*,char*,size_t*,int *,int ) ;

__attribute__((used)) static char **
get_tty(struct ctx *ctx)
{
 char buf[64], data[128];
 int error, i, usbport, usbport0, list_size = 0;
 char **list = ((void*)0);
 size_t len;
 const char **p, *q;




 for (i = 0; ; i++) {

  snprintf(buf, 64, SYSCTL_TEST, i);
  len = 127;
  error = sysctlbyname(buf, data, &len, ((void*)0), 0);
  data[len] = '\0';




  if (error < 0 || strcasecmp(data, "uhso") != 0)
   return ((void*)0);


  snprintf(buf, 64, SYSCTL_NETIF, i);
  len = 127;
  error = sysctlbyname(buf, data, &len, ((void*)0), 0);
  data[len] = '\0';




  if (error == 0 && strcasecmp(data, ctx->ifnam) == 0)
   break;
 }


 snprintf(buf, 64, SYSCTL_LOCATION, i);
 len = 127;
 error = sysctlbyname(buf, data, &len, ((void*)0), 0);
 data[len] = '\0';




 if (error != 0)
  return (((void*)0));

 q = strstr(data, "port=");
 if (q != ((void*)0)) {
  error = sscanf(q, " port=%d", &usbport);
  if (error != 1) {



   return (((void*)0));
  }
 } else {



   return (((void*)0));
 }
 for (i = 0; ; i++) {
  snprintf(buf, 64, SYSCTL_LOCATION, i);
  len = 127;
  memset(&data, 0, sizeof(data));
  error = sysctlbyname(buf, data, &len, ((void*)0), 0);
  if (error != 0)
   break;
  data[len] = '\0';
  q = strstr(data, "port=");
  if (q == ((void*)0))
   continue;
  sscanf(q, " port=%d", &usbport0);
  if (usbport != usbport0)
   continue;


  for (p = port_type_list; *p != ((void*)0); p++) {
   snprintf(buf, 64, SYSCTL_NAME_TTY, i, *p);
   len = 127;
   memset(&data, 0, sizeof(data));
   error = sysctlbyname(buf, data, &len, ((void*)0), 0);
   data[len] = '\0';




   if (error == 0) {
    list = realloc(list, (list_size + 1) * sizeof(char *));
    list[list_size] = malloc(strlen(data) + strlen(TTY_NAME));
        sprintf(list[list_size], TTY_NAME, data);
        list_size++;
   }
  }
 }
 list = realloc(list, (list_size + 1) * sizeof(char *));
 list[list_size] = ((void*)0);
 return (list);
}
