
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socktypeset ;


 int BOOLEAN_ANYONE ;
 int IP_FAITH ;
 int IP_MULTICAST_LOOP ;
 int IP_MULTICAST_TTL ;
 int IP_ONESBCAST ;
 int IP_RECVDSTADDR ;
 int IP_RECVIF ;
 int IP_RECVOPTS ;
 int IP_RECVRETOPTS ;
 int IP_RECVTTL ;
 int IP_TOS ;
 int IP_TTL ;
 int SOCK_DGRAM ;
 int SOCK_RAW ;
 int SOCK_STREAM ;
 int close (int) ;
 int err (int,char*,char const*,int) ;
 int get_socket (int,int) ;
 scalar_t__ geteuid () ;
 scalar_t__ getuid () ;
 int test_ip_boolean (int,char const*,int ,char*,int,int ) ;
 int test_ip_hdrincl () ;
 int test_ip_multicast_if (int ,int *) ;
 int test_ip_multicast_membership (int,char const*) ;
 int test_ip_multicast_vif (int ,int *) ;
 int test_ip_uchar (int,char const*,int ,char*,int) ;

__attribute__((used)) static void
testsuite(int priv)
{
 const char *socktypenameset[] = {"SOCK_DGRAM", "SOCK_STREAM",
     "SOCK_RAW"};
 int socktypeset[] = {SOCK_DGRAM, SOCK_STREAM, SOCK_RAW};
 const char *socktypename;
 int i, sock, socktype;

 test_ip_hdrincl();

 for (i = 0; i < sizeof(socktypeset)/sizeof(int); i++) {
  socktype = socktypeset[i];
  socktypename = socktypenameset[i];





  if (getuid() != 0 && socktype == SOCK_RAW)
   continue;
  if (geteuid() != 0 && !priv && socktype == SOCK_RAW)
   continue;




  sock = get_socket(socktype, priv);
  if (sock == -1)
   err(-1, "get_socket(%s, %d) for test_ip_uchar(IP_TOS)",
       socktypename, priv);
  test_ip_uchar(sock, socktypename, IP_TOS, "IP_TOS", 0);
  close(sock);

  sock = get_socket(socktype, priv);
  if (sock == -1)
   err(-1, "get_socket(%s %d) for test_ip_uchar(IP_TTL)",
       socktypename, priv);
  test_ip_uchar(sock, socktypename, IP_TTL, "IP_TTL", 64);
  close(sock);

  sock = get_socket(socktype, priv);
  if (sock == -1)
   err(-1, "get_socket(%s, %d) for test_ip_boolean"
       "(IP_RECVOPTS)", socktypename, priv);
  test_ip_boolean(sock, socktypename, IP_RECVOPTS,
      "IP_RECVOPTS", 0, BOOLEAN_ANYONE);
  close(sock);

  sock = get_socket(socktype, priv);
  if (sock == -1)
   err(-1, "get_socket(%s, %d) for test_ip_boolean"
        "(IP_RECVRETOPTS)", socktypename, priv);
  test_ip_boolean(sock, socktypename, IP_RECVRETOPTS,
      "IP_RECVRETOPTS", 0, BOOLEAN_ANYONE);
  close(sock);

  sock = get_socket(socktype, priv);
  if (sock == -1)
   err(-1, "get_socket(%s, %d) for test_ip_boolean"
       "(IP_RECVDSTADDR)", socktypename, priv);
  test_ip_boolean(sock, socktypename, IP_RECVDSTADDR,
      "IP_RECVDSTADDR", 0, BOOLEAN_ANYONE);
  close(sock);

  sock = get_socket(socktype, priv);
  if (sock == -1)
   err(-1, "get_socket(%s, %d) for test_ip_boolean"
       "(IP_RECVTTL)", socktypename, priv);
  test_ip_boolean(sock, socktypename, IP_RECVTTL, "IP_RECVTTL",
      0, BOOLEAN_ANYONE);
  close(sock);

  sock = get_socket(socktype, priv);
  if (sock == -1)
   err(-1, "get_socket(%s, %d) for test_ip_boolean"
       "(IP_RECVIF)", socktypename, priv);
  test_ip_boolean(sock, socktypename, IP_RECVIF, "IP_RECVIF",
      0, BOOLEAN_ANYONE);
  close(sock);

  sock = get_socket(socktype, priv);
  if (sock == -1)
   err(-1, "get_socket(%s, %d) for test_ip_boolean"
       "(IP_FAITH)", socktypename, priv);
  test_ip_boolean(sock, socktypename, IP_FAITH, "IP_FAITH", 0,
      BOOLEAN_ANYONE);
  close(sock);

  sock = get_socket(socktype, priv);
  if (sock == -1)
   err(-1, "get_socket(%s, %d) for test_ip_boolean"
       "(IP_ONESBCAST)", socktypename, priv);
  test_ip_boolean(sock, socktypename, IP_ONESBCAST,
      "IP_ONESBCAST", 0, BOOLEAN_ANYONE);
  close(sock);





  sock = get_socket(socktype, priv);
  if (sock == -1)
   err(-1, "get_socket(%s, %d) for IP_MULTICAST_TTL",
       socktypename, priv);
  test_ip_uchar(sock, socktypename, IP_MULTICAST_TTL,
      "IP_MULTICAST_TTL", 1);
  close(sock);







  sock = get_socket(socktype, priv);
  if (sock == -1)
   err(-1, "get_socket(%s, %d) for IP_MULTICAST_LOOP",
       socktypename, priv);
  test_ip_boolean(sock, socktypename, IP_MULTICAST_LOOP,
      "IP_MULTICAST_LOOP", 1, BOOLEAN_ANYONE);
  close(sock);

  sock = get_socket(socktype, priv);
  if (sock == -1)
   err(-1, "get_socket(%s, %d) for test_ip_options",
       socktypename, priv);

  close(sock);

  sock = get_socket(socktype, priv);
  if (sock == -1)
   err(-1, "get_socket(%s, %d) for test_ip_options",
       socktypename, priv);
  test_ip_multicast_membership(sock, socktypename);
  close(sock);

  test_ip_multicast_if(0, ((void*)0));
  test_ip_multicast_vif(0, ((void*)0));





 }
}
