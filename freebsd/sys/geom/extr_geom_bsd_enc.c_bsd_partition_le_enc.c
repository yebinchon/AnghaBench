
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct partition {int p_cpg; int p_frag; int p_fstype; int p_fsize; int p_offset; int p_size; } ;


 int le16enc (int *,int ) ;
 int le32enc (int *,int ) ;

void
bsd_partition_le_enc(u_char *ptr, struct partition *d)
{
 le32enc(ptr + 0, d->p_size);
 le32enc(ptr + 4, d->p_offset);
 le32enc(ptr + 8, d->p_fsize);
 ptr[12] = d->p_fstype;
 ptr[13] = d->p_frag;
 le16enc(ptr + 14, d->p_cpg);
}
