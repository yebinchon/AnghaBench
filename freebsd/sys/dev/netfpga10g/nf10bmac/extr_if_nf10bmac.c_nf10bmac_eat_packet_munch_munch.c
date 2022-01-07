
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf10bmac_softc {int dummy; } ;
typedef int REGWTYPE ;


 int NF10BMAC_DATA_LAST ;
 int NF10BMAC_DATA_STRB ;
 int NF10BMAC_READ_BE (struct nf10bmac_softc*,int ) ;
 int NF10BMAC_RX_DATA ;
 int NF10BMAC_RX_META ;

__attribute__((used)) static void
nf10bmac_eat_packet_munch_munch(struct nf10bmac_softc *sc)
{
 REGWTYPE md, val;

 do {
  md = NF10BMAC_READ_BE(sc, NF10BMAC_RX_META);
  if ((md & NF10BMAC_DATA_STRB) != 0)
   val = NF10BMAC_READ_BE(sc, NF10BMAC_RX_DATA);
 } while ((md & NF10BMAC_DATA_STRB) != 0 &&
     (md & NF10BMAC_DATA_LAST) == 0);
}
