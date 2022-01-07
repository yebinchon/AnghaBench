
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_completion {void* status; void* sqid; void* sqhd; int cdw0; } ;


 void* le16toh (void*) ;
 int le32toh (int ) ;

__attribute__((used)) static inline
void nvme_completion_swapbytes(struct nvme_completion *s)
{

 s->cdw0 = le32toh(s->cdw0);

 s->sqhd = le16toh(s->sqhd);
 s->sqid = le16toh(s->sqid);

 s->status = le16toh(s->status);
}
