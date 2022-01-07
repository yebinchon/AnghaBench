
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONTROLLER_T ;
typedef int Byte_t ;


 int RESET_ALL ;
 int _CHN_STAT0 ;
 int _CMD_REG ;
 int rp_readaiop1 (int *,int,int ) ;
 int rp_writeaiop1 (int *,int,int ,int) ;

int sReadAiopID(CONTROLLER_T *CtlP, int aiop)
{
   Byte_t AiopID;

   rp_writeaiop1(CtlP, aiop, _CMD_REG, RESET_ALL);
   rp_writeaiop1(CtlP, aiop, _CMD_REG, 0x0);
   AiopID = rp_readaiop1(CtlP, aiop, _CHN_STAT0) & 0x07;
   if(AiopID == 0x06)
      return(1);
   else
      return(-1);
}
