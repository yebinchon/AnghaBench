
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {int unp_msgcount; } ;
struct file {int dummy; } ;


 int UNP_LINK_WLOCK () ;
 int UNP_LINK_WUNLOCK () ;
 struct unpcb* fptounp (struct file*) ;
 int unp_rights ;

__attribute__((used)) static int
unp_externalize_fp(struct file *fp)
{
 struct unpcb *unp;
 int ret;

 UNP_LINK_WLOCK();
 if ((unp = fptounp(fp)) != ((void*)0)) {
  unp->unp_msgcount--;
  ret = 1;
 } else
  ret = 0;
 unp_rights--;
 UNP_LINK_WUNLOCK();
 return (ret);
}
