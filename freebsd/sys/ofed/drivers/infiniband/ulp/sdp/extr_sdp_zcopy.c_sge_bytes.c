
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_sge {scalar_t__ length; } ;



__attribute__((used)) static inline int sge_bytes(struct ib_sge *sge, int sge_cnt)
{
 int bytes = 0;

 while (sge_cnt > 0) {
  bytes += sge->length;
  sge++;
  sge_cnt--;
 }

 return bytes;
}
