
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct direntry {int dummy; } ;
struct denode {int de_diroffset; int de_dirclust; int de_pmp; } ;
struct buf {int dummy; } ;


 int readep (int ,int ,int ,struct buf**,struct direntry**) ;

int
readde(struct denode *dep, struct buf **bpp, struct direntry **epp)
{

 return (readep(dep->de_pmp, dep->de_dirclust, dep->de_diroffset,
     bpp, epp));
}
