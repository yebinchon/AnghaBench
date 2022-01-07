
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_firmware_page {int * revision; } ;


 int le64toh (int ) ;

__attribute__((used)) static inline
void nvme_firmware_page_swapbytes(struct nvme_firmware_page *s)
{
 int i;

 for (i = 0; i < 7; i++)
  s->revision[i] = le64toh(s->revision[i]);
}
