
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_consumer {int dummy; } ;
typedef int off_t ;


 int g_write_data (struct g_consumer*,int ,void*,int) ;

int
g_use_g_write_data(void *devfd, off_t loc, void *buf, int size)
{

 return (g_write_data((struct g_consumer *)devfd, loc, buf, size));
}
