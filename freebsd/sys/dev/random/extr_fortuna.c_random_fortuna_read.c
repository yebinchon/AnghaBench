
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int newkey ;
struct TYPE_2__ {int fs_key; int fs_counter; } ;


 int FORTUNA_LOCKED ;
 int KASSERT (int,char*) ;
 int RANDOM_KEYSIZE ;
 int RANDOM_RESEED_ASSERT_LOCK_NOT_OWNED () ;
 int RANDOM_RESEED_LOCK () ;
 int explicit_bzero (int *,int) ;
 scalar_t__ fortuna_concurrent_read ;
 TYPE_1__ fortuna_state ;
 int random_fortuna_genbytes (int *,size_t,int *,int *,int *,int ) ;
 int random_fortuna_read_concurrent (int *,size_t,int *) ;
 int uint128_is_zero (int ) ;

void
random_fortuna_read(uint8_t *buf, size_t bytecount)
{
 uint8_t newkey[RANDOM_KEYSIZE];

 if (fortuna_concurrent_read) {
  random_fortuna_read_concurrent(buf, bytecount, newkey);
  goto out;
 }

 RANDOM_RESEED_LOCK();
 KASSERT(!uint128_is_zero(fortuna_state.fs_counter), ("FS&K: C != 0"));

 random_fortuna_genbytes(buf, bytecount, newkey,
     &fortuna_state.fs_counter, &fortuna_state.fs_key, FORTUNA_LOCKED);

 RANDOM_RESEED_ASSERT_LOCK_NOT_OWNED();

out:
 explicit_bzero(newkey, sizeof(newkey));
}
