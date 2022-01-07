
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udf_dirstream {int * buf; scalar_t__ fid_fragment; int * bp; } ;


 int M_UDFFID ;
 int brelse (int *) ;
 int free (int *,int ) ;
 int udf_zone_ds ;
 int uma_zfree (int ,struct udf_dirstream*) ;

__attribute__((used)) static void
udf_closedir(struct udf_dirstream *ds)
{

 if (ds->bp != ((void*)0))
  brelse(ds->bp);

 if (ds->fid_fragment && ds->buf != ((void*)0))
  free(ds->buf, M_UDFFID);

 uma_zfree(udf_zone_ds, ds);
}
