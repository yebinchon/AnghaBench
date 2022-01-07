
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udf_dirstream {scalar_t__ offset; size_t off; scalar_t__ fsize; int error; scalar_t__ size; int fid_fragment; scalar_t__ this_off; int * buf; struct fileid_desc* data; TYPE_1__* udfmp; int * bp; int node; } ;
struct fileid_desc {scalar_t__ l_fi; int l_iu; } ;
struct TYPE_2__ {int bsize; } ;


 int EINVAL ;
 int EIO ;
 int M_UDFFID ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ UDF_FID_SIZE ;
 int bcopy (struct fileid_desc*,int *,int) ;
 int brelse (int *) ;
 int free (int *,int ) ;
 scalar_t__ le16toh (int ) ;
 int * malloc (int,int ,int) ;
 int printf (char*) ;
 int udf_readatoffset (int ,scalar_t__*,scalar_t__,int **,struct fileid_desc**) ;

__attribute__((used)) static struct fileid_desc *
udf_getfid(struct udf_dirstream *ds)
{
 struct fileid_desc *fid;
 int error, frag_size = 0, total_fid_size;


 if (ds->offset + ds->off >= ds->fsize) {
  ds->error = 0;
  return (((void*)0));
 }


 if (ds->off == 0) {
  ds->size = 0;
  error = udf_readatoffset(ds->node, &ds->size, ds->offset,
      &ds->bp, &ds->data);
  if (error) {
   ds->error = error;
   if (ds->bp != ((void*)0))
    brelse(ds->bp);
   return (((void*)0));
  }
 }





 if (ds->fid_fragment && ds->buf != ((void*)0)) {
  ds->fid_fragment = 0;
  free(ds->buf, M_UDFFID);
 }

 fid = (struct fileid_desc*)&ds->data[ds->off];






 if (ds->off + UDF_FID_SIZE > ds->size ||
     ds->off + le16toh(fid->l_iu) + fid->l_fi + UDF_FID_SIZE > ds->size){


  frag_size = ds->size - ds->off;
  if (frag_size >= ds->udfmp->bsize) {
   printf("udf: invalid FID fragment\n");
   ds->error = EINVAL;
   return (((void*)0));
  }





  ds->buf = malloc(ds->udfmp->bsize, M_UDFFID,
       M_WAITOK | M_ZERO);
  bcopy(fid, ds->buf, frag_size);


  fid = (struct fileid_desc*)ds->buf;

  if (ds->bp != ((void*)0))
   brelse(ds->bp);


  ds->offset += ds->size;
  ds->size = 0;
  error = udf_readatoffset(ds->node, &ds->size, ds->offset,
      &ds->bp, &ds->data);
  if (error) {
   ds->error = error;
   return (((void*)0));
  }





  if (frag_size < UDF_FID_SIZE)
   bcopy(ds->data, &ds->buf[frag_size],
       UDF_FID_SIZE - frag_size);






  total_fid_size = UDF_FID_SIZE + le16toh(fid->l_iu) + fid->l_fi;
  if (total_fid_size > ds->udfmp->bsize) {
   printf("udf: invalid FID\n");
   ds->error = EIO;
   return (((void*)0));
  }
  bcopy(ds->data, &ds->buf[frag_size],
      total_fid_size - frag_size);

  ds->fid_fragment = 1;
 } else {
  total_fid_size = le16toh(fid->l_iu) + fid->l_fi + UDF_FID_SIZE;
 }





 ds->this_off = ds->offset + ds->off;
 if (!ds->fid_fragment) {
  ds->off += (total_fid_size + 3) & ~0x03;
 } else {
  ds->off = (total_fid_size - frag_size + 3) & ~0x03;
 }

 return (fid);
}
