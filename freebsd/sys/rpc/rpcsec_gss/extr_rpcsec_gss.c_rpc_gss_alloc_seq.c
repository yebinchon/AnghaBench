
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rpc_gss_data {int gd_lock; int gd_seq; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static uint32_t
rpc_gss_alloc_seq(struct rpc_gss_data *gd)
{
 uint32_t seq;

 mtx_lock(&gd->gd_lock);
 seq = gd->gd_seq;
 gd->gd_seq++;
 mtx_unlock(&gd->gd_lock);

 return (seq);
}
