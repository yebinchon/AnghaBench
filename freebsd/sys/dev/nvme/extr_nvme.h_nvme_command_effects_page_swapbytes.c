
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_command_effects_page {void** iocs; void** acs; } ;


 void* le32toh (void*) ;

__attribute__((used)) static inline
void nvme_command_effects_page_swapbytes(struct nvme_command_effects_page *s)
{
 int i;

 for (i = 0; i < 256; i++)
  s->acs[i] = le32toh(s->acs[i]);
 for (i = 0; i < 256; i++)
  s->iocs[i] = le32toh(s->iocs[i]);
}
