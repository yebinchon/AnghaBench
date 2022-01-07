
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct vnode {int dummy; } ;
struct udf_node {struct file_entry* fentry; struct vnode* i_vnode; struct udf_mnt* udfmp; } ;
struct udf_mnt {int bmask; } ;
struct file_entry {int l_ad; int l_ea; int * data; } ;
struct buf {int * b_data; } ;
typedef int off_t ;
typedef int daddr_t ;


 scalar_t__ MAXBSIZE ;
 int NOCRED ;
 int UDF_INVALID_BMAP ;
 int blkoff (struct udf_mnt*,int) ;
 int bread (struct vnode*,int ,int,int ,struct buf**) ;
 int lblkno (struct udf_mnt*,int) ;
 size_t le32toh (int ) ;
 int min (int,scalar_t__) ;
 int printf (char*,int) ;
 int udf_bmap_internal (struct udf_node*,int,int *,int*) ;

__attribute__((used)) static int
udf_readatoffset(struct udf_node *node, int *size, off_t offset,
    struct buf **bp, uint8_t **data)
{
 struct udf_mnt *udfmp = node->udfmp;
 struct vnode *vp = node->i_vnode;
 struct file_entry *fentry;
 struct buf *bp1;
 uint32_t max_size;
 daddr_t sector;
 off_t off;
 int adj_size;
 int error;





 error = udf_bmap_internal(node, offset, &sector, &max_size);
 if (error == UDF_INVALID_BMAP) {




  fentry = node->fentry;
  *data = &fentry->data[le32toh(fentry->l_ea)];
  *size = le32toh(fentry->l_ad);
  if (offset >= *size)
   *size = 0;
  else {
   *data += offset;
   *size -= offset;
  }
  return (0);
 } else if (error != 0) {
  return (error);
 }


 if (*size == 0 || *size > max_size)
  *size = max_size;







 off = blkoff(udfmp, offset);
 *size = min(*size, MAXBSIZE - off);
 adj_size = (*size + off + udfmp->bmask) & ~udfmp->bmask;
 *bp = ((void*)0);
 if ((error = bread(vp, lblkno(udfmp, offset), adj_size, NOCRED, bp))) {
  printf("warning: udf_readlblks returned error %d\n", error);

  return (error);
 }

 bp1 = *bp;
 *data = (uint8_t *)&bp1->b_data[offset & udfmp->bmask];
 return (0);
}
