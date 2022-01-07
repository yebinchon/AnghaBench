
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_plex {scalar_t__ org; scalar_t__ stripesize; int volume; int state; int name; } ;


 scalar_t__ GV_PLEX_RAID5 ;
 scalar_t__ GV_PLEX_STRIPED ;
 int g_free (struct gv_plex*) ;
 struct gv_plex* gv_alloc_plex () ;
 scalar_t__ gv_plexorgi (char*) ;
 int gv_plexstatei (char*) ;
 scalar_t__ gv_sizespec (char*) ;
 int strcmp (char*,char*) ;
 int strlcpy (int ,char*,int) ;

struct gv_plex *
gv_new_plex(int max, char *token[])
{
 struct gv_plex *p;
 int j, errors;

 if (token[1] == ((void*)0) || *token[1] == '\0')
  return (((void*)0));

 p = gv_alloc_plex();
 if (p == ((void*)0))
  return (((void*)0));

 errors = 0;
 for (j = 1; j < max; j++) {
  if (!strcmp(token[j], "name")) {
   j++;
   if (j >= max) {
    errors++;
    break;
   }
   strlcpy(p->name, token[j], sizeof(p->name));
  } else if (!strcmp(token[j], "org")) {
   j++;
   if (j >= max) {
    errors++;
    break;
   }
   p->org = gv_plexorgi(token[j]);
   if ((p->org == GV_PLEX_RAID5) ||
       (p->org == GV_PLEX_STRIPED)) {
    j++;
    if (j >= max) {
     errors++;
     break;
    }
    p->stripesize = gv_sizespec(token[j]);
    if (p->stripesize == 0) {
     errors++;
     break;
    }
   }
  } else if (!strcmp(token[j], "state")) {
   j++;
   if (j >= max) {
    errors++;
    break;
   }
   p->state = gv_plexstatei(token[j]);
  } else if (!strcmp(token[j], "vol") ||
       !strcmp(token[j], "volume")) {
   j++;
   if (j >= max) {
    errors++;
    break;
   }
   strlcpy(p->volume, token[j], sizeof(p->volume));
  } else {
   errors++;
   break;
  }
 }

 if (errors) {
  g_free(p);
  return (((void*)0));
 }

 return (p);
}
