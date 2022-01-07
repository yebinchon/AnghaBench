
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;


 int ENOTCONN ;
 int KASSERT (int ,char*) ;
 int * sotorawcb (struct socket*) ;

__attribute__((used)) static int
raw_upeeraddr(struct socket *so, struct sockaddr **nam)
{

 KASSERT(sotorawcb(so) != ((void*)0), ("raw_upeeraddr: rp == NULL"));

 return (ENOTCONN);
}
