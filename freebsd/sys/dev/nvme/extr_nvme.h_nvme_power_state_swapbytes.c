
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_power_state {void* actp; void* idlp; void* exlat; void* enlat; void* mp; } ;


 void* le16toh (void*) ;
 void* le32toh (void*) ;

__attribute__((used)) static inline
void nvme_power_state_swapbytes(struct nvme_power_state *s)
{

 s->mp = le16toh(s->mp);
 s->enlat = le32toh(s->enlat);
 s->exlat = le32toh(s->exlat);
 s->idlp = le16toh(s->idlp);
 s->actp = le16toh(s->actp);
}
