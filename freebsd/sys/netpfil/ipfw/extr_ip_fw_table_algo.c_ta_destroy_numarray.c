
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_info {int dummy; } ;
struct numarray_cfg {struct numarray_cfg* main_ptr; } ;


 int M_IPFW ;
 int free (struct numarray_cfg*,int ) ;

__attribute__((used)) static void
ta_destroy_numarray(void *ta_state, struct table_info *ti)
{
 struct numarray_cfg *cfg;

 cfg = (struct numarray_cfg *)ta_state;

 if (cfg->main_ptr != ((void*)0))
  free(cfg->main_ptr, M_IPFW);

 free(cfg, M_IPFW);
}
