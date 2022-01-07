
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socks {int sk_addrlen; int sk_addr; int sk_sock; } ;
typedef int ssize_t ;


 int asprintf (char**,char*,int,char const*,char const*,char const*,char const*) ;
 int errx (int,char*) ;
 int free (char*) ;
 int send_to_all ;
 int sendto (int ,char*,int,int ,int ,int ) ;
 int sstosa (int *) ;
 int syslog (int,char*,char const*) ;
 int warn (char*) ;
 int warnx (char*,int) ;

__attribute__((used)) static void
logmessage(int pri, const char *timestamp, const char *hostname,
    const char *tag, struct socks *sk, ssize_t nsock, const char *buf)
{
 char *line;
 int len, i, lsent;

 if (nsock == 0) {
  syslog(pri, "%s", buf);
  return;
 }
 if ((len = asprintf(&line, "<%d>%s %s %s: %s", pri, timestamp,
     hostname, tag, buf)) == -1)
  errx(1, "asprintf");

 lsent = -1;
 for (i = 0; i < nsock; i++) {
  lsent = sendto(sk[i].sk_sock, line, len, 0,
          sstosa(&sk[i].sk_addr), sk[i].sk_addrlen);
  if (lsent == len && !send_to_all)
   break;
 }
 if (lsent != len) {
  if (lsent == -1)
   warn("sendto");
  else
   warnx("sendto: short send - %d bytes", lsent);
 }

 free(line);
}
