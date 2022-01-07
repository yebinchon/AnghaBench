
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_4__ {int desc; void* seg_size; void* seg_num; int cookie; } ;
typedef TYPE_1__ qls_mpid_seg_hdr_t ;


 int Q81_MPID_COOKIE ;
 int memcpy (int ,unsigned char*,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
qls_mpid_seg_hdr(qls_mpid_seg_hdr_t *seg_hdr, uint32_t seg_num,
 uint32_t seg_size, unsigned char *desc)
{
 memset(seg_hdr, 0, sizeof(qls_mpid_seg_hdr_t));

 seg_hdr->cookie = Q81_MPID_COOKIE;
 seg_hdr->seg_num = seg_num;
 seg_hdr->seg_size = seg_size;

 memcpy(seg_hdr->desc, desc, (sizeof(seg_hdr->desc))-1);

 return;
}
