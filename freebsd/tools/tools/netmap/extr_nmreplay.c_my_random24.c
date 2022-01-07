
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int random () ;

__attribute__((used)) static inline uint64_t
my_random24(void)
{
 return random() & ((1<<24) - 1);
}
