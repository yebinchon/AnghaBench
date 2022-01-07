
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_range_manager {int lock; int mm; } ;
struct ttm_mem_type_manager {struct ttm_range_manager* priv; } ;


 int MTX_DEF ;
 int M_TTM_RMAN ;
 int M_WAITOK ;
 int M_ZERO ;
 int drm_mm_init (int *,int ,unsigned long) ;
 int free (struct ttm_range_manager*,int ) ;
 struct ttm_range_manager* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static int ttm_bo_man_init(struct ttm_mem_type_manager *man,
      unsigned long p_size)
{
 struct ttm_range_manager *rman;
 int ret;

 rman = malloc(sizeof(*rman), M_TTM_RMAN, M_ZERO | M_WAITOK);
 ret = drm_mm_init(&rman->mm, 0, p_size);
 if (ret) {
  free(rman, M_TTM_RMAN);
  return ret;
 }

 mtx_init(&rman->lock, "ttmrman", ((void*)0), MTX_DEF);
 man->priv = rman;
 return 0;
}
