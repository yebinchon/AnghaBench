
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_error_information_entry {void* ttsi; void* csi; int nsid; void* lba; void* error_location; void* status; void* cid; void* sqid; void* error_count; } ;


 void* le16toh (void*) ;
 int le32toh (int ) ;
 void* le64toh (void*) ;

__attribute__((used)) static inline
void nvme_error_information_entry_swapbytes(struct nvme_error_information_entry *s)
{

 s->error_count = le64toh(s->error_count);
 s->sqid = le16toh(s->sqid);
 s->cid = le16toh(s->cid);
 s->status = le16toh(s->status);
 s->error_location = le16toh(s->error_location);
 s->lba = le64toh(s->lba);
 s->nsid = le32toh(s->nsid);
 s->csi = le64toh(s->csi);
 s->ttsi = le16toh(s->ttsi);
}
