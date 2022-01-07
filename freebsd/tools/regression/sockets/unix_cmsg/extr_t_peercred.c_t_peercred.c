
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int t_generic (int ,int ) ;
 int t_peercred_client ;
 int t_peercred_server ;

int
t_peercred(void)
{
 return (t_generic(t_peercred_client, t_peercred_server));
}
