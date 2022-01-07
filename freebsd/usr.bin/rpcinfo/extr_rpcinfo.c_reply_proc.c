
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_len; } ;
struct netconfig {int dummy; } ;
struct netbuf {scalar_t__ buf; } ;
typedef int bool_t ;


 int FALSE ;
 int NI_MAXHOST ;
 char* UNKNOWN ;
 int free (char*) ;
 scalar_t__ getnameinfo (struct sockaddr*,int ,char*,int,int *,int ,int ) ;
 int printf (char*,char*,char const*) ;
 char* taddr2uaddr (struct netconfig*,struct netbuf*) ;

__attribute__((used)) static bool_t
reply_proc(void *res, struct netbuf *who, struct netconfig *nconf)



{
 char *uaddr;
 char hostbuf[NI_MAXHOST];
 const char *hostname;
 struct sockaddr *sa = (struct sockaddr *)who->buf;

 if (getnameinfo(sa, sa->sa_len, hostbuf, NI_MAXHOST, ((void*)0), 0, 0)) {
  hostname = UNKNOWN;
 } else {
  hostname = hostbuf;
 }
 uaddr = taddr2uaddr(nconf, who);
 if (uaddr == ((void*)0)) {
  printf("%s\t%s\n", UNKNOWN, hostname);
 } else {
  printf("%s\t%s\n", uaddr, hostname);
  free((char *)uaddr);
 }
 return (FALSE);
}
