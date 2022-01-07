
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct faultstate {int * vp; } ;


 int vput (int *) ;

__attribute__((used)) static void
unlock_vp(struct faultstate *fs)
{

 if (fs->vp != ((void*)0)) {
  vput(fs->vp);
  fs->vp = ((void*)0);
 }
}
