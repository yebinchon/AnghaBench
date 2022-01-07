
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;
struct addrinfo {int ai_flags; int ai_socktype; int ai_family; } ;
typedef int hints ;


 int AI_ADDRCONFIG ;
 int AI_NUMERICSERV ;
 int AI_PASSIVE ;
 int PF_UNSPEC ;
 int SOCK_STREAM ;
 char* checked_strdup (char const*) ;
 int fail (struct connection const*,char*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (char*,char const*,struct addrinfo*,struct addrinfo**) ;
 int log_errx (int,char*,...) ;
 int memset (struct addrinfo*,int ,int) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static void
resolve_addr(const struct connection *conn, const char *address,
    struct addrinfo **ai, bool initiator_side)
{
 struct addrinfo hints;
 char *arg, *addr, *ch;
 const char *port;
 int error, colons = 0;

 arg = checked_strdup(address);

 if (arg[0] == '\0') {
  fail(conn, "empty address");
  log_errx(1, "empty address");
 }
 if (arg[0] == '[') {



  arg++;
  addr = strsep(&arg, "]");
  if (arg == ((void*)0)) {
   fail(conn, "malformed address");
   log_errx(1, "malformed address %s", address);
  }
  if (arg[0] == '\0') {
   port = ((void*)0);
  } else if (arg[0] == ':') {
   port = arg + 1;
  } else {
   fail(conn, "malformed address");
   log_errx(1, "malformed address %s", address);
  }
 } else {




  for (ch = arg; *ch != '\0'; ch++) {
   if (*ch == ':')
    colons++;
  }
  if (colons > 1) {
   addr = arg;
   port = ((void*)0);
  } else {
   addr = strsep(&arg, ":");
   if (arg == ((void*)0))
    port = ((void*)0);
   else
    port = arg;
  }
 }

 if (port == ((void*)0) && !initiator_side)
  port = "3260";

 memset(&hints, 0, sizeof(hints));
 hints.ai_family = PF_UNSPEC;
 hints.ai_socktype = SOCK_STREAM;
 hints.ai_flags = AI_ADDRCONFIG | AI_NUMERICSERV;
 if (initiator_side)
  hints.ai_flags |= AI_PASSIVE;

 error = getaddrinfo(addr, port, &hints, ai);
 if (error != 0) {
  fail(conn, gai_strerror(error));
  log_errx(1, "getaddrinfo for %s failed: %s",
      address, gai_strerror(error));
 }
}
