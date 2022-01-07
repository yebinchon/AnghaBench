
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;


 int DELAY (int) ;
 int ENXIO ;
 int SBDSP_RST ;
 int sb_get_byte (struct resource*) ;
 int sb_wr (struct resource*,int ,int) ;

__attribute__((used)) static int
sb_reset_dsp(struct resource *io)
{
     sb_wr(io, SBDSP_RST, 3);
     DELAY(100);
     sb_wr(io, SBDSP_RST, 0);
     return (sb_get_byte(io) == 0xAA)? 0 : ENXIO;
}
