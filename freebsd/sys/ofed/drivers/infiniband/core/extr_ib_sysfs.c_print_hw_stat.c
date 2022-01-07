
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_hw_stats {scalar_t__* value; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,unsigned long long) ;

__attribute__((used)) static ssize_t print_hw_stat(struct rdma_hw_stats *stats, int index, char *buf)
{
 return sprintf(buf, "%llu\n", (unsigned long long)stats->value[index]);
}
