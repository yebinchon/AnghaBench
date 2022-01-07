
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;


 int MAC_CHECK_PROBE4 (int ,int,struct ucred*,int,int,int) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,int,int,int) ;
 int socket_check_create ;

int
mac_socket_check_create(struct ucred *cred, int domain, int type, int proto)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(socket_check_create, cred, domain, type,
     proto);
 MAC_CHECK_PROBE4(socket_check_create, error, cred, domain, type,
     proto);

 return (error);
}
