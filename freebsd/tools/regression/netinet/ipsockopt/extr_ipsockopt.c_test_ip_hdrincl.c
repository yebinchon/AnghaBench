
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;
typedef int flag ;


 scalar_t__ ENOPROTOOPT ;
 int HISTORICAL_INP_HDRINCL ;
 int IPPROTO_IP ;
 int IP_HDRINCL ;
 int PF_INET ;
 int SOCK_DGRAM ;
 int SOCK_RAW ;
 int SOCK_STREAM ;
 int close (int) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*,int,...) ;
 int geteuid () ;
 scalar_t__ getsockopt (int,int ,int ,int*,int*) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;
 int strerror (scalar_t__) ;
 int warnx (char*,int) ;

__attribute__((used)) static void
test_ip_hdrincl(void)
{
 int flag[2], sock;
 socklen_t len;




 sock = socket(PF_INET, SOCK_STREAM, 0);
 if (sock == -1)
  err(-1, "test_ip_hdrincl(): socket(SOCK_STREAM)");

 flag[0] = -1;
 len = sizeof(flag[0]);
 if (getsockopt(sock, IPPROTO_IP, IP_HDRINCL, flag, &len) == 0)
  err(-1, "test_ip_hdrincl(): initial getsockopt(IP_HDRINCL)");

 if (errno != ENOPROTOOPT)
  errx(-1, "test_ip_hdrincl(): initial getsockopt(IP_HDRINC) "
      "returned %d (%s) not ENOPROTOOPT", errno,
      strerror(errno));

 flag[0] = 1;
 if (setsockopt(sock, IPPROTO_IP, IP_HDRINCL, flag, sizeof(flag[0]))
     == 0)
  err(-1,"test_ip_hdrincl(): setsockopt(IP_HDRINCL) on TCP "
      "succeeded\n");

 if (errno != ENOPROTOOPT)
  errx(-1, "test_ip_hdrincl(): setsockopt(IP_HDRINCL) on TCP "
      "returned %d (%s) not ENOPROTOOPT\n", errno,
      strerror(errno));

 close(sock);




 sock = socket(PF_INET, SOCK_DGRAM, 0);
 if (sock == -1)
  err(-1, "test_ip_hdrincl(): socket(SOCK_DGRAM");

 flag[0] = -1;
 len = sizeof(flag[0]);
 if (getsockopt(sock, IPPROTO_IP, IP_HDRINCL, flag, &len) == 0)
  err(-1, "test_ip_hdrincl(): getsockopt(IP_HDRINCL) on UDP "
      "succeeded\n");

 if (errno != ENOPROTOOPT)
  errx(-1, "test_ip_hdrincl(): getsockopt(IP_HDRINCL) on UDP "
      "returned %d (%s) not ENOPROTOOPT\n", errno,
      strerror(errno));

 if (setsockopt(sock, IPPROTO_IP, IP_HDRINCL, flag, sizeof(flag[0]))
     == 0)
  err(-1, "test_ip_hdrincl(): setsockopt(IP_HDRINCL) on UDP "
      "succeeded\n");

 if (errno != ENOPROTOOPT)
  errx(-1, "test_ip_hdrincl(): setsockopt(IP_HDRINCL) on UDP "
      "returned %d (%s) not ENOPROTOOPT\n", errno,
      strerror(errno));

 close(sock);
 sock = socket(PF_INET, SOCK_RAW, 0);
 if (geteuid() != 0) {
  if (sock != -1)
   errx(-1, "test_ip_hdrincl: created raw socket as "
       "uid %d", geteuid());
  return;
 }
 if (sock == -1)
  err(-1, "test_ip_hdrincl(): socket(PF_INET, SOCK_RAW)");




 flag[0] = -1;
 flag[1] = -1;
 len = sizeof(flag);
 if (getsockopt(sock, IPPROTO_IP, IP_HDRINCL, flag, &len) < 0)
  err(-1, "test_ip_hdrincl(): getsockopt(IP_HDRINCL) on raw "
      "socket");

 if (len != sizeof(flag[0]))
  errx(-1, "test_ip_hdrincl(): %d bytes returned on "
      "initial get\n", len);

 if (flag[0] != 0)
  errx(-1, "test_ip_hdrincl(): initial flag value of %d\n",
      flag[0]);




 flag[0] = 1;
 if (setsockopt(sock, IPPROTO_IP, IP_HDRINCL, flag, sizeof(flag[0]))
     < 0)
  err(-1, "test_ip_hdrincl(): setsockopt(IP_HDRINCL, 1)");




 flag[0] = -1;
 flag[1] = -1;
 len = sizeof(flag);
 if (getsockopt(sock, IPPROTO_IP, IP_HDRINCL, flag, &len) < 0)
  err(-1, "test_ip_hdrincl(): getsockopt(IP_HDRINCL) after "
      "set");

 if (flag[0] == 0)
  errx(-1, "test_ip_hdrincl(): getsockopt(IP_HDRINCL) "
      "after set had flag of %d\n", flag[0]);


 if (flag[0] != 8)
  warnx("test_ip_hdrincl(): WARNING: getsockopt(IP_H"
      "DRINCL) after set had non-historical value of %d\n",
      flag[0]);




 flag[0] = 0;
 if (setsockopt(sock, IPPROTO_IP, IP_HDRINCL, flag, sizeof(flag[0]))
     < 0)
  err(-1, "test_ip_hdrincl(): setsockopt(IP_HDRINCL, 0)");




 flag[0] = -1;
 flag[1] = -1;
 len = sizeof(flag);
 if (getsockopt(sock, IPPROTO_IP, IP_HDRINCL, flag, &len) < 0)
  err(-1, "test_ip_hdrincl(): getsockopt(IP_HDRINCL) after "
      "reset");

 if (flag[0] != 0)
  errx(-1, "test_ip_hdrincl(): getsockopt(IP_HDRINCL) "
      "after set had flag of %d\n", flag[0]);

 close(sock);
}
