
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_t ;
struct timeval {int dummy; } ;
typedef int au_event_t ;
typedef int au_emod_t ;


 int * au_to_header32_tm (int,int ,int ,struct timeval) ;
 int gettimeofday (struct timeval*,int *) ;

token_t *
au_to_header32(int rec_size, au_event_t e_type, au_emod_t e_mod)
{
 struct timeval tm;

 if (gettimeofday(&tm, ((void*)0)) == -1)
  return (((void*)0));
 return (au_to_header32_tm(rec_size, e_type, e_mod, tm));
}
