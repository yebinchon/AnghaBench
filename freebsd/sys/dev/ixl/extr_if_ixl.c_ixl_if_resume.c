
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_flags; } ;
typedef int if_ctx_t ;


 int IFF_UP ;
 int INIT_DEBUGOUT (char*) ;
 struct ifnet* iflib_get_ifp (int ) ;
 int ixl_if_init (int ) ;

__attribute__((used)) static int
ixl_if_resume(if_ctx_t ctx)
{
 struct ifnet *ifp = iflib_get_ifp(ctx);

 INIT_DEBUGOUT("ixl_if_resume: begin");




 if (ifp->if_flags & IFF_UP)
  ixl_if_init(ctx);

 return (0);
}
