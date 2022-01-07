
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef int PSRB ;
typedef int PACB ;


 int XFERDATAOUT ;
 int trm_DataIO_transfer (int ,int ,int ) ;

__attribute__((used)) static void
trm_DataOutPhase1(PACB pACB, PSRB pSRB, u_int16_t *pscsi_status)
{
 u_int16_t ioDir;




 ioDir = XFERDATAOUT;
 trm_DataIO_transfer(pACB, pSRB, ioDir);
}
