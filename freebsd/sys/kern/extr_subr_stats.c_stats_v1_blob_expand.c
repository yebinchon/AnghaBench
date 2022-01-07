
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct voistat {int id; int voistatmaxid; int stats_off; int stype; int data_off; } ;
struct voi {int id; int voistatmaxid; int stats_off; int stype; int data_off; } ;
struct statsblobv1 {scalar_t__ cursz; scalar_t__ maxsz; scalar_t__ statsdata_off; scalar_t__ stats_off; struct voistat* vois; } ;


 struct voistat* BLOB_OFFSET (struct statsblobv1*,scalar_t__) ;
 int EFBIG ;
 int EINVAL ;
 int ENOMEM ;
 int KASSERT (int,char*) ;
 int M_ZERO ;
 int NVOIS (struct statsblobv1*) ;
 int SB_V1_MAXSZ ;
 int memmove (struct voistat*,struct voistat*,scalar_t__) ;
 int memset (struct voistat*,char,int) ;
 struct statsblobv1* stats_realloc (struct statsblobv1*,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static int
stats_v1_blob_expand(struct statsblobv1 **sbpp, int newvoibytes,
    int newvoistatbytes, int newvoistatdatabytes)
{
 struct statsblobv1 *sb;
 struct voi *tmpvoi;
 struct voistat *tmpvoistat, *voistat_array;
 int error, i, idxnewvois, idxnewvoistats, nbytes, nvoistats;

 KASSERT(newvoibytes % sizeof(struct voi) == 0,
     ("Bad newvoibytes %d", newvoibytes));
 KASSERT(newvoistatbytes % sizeof(struct voistat) == 0,
     ("Bad newvoistatbytes %d", newvoistatbytes));

 error = ((newvoibytes % sizeof(struct voi) == 0) &&
     (newvoistatbytes % sizeof(struct voistat) == 0)) ? 0 : EINVAL;
 sb = *sbpp;
 nbytes = newvoibytes + newvoistatbytes + newvoistatdatabytes;





 if (!error && ((((int)sb->cursz) + nbytes) > SB_V1_MAXSZ))
  error = EFBIG;

 if (!error && (sb->cursz + nbytes > sb->maxsz)) {

  sb = stats_realloc(sb, sb->maxsz, sb->cursz + nbytes, M_ZERO);
  if (sb != ((void*)0)) {
   sb->maxsz = sb->cursz + nbytes;
   *sbpp = sb;
  } else
      error = ENOMEM;
 }

 if (!error) {






  memmove(BLOB_OFFSET(sb, sb->statsdata_off + nbytes),
      BLOB_OFFSET(sb, sb->statsdata_off),
      sb->cursz - sb->statsdata_off);
  memmove(BLOB_OFFSET(sb, sb->stats_off + newvoibytes +
      newvoistatbytes), BLOB_OFFSET(sb, sb->stats_off),
      sb->statsdata_off - sb->stats_off);


  idxnewvois = NVOIS(sb);
  idxnewvoistats = (newvoistatbytes / sizeof(struct voistat)) - 1;


  sb->cursz += nbytes;
  sb->stats_off += newvoibytes;
  sb->statsdata_off += newvoibytes + newvoistatbytes;


  memset(&sb->vois[idxnewvois], '\0', newvoibytes);
  memset(BLOB_OFFSET(sb, sb->stats_off), '\0',
      newvoistatbytes);
  memset(BLOB_OFFSET(sb, sb->statsdata_off), '\0',
      newvoistatdatabytes);


  for (i = 0; i < NVOIS(sb); i++) {
   tmpvoi = &sb->vois[i];
   if (i >= idxnewvois) {
    tmpvoi->id = tmpvoi->voistatmaxid = -1;
   } else if (tmpvoi->id > -1) {
    tmpvoi->stats_off += newvoibytes +
        newvoistatbytes;
   }
  }


  nvoistats = (sb->statsdata_off - sb->stats_off) /
      sizeof(struct voistat);
  voistat_array = BLOB_OFFSET(sb, sb->stats_off);
  for (i = 0; i < nvoistats; i++) {
   tmpvoistat = &voistat_array[i];
   if (i <= idxnewvoistats) {
    tmpvoistat->stype = -1;
   } else if (tmpvoistat->stype > -1) {
    tmpvoistat->data_off += nbytes;
   }
  }
 }

 return (error);
}
