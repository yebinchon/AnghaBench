
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct intr_vector {size_t iv_vec; } ;


 int MAX_STRAY_LOG ;
 int* intr_stray_count ;
 int printf (char*,int,...) ;

__attribute__((used)) static void
intr_stray_vector(void *cookie)
{
 struct intr_vector *iv;
 u_int vec;

 iv = cookie;
 vec = iv->iv_vec;
 if (intr_stray_count[vec] < MAX_STRAY_LOG) {
  printf("stray vector interrupt %d\n", vec);
  intr_stray_count[vec]++;
  if (intr_stray_count[vec] >= MAX_STRAY_LOG)
   printf("got %d stray vector interrupt %d's: not "
       "logging anymore\n", MAX_STRAY_LOG, vec);
 }
}
