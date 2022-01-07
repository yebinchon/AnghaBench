
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ATF_REQUIRE_MSG (int,char*) ;
 scalar_t__ atomic_load_64 (int *) ;
 int atomic_store_64 (int *,int ) ;
 int sleep (int ) ;

__attribute__((used)) static void *
thread_test_helper(void *ptr)
{
 uint64_t *buf = ptr;

 atomic_store_64(&buf[0], 0);
 sleep(0);
 ATF_REQUIRE_MSG(atomic_load_64(&buf[0]) == 0,
     "Records changed in blocked thread");

 return (((void*)0));
}
