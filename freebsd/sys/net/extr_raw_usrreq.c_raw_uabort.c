
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int KASSERT (int ,char*) ;
 int soisdisconnected (struct socket*) ;
 int * sotorawcb (struct socket*) ;

__attribute__((used)) static void
raw_uabort(struct socket *so)
{

 KASSERT(sotorawcb(so) != ((void*)0), ("raw_uabort: rp == NULL"));

 soisdisconnected(so);
}
