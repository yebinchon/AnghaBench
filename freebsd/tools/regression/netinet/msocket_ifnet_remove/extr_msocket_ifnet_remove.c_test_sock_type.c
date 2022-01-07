
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISC_IFNAME ;
 int DISC_IFUNIT ;
 int DISC_IP ;
 int DISC_MASK ;
 int disc_done () ;
 scalar_t__ disc_setup () ;
 scalar_t__ ifconfig_inet (int ,int ,int ,int ) ;
 int multicast_close (int) ;
 scalar_t__ multicast_open (int*,int,char const*) ;
 int printf (char*,char const*) ;

__attribute__((used)) static int
test_sock_type(int type, const char *type_string)
{
 int sock;

 if (disc_setup() < 0)
  return (-1);

 if (ifconfig_inet(DISC_IFNAME, DISC_IFUNIT, DISC_IP, DISC_MASK) < 0) {
  disc_done();
  return (-1);
 }

 if (multicast_open(&sock, type, type_string) < 0) {
  disc_done();
  return (-1);
 }





 disc_done();
 multicast_close(sock);

 printf("test_sock_type(%s) passed\n", type_string);

 return (0);
}
