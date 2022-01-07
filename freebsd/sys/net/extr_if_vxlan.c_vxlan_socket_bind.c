
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union vxlan_sockaddr {int sa; } ;
struct vxlan_socket {int vxlso_sock; union vxlan_sockaddr vxlso_laddr; } ;
struct thread {int dummy; } ;
struct ifnet {int dummy; } ;


 int EADDRINUSE ;
 struct thread* curthread ;
 int if_printf (struct ifnet*,char*,int) ;
 int sobind (int ,int *,struct thread*) ;

__attribute__((used)) static int
vxlan_socket_bind(struct vxlan_socket *vso, struct ifnet *ifp)
{
 union vxlan_sockaddr laddr;
 struct thread *td;
 int error;

 td = curthread;
 laddr = vso->vxlso_laddr;

 error = sobind(vso->vxlso_sock, &laddr.sa, td);
 if (error) {
  if (error != EADDRINUSE)
   if_printf(ifp, "cannot bind socket: %d\n", error);
  return (error);
 }

 return (0);
}
