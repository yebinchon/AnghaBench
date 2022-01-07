
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
struct cmap {int cm_havecache; int cm_def; } ;



wint_t
cmap_default(struct cmap *cm, wint_t def)
{
 wint_t old;

 old = cm->cm_def;
 cm->cm_def = def;
 cm->cm_havecache = 0;
 return (old);
}
