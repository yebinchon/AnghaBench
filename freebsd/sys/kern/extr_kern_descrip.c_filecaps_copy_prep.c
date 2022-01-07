
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct filecaps {int fc_nioctls; int * fc_ioctls; } ;


 int KASSERT (int,char*) ;
 int M_FILECAPS ;
 int M_WAITOK ;
 scalar_t__ __predict_true (int ) ;
 int * malloc (size_t,int ,int ) ;

__attribute__((used)) static u_long *
filecaps_copy_prep(const struct filecaps *src)
{
 u_long *ioctls;
 size_t size;

 if (__predict_true(src->fc_ioctls == ((void*)0)))
  return (((void*)0));

 KASSERT(src->fc_nioctls > 0,
     ("fc_ioctls != NULL, but fc_nioctls=%hd", src->fc_nioctls));

 size = sizeof(src->fc_ioctls[0]) * src->fc_nioctls;
 ioctls = malloc(size, M_FILECAPS, M_WAITOK);
 return (ioctls);
}
