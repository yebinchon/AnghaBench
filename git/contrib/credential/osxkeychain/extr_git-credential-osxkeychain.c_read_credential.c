
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int atoi (char*) ;
 int die (char*,char*) ;
 int exit (int ) ;
 scalar_t__ fgets (char*,int,int ) ;
 void* host ;
 int kSecProtocolTypeFTP ;
 int kSecProtocolTypeFTPS ;
 int kSecProtocolTypeHTTP ;
 int kSecProtocolTypeHTTPS ;
 int kSecProtocolTypeIMAP ;
 int kSecProtocolTypeIMAPS ;
 int kSecProtocolTypeSMTP ;
 void* password ;
 void* path ;
 int port ;
 int protocol ;
 int stdin ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;
 void* username ;
 void* xstrdup (char*) ;

__attribute__((used)) static void read_credential(void)
{
 char buf[1024];

 while (fgets(buf, sizeof(buf), stdin)) {
  char *v;

  if (!strcmp(buf, "\n"))
   break;
  buf[strlen(buf)-1] = '\0';

  v = strchr(buf, '=');
  if (!v)
   die("bad input: %s", buf);
  *v++ = '\0';

  if (!strcmp(buf, "protocol")) {
   if (!strcmp(v, "imap"))
    protocol = kSecProtocolTypeIMAP;
   else if (!strcmp(v, "imaps"))
    protocol = kSecProtocolTypeIMAPS;
   else if (!strcmp(v, "ftp"))
    protocol = kSecProtocolTypeFTP;
   else if (!strcmp(v, "ftps"))
    protocol = kSecProtocolTypeFTPS;
   else if (!strcmp(v, "https"))
    protocol = kSecProtocolTypeHTTPS;
   else if (!strcmp(v, "http"))
    protocol = kSecProtocolTypeHTTP;
   else if (!strcmp(v, "smtp"))
    protocol = kSecProtocolTypeSMTP;
   else
    exit(0);
  }
  else if (!strcmp(buf, "host")) {
   char *colon = strchr(v, ':');
   if (colon) {
    *colon++ = '\0';
    port = atoi(colon);
   }
   host = xstrdup(v);
  }
  else if (!strcmp(buf, "path"))
   path = xstrdup(v);
  else if (!strcmp(buf, "username"))
   username = xstrdup(v);
  else if (!strcmp(buf, "password"))
   password = xstrdup(v);
 }
}
