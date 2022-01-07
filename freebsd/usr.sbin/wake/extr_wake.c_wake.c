
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ether_addr {int dummy; } ;


 int get_ether (char const*,struct ether_addr*) ;
 int send_wakeup (int,struct ether_addr*) ;

__attribute__((used)) static int
wake(int bpf, const char *host)
{
 struct ether_addr macaddr;

 if (get_ether(host, &macaddr) == -1)
  return (-1);

 return (send_wakeup(bpf, &macaddr));
}
