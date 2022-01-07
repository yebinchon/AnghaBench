
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_12__ {int swidth; int sheight; int sdepth; int width; int height; int depth; int format; int ncols; int ** palette; int * data; } ;
struct TYPE_8__ {int biSize; int biWidth; int biHeight; int biBitCount; int biCompression; int biClrUsed; } ;
struct TYPE_10__ {TYPE_3__* bmiColors; TYPE_2__ bmiHeader; } ;
struct TYPE_7__ {int bfType; int bfOffBits; } ;
struct TYPE_11__ {TYPE_4__ bmfi; TYPE_1__ bmfh; } ;
struct TYPE_9__ {int rgbBlue; int rgbGreen; int rgbRed; } ;
typedef TYPE_5__ BITMAPF ;





 TYPE_6__ bmp_info ;
 scalar_t__ bootverbose ;
 int bzero (int **,int) ;
 int printf (char*,...) ;

__attribute__((used)) static int
bmp_Init(char *data, int swidth, int sheight, int sdepth)
{
    BITMAPF *bmf = (BITMAPF *)data;
    int pind;

    bmp_info.data = ((void*)0);


    if (bmf->bmfh.bfType != 0x4d42) {
 printf("splash_bmp: not a BMP file\n");
 return(1);
    }


    if (bmf->bmfi.bmiHeader.biSize > sizeof(bmf->bmfi.bmiHeader)) {
 printf("splash_bmp: unsupported BMP format (size=%d)\n",
  bmf->bmfi.bmiHeader.biSize);
 return(1);
    }


    bmp_info.swidth = swidth;
    bmp_info.sheight = sheight;
    bmp_info.sdepth = sdepth;


    bmp_info.data = (u_char *)data + bmf->bmfh.bfOffBits;


    bmp_info.width = bmf->bmfi.bmiHeader.biWidth;
    bmp_info.height = bmf->bmfi.bmiHeader.biHeight;
    bmp_info.depth = bmf->bmfi.bmiHeader.biBitCount;
    bmp_info.format = bmf->bmfi.bmiHeader.biCompression;

    switch(bmp_info.format) {
    case 130:
    case 129:
    case 128:
 break;
    default:
 printf("splash_bmp: unsupported compression format\n");
 return(1);
    }


    bmp_info.ncols = (bmf->bmfi.bmiHeader.biClrUsed);
    bzero(bmp_info.palette,sizeof(bmp_info.palette));
    if (bmp_info.ncols == 0) {
 bmp_info.ncols = 1 << bmf->bmfi.bmiHeader.biBitCount;
    }
    if ((bmp_info.height > bmp_info.sheight) ||
 (bmp_info.width > bmp_info.swidth) ||
 (bmp_info.ncols > (1 << sdepth))) {
 if (bootverbose)
     printf("splash_bmp: beyond screen capacity (%dx%d, %d colors)\n",
     bmp_info.width, bmp_info.height, bmp_info.ncols);
 return(1);
    }


    for (pind = 0; pind < bmp_info.ncols; pind++) {
 bmp_info.palette[pind][0] = bmf->bmfi.bmiColors[pind].rgbRed;
 bmp_info.palette[pind][1] = bmf->bmfi.bmiColors[pind].rgbGreen;
 bmp_info.palette[pind][2] = bmf->bmfi.bmiColors[pind].rgbBlue;
    }
    return(0);
}
