
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int des_key_schedule ;


 int ENOMEM ;
 int * KMALLOC (int,int ,int) ;
 int M_CRYPTO_DATA ;
 int M_NOWAIT ;
 int M_ZERO ;
 int des_set_key (int const*,int ) ;

__attribute__((used)) static int
des1_setkey(u_int8_t **sched, const u_int8_t *key, int len)
{
 des_key_schedule *p;
 int err;

 p = KMALLOC(sizeof (des_key_schedule),
  M_CRYPTO_DATA, M_NOWAIT|M_ZERO);
 if (p != ((void*)0)) {
  des_set_key(key, p[0]);
  err = 0;
 } else
  err = ENOMEM;
 *sched = (u_int8_t *) p;
 return err;
}
