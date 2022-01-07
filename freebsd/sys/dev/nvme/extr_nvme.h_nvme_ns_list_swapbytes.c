
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ns_list {int * ns; } ;


 int le32toh (int ) ;

__attribute__((used)) static inline
void nvme_ns_list_swapbytes(struct nvme_ns_list *s)
{
 int i;

 for (i = 0; i < 1024; i++)
  s->ns[i] = le32toh(s->ns[i]);
}
