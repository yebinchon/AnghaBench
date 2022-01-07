
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_llvm_vg {int vg_lvs; } ;
struct g_llvm_segment {scalar_t__ lv_sgcount; scalar_t__ lv_numsegs; int lv_segs; int lv_uuid; int lv_name; void* lv_firstsg; struct g_llvm_vg* lv_vg; } ;
struct g_llvm_lv {scalar_t__ lv_sgcount; scalar_t__ lv_numsegs; int lv_segs; int lv_uuid; int lv_name; void* lv_firstsg; struct g_llvm_vg* lv_vg; } ;


 int EINVAL ;
 int ENOMEM ;
 int GRAB_INT (char*,char*,char*,scalar_t__) ;
 int GRAB_STR (char*,char*,char*,int ,int) ;
 int G_LLVM_DEBUG (int,char*,int ,int ) ;
 void* LIST_FIRST (int *) ;
 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,struct g_llvm_segment*,int ) ;
 int LIST_REMOVE (struct g_llvm_segment*,int ) ;
 int M_GLLVM ;
 int M_NOWAIT ;
 int M_ZERO ;
 int SPLIT (char*,char*,char*) ;
 int free (struct g_llvm_segment*,int ) ;
 size_t llvm_grab_name (int ,char*) ;
 int llvm_textconf_decode_sg (char**,char*,struct g_llvm_segment*) ;
 int lv_next ;
 struct g_llvm_segment* malloc (int,int ,int) ;
 int sg_next ;
 char* strsep (char**,char*) ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static int
llvm_textconf_decode_lv(char **buf, char *tok, struct g_llvm_vg *vg)
{
 struct g_llvm_lv *lv;
 struct g_llvm_segment *sg;
 char *v;
 size_t len;

 if (*buf == ((void*)0) || **buf == '\0')
  return (EINVAL);

 lv = malloc(sizeof(*lv), M_GLLVM, M_NOWAIT|M_ZERO);
 if (lv == ((void*)0))
  return (ENOMEM);

 lv->lv_vg = vg;
 LIST_INIT(&lv->lv_segs);

 if (tok == ((void*)0))
  goto bad;
 len = llvm_grab_name(lv->lv_name, tok);
 if (len == 0)
  goto bad;

 while ((tok = strsep(buf, "\n")) != ((void*)0)) {
  if (strstr(tok, "{")) {
   if (strstr(tok, "segment")) {
    llvm_textconf_decode_sg(buf, tok, lv);
    continue;
   } else

    goto bad;
  }

  if (strstr(tok, "}"))
   break;


  if (strstr(tok, "=")) {
   SPLIT(v, tok, "=");
   GRAB_STR("id", v, tok, lv->lv_uuid, sizeof(lv->lv_uuid));
   GRAB_INT("segment_count", v, tok, lv->lv_sgcount);
   continue;
  }
 }
 if (tok == ((void*)0))
  goto bad;
 if (lv->lv_sgcount == 0 || lv->lv_sgcount != lv->lv_numsegs)

  goto bad;


 lv->lv_firstsg = LIST_FIRST(&lv->lv_segs);
 LIST_INSERT_HEAD(&vg->vg_lvs, lv, lv_next);
 G_LLVM_DEBUG(3, "lv: name=%s uuid=%s", lv->lv_name, lv->lv_uuid);

 return (0);
bad:
 while ((sg = LIST_FIRST(&lv->lv_segs)) != ((void*)0)) {
  LIST_REMOVE(sg, sg_next);
  free(sg, M_GLLVM);
 }
 free(lv, M_GLLVM);
 return (-1);
}
