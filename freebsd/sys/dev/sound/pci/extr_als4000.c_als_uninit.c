
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int dummy; } ;


 int ALS_GCR_MISC ;
 int als_gcr_wr (struct sc_info*,int ,int ) ;

__attribute__((used)) static void
als_uninit(struct sc_info *sc)
{

 als_gcr_wr(sc, ALS_GCR_MISC, 0);
}
