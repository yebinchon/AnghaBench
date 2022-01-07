
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_llvm_vg {int vg_pvs; } ;
struct g_llvm_pv {scalar_t__ pv_start; scalar_t__ pv_count; int pv_uuid; int pv_name; struct g_llvm_vg* pv_vg; } ;


 int EINVAL ;
 int ENOMEM ;
 int GRAB_INT (char*,char*,char*,scalar_t__) ;
 int GRAB_STR (char*,char*,char*,int ,int) ;
 int G_LLVM_DEBUG (int,char*,int ,int ) ;
 int LIST_INSERT_HEAD (int *,struct g_llvm_pv*,int ) ;
 int M_GLLVM ;
 int M_NOWAIT ;
 int M_ZERO ;
 int SPLIT (char*,char*,char*) ;
 int free (struct g_llvm_pv*,int ) ;
 size_t llvm_grab_name (int ,char*) ;
 struct g_llvm_pv* malloc (int,int ,int) ;
 int pv_next ;
 char* strsep (char**,char*) ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static int
llvm_textconf_decode_pv(char **buf, char *tok, struct g_llvm_vg *vg)
{
 struct g_llvm_pv *pv;
 char *v;
 size_t len;

 if (*buf == ((void*)0) || **buf == '\0')
  return (EINVAL);

 pv = malloc(sizeof(*pv), M_GLLVM, M_NOWAIT|M_ZERO);
 if (pv == ((void*)0))
  return (ENOMEM);

 pv->pv_vg = vg;
 len = 0;
 if (tok == ((void*)0))
  goto bad;
 len = llvm_grab_name(pv->pv_name, tok);
 if (len == 0)
  goto bad;

 while ((tok = strsep(buf, "\n")) != ((void*)0)) {
  if (strstr(tok, "{"))
   goto bad;

  if (strstr(tok, "}"))
   break;


  if (strstr(tok, "=")) {
   SPLIT(v, tok, "=");
   GRAB_STR("id", v, tok, pv->pv_uuid, sizeof(pv->pv_uuid));
   GRAB_INT("pe_start", v, tok, pv->pv_start);
   GRAB_INT("pe_count", v, tok, pv->pv_count);
   continue;
  }
 }
 if (tok == ((void*)0))
  goto bad;

 if (pv->pv_count == 0)
  goto bad;

 LIST_INSERT_HEAD(&vg->vg_pvs, pv, pv_next);
 G_LLVM_DEBUG(3, "pv: name=%s uuid=%s", pv->pv_name, pv->pv_uuid);

 return (0);
bad:
 free(pv, M_GLLVM);
 return (-1);
}
