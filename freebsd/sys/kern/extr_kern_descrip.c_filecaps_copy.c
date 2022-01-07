
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct filecaps {int fc_nioctls; struct filecaps const* fc_ioctls; } const filecaps ;


 int KASSERT (int,char*) ;
 int M_FILECAPS ;
 int M_WAITOK ;
 struct filecaps const* malloc (size_t,int ,int ) ;
 int memcpy (struct filecaps const*,struct filecaps const*,size_t) ;

bool
filecaps_copy(const struct filecaps *src, struct filecaps *dst, bool locked)
{
 size_t size;

 if (src->fc_ioctls != ((void*)0) && !locked)
  return (0);
 memcpy(dst, src, sizeof(*src));
 if (src->fc_ioctls == ((void*)0))
  return (1);

 KASSERT(src->fc_nioctls > 0,
     ("fc_ioctls != NULL, but fc_nioctls=%hd", src->fc_nioctls));

 size = sizeof(src->fc_ioctls[0]) * src->fc_nioctls;
 dst->fc_ioctls = malloc(size, M_FILECAPS, M_WAITOK);
 memcpy(dst->fc_ioctls, src->fc_ioctls, size);
 return (1);
}
