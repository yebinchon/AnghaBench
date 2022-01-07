
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_res_notification_page {int nsid; int log_page_count; } ;


 int le32toh (int ) ;
 int le64toh (int ) ;

__attribute__((used)) static inline
void nvme_res_notification_page_swapbytes(struct nvme_res_notification_page *s)
{
 s->log_page_count = le64toh(s->log_page_count);
 s->nsid = le32toh(s->nsid);
}
