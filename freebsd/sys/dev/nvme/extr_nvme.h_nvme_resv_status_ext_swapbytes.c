
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct nvme_resv_status_ext {int* regctl; TYPE_1__* ctrlr; int gen; } ;
typedef int s ;
struct TYPE_2__ {scalar_t__ hostid; int rkey; int ctrlr_id; } ;


 size_t MIN (size_t,size_t) ;
 int le16toh (int ) ;
 int le32toh (int ) ;
 int le64toh (int ) ;
 int nvme_le128toh (void*) ;

__attribute__((used)) static inline
void nvme_resv_status_ext_swapbytes(struct nvme_resv_status_ext *s, size_t size)
{
 u_int i, n;

 s->gen = le32toh(s->gen);
 n = (s->regctl[1] << 8) | s->regctl[0];
 n = MIN(n, (size - sizeof(s)) / sizeof(s->ctrlr[0]));
 for (i = 0; i < n; i++) {
  s->ctrlr[i].ctrlr_id = le16toh(s->ctrlr[i].ctrlr_id);
  s->ctrlr[i].rkey = le64toh(s->ctrlr[i].rkey);
  nvme_le128toh((void *)s->ctrlr[i].hostid);
 }
}
