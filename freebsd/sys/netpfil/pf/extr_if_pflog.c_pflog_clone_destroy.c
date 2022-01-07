
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int PFLOGIFS_MAX ;
 struct ifnet** V_pflogifs ;
 int bpfdetach (struct ifnet*) ;
 int if_detach (struct ifnet*) ;
 int if_free (struct ifnet*) ;

__attribute__((used)) static void
pflog_clone_destroy(struct ifnet *ifp)
{
 int i;

 for (i = 0; i < PFLOGIFS_MAX; i++)
  if (V_pflogifs[i] == ifp)
   V_pflogifs[i] = ((void*)0);

 bpfdetach(ifp);
 if_detach(ifp);
 if_free(ifp);
}
