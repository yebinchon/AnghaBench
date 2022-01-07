
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {int unp_msgcount; struct file* unp_file; } ;
struct file {int dummy; } ;


 int UNP_LINK_WLOCK () ;
 int UNP_LINK_WUNLOCK () ;
 struct unpcb* fptounp (struct file*) ;
 int unp_rights ;

__attribute__((used)) static void
unp_internalize_fp(struct file *fp)
{
 struct unpcb *unp;

 UNP_LINK_WLOCK();
 if ((unp = fptounp(fp)) != ((void*)0)) {
  unp->unp_file = fp;
  unp->unp_msgcount++;
 }
 unp_rights++;
 UNP_LINK_WUNLOCK();
}
