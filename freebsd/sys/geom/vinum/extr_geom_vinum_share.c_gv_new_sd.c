
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_sd {int size; scalar_t__ drive_offset; scalar_t__ plex_offset; int drive; int state; int plex; int name; } ;


 scalar_t__ GV_DATA_START ;
 int g_free (struct gv_sd*) ;
 struct gv_sd* gv_alloc_sd () ;
 int gv_sdstatei (char*) ;
 void* gv_sizespec (char*) ;
 int strcmp (char*,char*) ;
 int strlcpy (int ,char*,int) ;
 scalar_t__ strlen (int ) ;

struct gv_sd *
gv_new_sd(int max, char *token[])
{
 struct gv_sd *s;
 int j, errors;

 if (token[1] == ((void*)0) || *token[1] == '\0')
  return (((void*)0));

 s = gv_alloc_sd();
 if (s == ((void*)0))
  return (((void*)0));

 errors = 0;
 for (j = 1; j < max; j++) {
  if (!strcmp(token[j], "name")) {
   j++;
   if (j >= max) {
    errors++;
    break;
   }
   strlcpy(s->name, token[j], sizeof(s->name));
  } else if (!strcmp(token[j], "drive")) {
   j++;
   if (j >= max) {
    errors++;
    break;
   }
   strlcpy(s->drive, token[j], sizeof(s->drive));
  } else if (!strcmp(token[j], "plex")) {
   j++;
   if (j >= max) {
    errors++;
    break;
   }
   strlcpy(s->plex, token[j], sizeof(s->plex));
  } else if (!strcmp(token[j], "state")) {
   j++;
   if (j >= max) {
    errors++;
    break;
   }
   s->state = gv_sdstatei(token[j]);
  } else if (!strcmp(token[j], "len") ||
      !strcmp(token[j], "length")) {
   j++;
   if (j >= max) {
    errors++;
    break;
   }
   s->size = gv_sizespec(token[j]);
   if (s->size <= 0)
    s->size = -1;
  } else if (!strcmp(token[j], "driveoffset")) {
   j++;
   if (j >= max) {
    errors++;
    break;
   }
   s->drive_offset = gv_sizespec(token[j]);
   if (s->drive_offset != 0 &&
       s->drive_offset < GV_DATA_START) {
    errors++;
    break;
   }
  } else if (!strcmp(token[j], "plexoffset")) {
   j++;
   if (j >= max) {
    errors++;
    break;
   }
   s->plex_offset = gv_sizespec(token[j]);
   if (s->plex_offset < 0) {
    errors++;
    break;
   }
  } else {
   errors++;
   break;
  }
 }

 if (strlen(s->drive) == 0)
  errors++;

 if (errors) {
  g_free(s);
  return (((void*)0));
 }

 return (s);
}
