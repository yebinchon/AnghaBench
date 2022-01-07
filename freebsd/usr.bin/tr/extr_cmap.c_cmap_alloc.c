
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmap {int cm_havecache; scalar_t__ cm_max; scalar_t__ cm_min; int cm_def; int * cm_root; } ;


 int CM_DEF_SELF ;
 struct cmap* malloc (int) ;

struct cmap *
cmap_alloc(void)
{
 struct cmap *cm;

 cm = malloc(sizeof(*cm));
 if (cm == ((void*)0))
  return (((void*)0));
 cm->cm_root = ((void*)0);
 cm->cm_def = CM_DEF_SELF;
 cm->cm_havecache = 0;
 cm->cm_min = cm->cm_max = 0;
 return (cm);
}
