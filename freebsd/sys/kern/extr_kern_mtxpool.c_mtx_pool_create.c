
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx_pool {int dummy; } ;
struct mtx {int dummy; } ;


 int M_MTXPOOL ;
 int M_WAITOK ;
 int M_ZERO ;
 struct mtx_pool* malloc (int,int ,int) ;
 int mtx_pool_initialize (struct mtx_pool*,char const*,int,int) ;
 int powerof2 (int) ;
 int printf (char*,char const*) ;

struct mtx_pool *
mtx_pool_create(const char *mtx_name, int pool_size, int opts)
{
 struct mtx_pool *pool;

 if (pool_size <= 0 || !powerof2(pool_size)) {
  printf("WARNING: %s pool size is not a power of 2.\n",
      mtx_name);
  pool_size = 128;
 }
 pool = malloc(sizeof (struct mtx_pool) +
     ((pool_size - 1) * sizeof (struct mtx)),
     M_MTXPOOL, M_WAITOK | M_ZERO);
 mtx_pool_initialize(pool, mtx_name, pool_size, opts);
 return pool;
}
