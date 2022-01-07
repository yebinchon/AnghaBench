
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int t_cmsgcred_client ;
 int t_cmsgcred_server ;
 int t_generic (int ,int ) ;

int
t_cmsgcred(void)
{
 return (t_generic(t_cmsgcred_client, t_cmsgcred_server));
}
