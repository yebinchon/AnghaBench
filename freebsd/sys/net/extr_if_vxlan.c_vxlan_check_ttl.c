
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXTTL ;

__attribute__((used)) static int
vxlan_check_ttl(int ttl)
{

 return (ttl > MAXTTL);
}
