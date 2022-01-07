
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct socket {int so_label; } ;
struct label {int dummy; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct ucred*,struct socket*,int ,struct label*) ;
 int SOCK_LOCK_ASSERT (struct socket*) ;
 int socket_relabel ;

__attribute__((used)) static void
mac_socket_relabel(struct ucred *cred, struct socket *so,
    struct label *newlabel)
{

 SOCK_LOCK_ASSERT(so);

 MAC_POLICY_PERFORM_NOSLEEP(socket_relabel, cred, so, so->so_label,
     newlabel);
}
