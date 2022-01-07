
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fp {struct fp* link; int * fp; } ;
typedef int FILE ;


 int errx (int,char*) ;
 struct fp* fp_head ;
 int free (struct fp*) ;

void
unregister_file(FILE *fp)
{
 struct fp **pp, *p;

 for (pp = &fp_head; (p = *pp) != ((void*)0); pp = &p->link)
  if (p->fp == fp) {
   *pp = p->link;
   (void)free(p);
   return;
  }
 errx(1, "Invalid file pointer");

}
