
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ess_info {int dummy; } ;


 int DEB (int ) ;
 int DELAY (int) ;
 int ENXIO ;
 int SBDSP_RST ;
 int ess_cmd (struct ess_info*,int) ;
 int ess_get_byte (struct ess_info*) ;
 int ess_wr (struct ess_info*,int ,int) ;
 int printf (char*) ;

__attribute__((used)) static int
ess_reset_dsp(struct ess_info *sc)
{
 DEB(printf("ess_reset_dsp\n"));
     ess_wr(sc, SBDSP_RST, 3);
     DELAY(100);
     ess_wr(sc, SBDSP_RST, 0);
     if (ess_get_byte(sc) != 0xAA) {
         DEB(printf("ess_reset_dsp failed\n"));



  return ENXIO;
     }
     ess_cmd(sc, 0xc6);
     return 0;
}
