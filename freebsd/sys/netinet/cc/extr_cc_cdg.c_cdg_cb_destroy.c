
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdiff_sample {int dummy; } ;
struct cdg {int qdiffmax_q; int qdiffmin_q; } ;
struct cc_var {struct cdg* cc_data; } ;


 int M_CDG ;
 struct qdiff_sample* STAILQ_FIRST (int *) ;
 struct qdiff_sample* STAILQ_NEXT (struct qdiff_sample*,int ) ;
 int free (struct cdg*,int ) ;
 int qdiff_lnk ;
 int qdiffsample_zone ;
 int uma_zfree (int ,struct qdiff_sample*) ;

__attribute__((used)) static void
cdg_cb_destroy(struct cc_var *ccv)
{
 struct cdg *cdg_data;
 struct qdiff_sample *qds, *qds_n;

 cdg_data = ccv->cc_data;

 qds = STAILQ_FIRST(&cdg_data->qdiffmin_q);
 while (qds != ((void*)0)) {
  qds_n = STAILQ_NEXT(qds, qdiff_lnk);
  uma_zfree(qdiffsample_zone,qds);
  qds = qds_n;
 }

 qds = STAILQ_FIRST(&cdg_data->qdiffmax_q);
 while (qds != ((void*)0)) {
  qds_n = STAILQ_NEXT(qds, qdiff_lnk);
  uma_zfree(qdiffsample_zone,qds);
  qds = qds_n;
 }

 free(ccv->cc_data, M_CDG);
}
