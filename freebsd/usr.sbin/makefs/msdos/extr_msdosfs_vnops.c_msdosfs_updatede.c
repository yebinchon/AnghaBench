
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct direntry {int dummy; } ;
struct denode {int de_flag; } ;
struct buf {int dummy; } ;


 int DE_EXTERNALIZE (struct direntry*,struct denode*) ;
 int DE_MODIFIED ;
 int bwrite (struct buf*) ;
 int readde (struct denode*,struct buf**,struct direntry**) ;

__attribute__((used)) static int
msdosfs_updatede(struct denode *dep)
{
 struct buf *bp;
 struct direntry *dirp;
 int error;

 dep->de_flag &= ~DE_MODIFIED;
 error = readde(dep, &bp, &dirp);
 if (error)
  return error;
 DE_EXTERNALIZE(dirp, dep);
 error = bwrite(bp);
 return error;
}
