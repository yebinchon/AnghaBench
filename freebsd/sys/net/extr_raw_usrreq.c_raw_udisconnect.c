
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int ENOTCONN ;
 int KASSERT (int ,char*) ;
 int * sotorawcb (struct socket*) ;

__attribute__((used)) static int
raw_udisconnect(struct socket *so)
{

 KASSERT(sotorawcb(so) != ((void*)0), ("raw_udisconnect: rp == NULL"));

 return (ENOTCONN);
}
