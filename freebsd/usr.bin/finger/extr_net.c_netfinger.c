
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {scalar_t__ ai_next; char* ai_canonname; int ai_socktype; int ai_family; int ai_flags; } ;


 int AI_CANONNAME ;
 int SIGALRM ;
 int SOCK_STREAM ;
 int TIME_LIMIT ;
 int alarm (int ) ;
 int cleanup ;
 int do_protocol (char*,struct addrinfo*) ;
 int family ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char*,char*,struct addrinfo*,struct addrinfo**) ;
 int printf (char*,char*) ;
 int signal (int ,int ) ;
 char* strrchr (char*,char) ;
 int trying (struct addrinfo*) ;
 int warnx (char*,char*,int ) ;

void
netfinger(char *name)
{
 int error, multi;
 char *host;
 struct addrinfo *ai, *ai0;
 static struct addrinfo hint;

 host = strrchr(name, '@');
 if (host == ((void*)0))
  return;
 *host++ = '\0';
 signal(SIGALRM, cleanup);
 alarm(TIME_LIMIT);

 hint.ai_flags = AI_CANONNAME;
 hint.ai_family = family;
 hint.ai_socktype = SOCK_STREAM;

 error = getaddrinfo(host, "finger", &hint, &ai0);
 if (error) {
  warnx("%s: %s", host, gai_strerror(error));
  return;
 }

 multi = (ai0->ai_next) != 0;


 if (ai0->ai_canonname == 0)
  printf("[%s]\n", host);
 else
  printf("[%s]\n", ai0->ai_canonname);

 for (ai = ai0; ai != ((void*)0); ai = ai->ai_next) {
  if (multi)
   trying(ai);

  error = do_protocol(name, ai);
  if (!error)
   break;
 }
 alarm(0);
 freeaddrinfo(ai0);
}
