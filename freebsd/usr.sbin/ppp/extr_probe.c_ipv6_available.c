
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ID0socket (int ,int ,int ) ;
 int PF_INET6 ;
 int SOCK_DGRAM ;
 int close (int) ;

__attribute__((used)) static int
ipv6_available(void)
{
  int s;

  if ((s = ID0socket(PF_INET6, SOCK_DGRAM, 0)) == -1)
    return 0;

  close(s);
  return 1;
}
