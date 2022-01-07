
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef size_t u_long ;


 int EPERM ;
 int * LIST_FIRST (int *) ;
 int MFC_LOCK () ;
 int MFC_UNLOCK () ;
 int * V_mfchashtbl ;
 int V_mrt_api_config ;
 scalar_t__ V_numvifs ;
 scalar_t__ V_pim_assert_enabled ;
 size_t mfchashsize ;
 int mrt_api_support ;

int
set_api_config(uint32_t *apival)
{
    u_long i;
    if (V_numvifs > 0) {
 *apival = 0;
 return EPERM;
    }
    if (V_pim_assert_enabled) {
 *apival = 0;
 return EPERM;
    }

    MFC_LOCK();

    for (i = 0; i < mfchashsize; i++) {
 if (LIST_FIRST(&V_mfchashtbl[i]) != ((void*)0)) {
     MFC_UNLOCK();
     *apival = 0;
     return EPERM;
 }
    }

    MFC_UNLOCK();

    V_mrt_api_config = *apival & mrt_api_support;
    *apival = V_mrt_api_config;

    return 0;
}
