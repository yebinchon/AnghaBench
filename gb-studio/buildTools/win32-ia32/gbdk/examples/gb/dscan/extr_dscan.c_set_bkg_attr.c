
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UBYTE ;


 int VBK_REG ;
 int * bkgCGB ;
 int * msg_tile ;
 int set_bkg_tiles (scalar_t__,scalar_t__,scalar_t__,int,int *) ;

void set_bkg_attr( UBYTE x, UBYTE y, UBYTE sx, UBYTE sy, unsigned char *d )
{
  UBYTE xx, yy;

  VBK_REG = 1;
  for( yy=0; yy<sy; yy++ ) {
    for( xx=0; xx<sx; xx++ ) {
      msg_tile[xx] = bkgCGB[(unsigned int)*d];
      d++;
    }
    set_bkg_tiles( x, y+yy, sx, 1, msg_tile );
  }
  VBK_REG = 0;
}
