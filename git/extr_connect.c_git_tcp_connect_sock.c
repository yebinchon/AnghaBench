
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; } ;
typedef int hints ;


 int AF_INET ;
 int AF_INET6 ;
 int CONNECT_IPV4 ;
 int CONNECT_IPV6 ;
 int CONNECT_VERBOSE ;
 int DEFAULT_GIT_PORT ;
 int IPPROTO_TCP ;
 int SOCK_STREAM ;
 char* STR (int ) ;
 struct strbuf STRBUF_INIT ;
 char* _ (char*) ;
 char* ai_name (struct addrinfo*) ;
 int close (int) ;
 scalar_t__ connect (int,int ,int ) ;
 int die (char*,char*,char const*,...) ;
 int enable_keepalive (int) ;
 int errno ;
 int fprintf (int ,char*,char*,...) ;
 int fprintf_ln (int ,char*) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int get_host_and_port (char**,char const**) ;
 int getaddrinfo (char*,char const*,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 int strbuf_addf (struct strbuf*,char*,char*,int,char*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strerror (int ) ;

__attribute__((used)) static int git_tcp_connect_sock(char *host, int flags)
{
 struct strbuf error_message = STRBUF_INIT;
 int sockfd = -1;
 const char *port = STR(DEFAULT_GIT_PORT);
 struct addrinfo hints, *ai0, *ai;
 int gai;
 int cnt = 0;

 get_host_and_port(&host, &port);
 if (!*port)
  port = "<none>";

 memset(&hints, 0, sizeof(hints));
 if (flags & CONNECT_IPV4)
  hints.ai_family = AF_INET;
 else if (flags & CONNECT_IPV6)
  hints.ai_family = AF_INET6;
 hints.ai_socktype = SOCK_STREAM;
 hints.ai_protocol = IPPROTO_TCP;

 if (flags & CONNECT_VERBOSE)
  fprintf(stderr, _("Looking up %s ... "), host);

 gai = getaddrinfo(host, port, &hints, &ai);
 if (gai)
  die(_("unable to look up %s (port %s) (%s)"), host, port, gai_strerror(gai));

 if (flags & CONNECT_VERBOSE)

  fprintf(stderr, _("done.\nConnecting to %s (port %s) ... "), host, port);

 for (ai0 = ai; ai; ai = ai->ai_next, cnt++) {
  sockfd = socket(ai->ai_family,
    ai->ai_socktype, ai->ai_protocol);
  if ((sockfd < 0) ||
      (connect(sockfd, ai->ai_addr, ai->ai_addrlen) < 0)) {
   strbuf_addf(&error_message, "%s[%d: %s]: errno=%s\n",
        host, cnt, ai_name(ai), strerror(errno));
   if (0 <= sockfd)
    close(sockfd);
   sockfd = -1;
   continue;
  }
  if (flags & CONNECT_VERBOSE)
   fprintf(stderr, "%s ", ai_name(ai));
  break;
 }

 freeaddrinfo(ai0);

 if (sockfd < 0)
  die(_("unable to connect to %s:\n%s"), host, error_message.buf);

 enable_keepalive(sockfd);

 if (flags & CONNECT_VERBOSE)

  fprintf_ln(stderr, _("done."));

 strbuf_release(&error_message);

 return sockfd;
}
