
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct socket {int so_cred; } ;
struct label {int dummy; } ;


 int seeotheruids_check (struct ucred*,int ) ;

__attribute__((used)) static int
seeotheruids_socket_check_visible(struct ucred *cred, struct socket *so,
    struct label *solabel)
{

 return (seeotheruids_check(cred, so->so_cred));
}
