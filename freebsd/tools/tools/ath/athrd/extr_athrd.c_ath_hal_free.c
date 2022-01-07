
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void free (void*) ;

void
ath_hal_free(void* p)
{
 return free(p);
}
