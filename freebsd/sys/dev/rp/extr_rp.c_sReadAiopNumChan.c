
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Word_t ;
typedef int CONTROLLER_T ;


 int _INDX_ADDR ;
 int _INDX_DATA ;
 scalar_t__ rp_readaiop2 (int *,int,int ) ;
 int rp_writeaiop2 (int *,int,int ,int) ;
 int rp_writeaiop4 (int *,int,int ,int) ;

int sReadAiopNumChan(CONTROLLER_T *CtlP, int aiop)
{
   Word_t x, y;

   rp_writeaiop4(CtlP, aiop, _INDX_ADDR,0x12340000L);
   rp_writeaiop2(CtlP, aiop, _INDX_ADDR,0);
   x = rp_readaiop2(CtlP, aiop, _INDX_DATA);
   rp_writeaiop2(CtlP, aiop, _INDX_ADDR,0x4000);
   y = rp_readaiop2(CtlP, aiop, _INDX_DATA);
   if(x != y)
      return(8);
   else
      return(4);
}
