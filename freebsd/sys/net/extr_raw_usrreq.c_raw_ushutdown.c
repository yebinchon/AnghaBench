
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int KASSERT (int ,char*) ;
 int socantsendmore (struct socket*) ;
 int * sotorawcb (struct socket*) ;

__attribute__((used)) static int
raw_ushutdown(struct socket *so)
{

 KASSERT(sotorawcb(so) != ((void*)0), ("raw_ushutdown: rp == NULL"));

 socantsendmore(so);
 return (0);
}
