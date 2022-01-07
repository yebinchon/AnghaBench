
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_sge {scalar_t__ length; } ;



__attribute__((used)) static int
sge_data_len(struct ib_sge *sg_list, int num_sge)
{
 int i, len = 0;
 for (i = 0; i < num_sge; i++)
  len += sg_list[i].length;
 return len;
}
