
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct filecaps {int fc_nioctls; int * fc_ioctls; } ;


 int MPASS (int ) ;
 scalar_t__ __predict_true (int ) ;
 int bcopy (int *,int *,size_t) ;

__attribute__((used)) static void
filecaps_copy_finish(const struct filecaps *src, struct filecaps *dst,
    u_long *ioctls)
{
 size_t size;

 *dst = *src;
 if (__predict_true(src->fc_ioctls == ((void*)0))) {
  MPASS(ioctls == ((void*)0));
  return;
 }

 size = sizeof(src->fc_ioctls[0]) * src->fc_nioctls;
 dst->fc_ioctls = ioctls;
 bcopy(src->fc_ioctls, dst->fc_ioctls, size);
}
