
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mtim; int st_atim; int st_birthtim; scalar_t__ st_ino; } ;
struct denode {int de_MTime; int de_MDate; int de_ADate; int de_CTime; int de_CDate; } ;


 struct stat stampst ;
 int unix2fattime (int *,int *,int *) ;

__attribute__((used)) static void
msdosfs_times(struct denode *dep, const struct stat *st)
{
 if (stampst.st_ino)
  st = &stampst;

 unix2fattime(&st->st_birthtim, &dep->de_CDate, &dep->de_CTime);
 unix2fattime(&st->st_atim, &dep->de_ADate, ((void*)0));
 unix2fattime(&st->st_mtim, &dep->de_MDate, &dep->de_MTime);
}
