
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_llvm_segment {int sg_start; int sg_count; int sg_end; int sg_pvstart; int sg_pvname; } ;
struct g_llvm_lv {int lv_extentcount; int lv_segs; int lv_numsegs; } ;


 int EINVAL ;
 int ENOMEM ;
 int GRAB_INT (char*,char*,char*,int) ;
 int LIST_INSERT_HEAD (int *,struct g_llvm_segment*,int ) ;
 int M_GLLVM ;
 int M_NOWAIT ;
 int M_ZERO ;
 int SPLIT (char*,char*,char*) ;
 int free (struct g_llvm_segment*,int ) ;
 struct g_llvm_segment* malloc (int,int ,int) ;
 int sg_next ;
 scalar_t__ strcmp (char*,char*) ;
 int strncpy (int ,char*,int) ;
 char* strsep (char**,char*) ;
 scalar_t__ strstr (char*,char*) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static int
llvm_textconf_decode_sg(char **buf, char *tok, struct g_llvm_lv *lv)
{
 struct g_llvm_segment *sg;
 char *v;
 int count = 0;

 if (*buf == ((void*)0) || **buf == '\0')
  return (EINVAL);

 sg = malloc(sizeof(*sg), M_GLLVM, M_NOWAIT|M_ZERO);
 if (sg == ((void*)0))
  return (ENOMEM);

 while ((tok = strsep(buf, "\n")) != ((void*)0)) {

  if (strstr(tok, "stripe_count")) {
   SPLIT(v, tok, "=");
   GRAB_INT("stripe_count", v, tok, count);
   if (count != 1)
    goto bad;
  }

  if (strstr(tok, "{"))
   goto bad;

  if (strstr(tok, "}"))
   break;

  if (strcmp(tok, "stripes = [") == 0) {
   tok = strsep(buf, "\n");
   if (tok == ((void*)0))
    goto bad;

   strsep(&tok, "\"");
   if (tok == ((void*)0))
    goto bad;
   v = strsep(&tok, "\"");
   if (tok == ((void*)0))
    goto bad;
   strncpy(sg->sg_pvname, v, sizeof(sg->sg_pvname));
   if (*tok != ',')
    goto bad;
   tok++;

   sg->sg_pvstart = strtol(tok, &v, 10);
   if (v == tok)

    goto bad;

   continue;
  }


  if (strstr(tok, "=")) {
   SPLIT(v, tok, "=");
   GRAB_INT("start_extent", v, tok, sg->sg_start);
   GRAB_INT("extent_count", v, tok, sg->sg_count);
   continue;
  }
 }
 if (tok == ((void*)0))
  goto bad;

 if (count != 1 || sg->sg_count == 0)
  goto bad;

 sg->sg_end = sg->sg_start + sg->sg_count - 1;
 lv->lv_numsegs++;
 lv->lv_extentcount += sg->sg_count;
 LIST_INSERT_HEAD(&lv->lv_segs, sg, sg_next);

 return (0);
bad:
 free(sg, M_GLLVM);
 return (-1);
}
