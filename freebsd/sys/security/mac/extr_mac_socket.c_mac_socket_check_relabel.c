
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct socket {int so_label; } ;
struct label {int dummy; } ;


 int MAC_CHECK_PROBE3 (int ,int,struct ucred*,struct socket*,struct label*) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct socket*,int ,struct label*) ;
 int SOCK_LOCK_ASSERT (struct socket*) ;
 int socket_check_relabel ;

__attribute__((used)) static int
mac_socket_check_relabel(struct ucred *cred, struct socket *so,
    struct label *newlabel)
{
 int error;

 SOCK_LOCK_ASSERT(so);

 MAC_POLICY_CHECK_NOSLEEP(socket_check_relabel, cred, so,
     so->so_label, newlabel);
 MAC_CHECK_PROBE3(socket_check_relabel, error, cred, so, newlabel);

 return (error);
}
