
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
struct cmap {int cm_max; } ;



__attribute__((used)) static __inline wint_t
cmap_max(struct cmap *cm)
{

 return (cm->cm_max);
}
