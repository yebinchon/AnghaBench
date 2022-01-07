
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_sanitize_status_page {void* etfcewnd; void* etfbewnd; void* etfownd; void* etfce; void* etfbe; void* etfo; void* scdw10; void* sstat; void* sprog; } ;


 void* le16toh (void*) ;
 void* le32toh (void*) ;

__attribute__((used)) static inline
void nvme_sanitize_status_page_swapbytes(struct nvme_sanitize_status_page *s)
{
 s->sprog = le16toh(s->sprog);
 s->sstat = le16toh(s->sstat);
 s->scdw10 = le32toh(s->scdw10);
 s->etfo = le32toh(s->etfo);
 s->etfbe = le32toh(s->etfbe);
 s->etfce = le32toh(s->etfce);
 s->etfownd = le32toh(s->etfownd);
 s->etfbewnd = le32toh(s->etfbewnd);
 s->etfcewnd = le32toh(s->etfcewnd);
}
