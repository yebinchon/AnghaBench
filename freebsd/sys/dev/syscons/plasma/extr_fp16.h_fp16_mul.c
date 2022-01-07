
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fp16_t ;



__attribute__((used)) static inline fp16_t
fp16_mul(fp16_t a, fp16_t b)
{

 return (a * b >> 16);
}
