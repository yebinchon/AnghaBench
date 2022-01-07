
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOCK_DGRAM ;
 int SOCK_RAW ;
 scalar_t__ test_sock_type (int ,char*) ;

int
main(int argc, char *argv[])
{

 if (test_sock_type(SOCK_RAW, "SOCK_RAW") < 0)
  return (-1);

 if (test_sock_type(SOCK_DGRAM, "SOCK_DGRAM") < 0)
  return (-1);

 return (0);
}
