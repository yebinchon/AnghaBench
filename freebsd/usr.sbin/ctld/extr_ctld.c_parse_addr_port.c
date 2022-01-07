
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_flags; int ai_socktype; int ai_family; } ;
typedef int hints ;


 int AI_PASSIVE ;
 int PF_UNSPEC ;
 int SOCK_STREAM ;
 int free (char*) ;
 int getaddrinfo (char*,char const*,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 char* strdup (char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int
parse_addr_port(char *arg, const char *def_port, struct addrinfo **ai)
{
 struct addrinfo hints;
 char *str, *addr, *ch;
 const char *port;
 int error, colons = 0;

 str = arg = strdup(arg);
 if (arg[0] == '[') {



  arg++;
  addr = strsep(&arg, "]");
  if (arg == ((void*)0)) {
   free(str);
   return (1);
  }
  if (arg[0] == '\0') {
   port = def_port;
  } else if (arg[0] == ':') {
   port = arg + 1;
  } else {
   free(str);
   return (1);
  }
 } else {




  for (ch = arg; *ch != '\0'; ch++) {
   if (*ch == ':')
    colons++;
  }
  if (colons > 1) {
   addr = arg;
   port = def_port;
  } else {
   addr = strsep(&arg, ":");
   if (arg == ((void*)0))
    port = def_port;
   else
    port = arg;
  }
 }

 memset(&hints, 0, sizeof(hints));
 hints.ai_family = PF_UNSPEC;
 hints.ai_socktype = SOCK_STREAM;
 hints.ai_flags = AI_PASSIVE;
 error = getaddrinfo(addr, port, &hints, ai);
 free(str);
 return ((error != 0) ? 1 : 0);
}
