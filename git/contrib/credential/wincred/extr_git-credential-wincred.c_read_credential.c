
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int die (char*,...) ;
 scalar_t__ fgets (char*,int,int ) ;
 void* host ;
 void* password ;
 void* path ;
 void* protocol ;
 int stdin ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;
 void* utf8_to_utf16_dup (char*) ;
 void* wusername ;

__attribute__((used)) static void read_credential(void)
{
 char buf[1024];

 while (fgets(buf, sizeof(buf), stdin)) {
  char *v;
  int len = strlen(buf);

  while (len && strchr("\r\n", buf[len - 1]))
   buf[--len] = 0;

  if (!*buf)
   break;

  v = strchr(buf, '=');
  if (!v)
   die("bad input: %s", buf);
  *v++ = '\0';

  if (!strcmp(buf, "protocol"))
   protocol = utf8_to_utf16_dup(v);
  else if (!strcmp(buf, "host"))
   host = utf8_to_utf16_dup(v);
  else if (!strcmp(buf, "path"))
   path = utf8_to_utf16_dup(v);
  else if (!strcmp(buf, "username")) {
   wusername = utf8_to_utf16_dup(v);
  } else if (!strcmp(buf, "password"))
   password = utf8_to_utf16_dup(v);
  else
   die("unrecognized input");
 }
}
