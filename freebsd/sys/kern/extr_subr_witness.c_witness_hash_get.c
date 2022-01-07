
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct witness {struct witness* w_hash_next; int w_name; } ;
struct TYPE_2__ {size_t wh_size; struct witness** wh_array; } ;


 int MA_OWNED ;
 int MPASS (int ) ;
 int mtx_assert (int *,int ) ;
 scalar_t__ strcmp (int ,char const*) ;
 TYPE_1__ w_hash ;
 int w_mtx ;
 scalar_t__ witness_cold ;
 size_t witness_hash_djb2 (char const*,int ) ;

__attribute__((used)) static struct witness *
witness_hash_get(const char *key)
{
 struct witness *w;
 uint32_t hash;

 MPASS(key != ((void*)0));
 if (witness_cold == 0)
  mtx_assert(&w_mtx, MA_OWNED);
 hash = witness_hash_djb2(key, 0) % w_hash.wh_size;
 w = w_hash.wh_array[hash];
 while (w != ((void*)0)) {
  if (strcmp(w->w_name, key) == 0)
   goto out;
  w = w->w_hash_next;
 }

out:
 return (w);
}
