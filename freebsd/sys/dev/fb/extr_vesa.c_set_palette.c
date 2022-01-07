
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int va_flags; int va_mode; } ;
typedef TYPE_1__ video_adapter_t ;
typedef int u_char ;


 int M_DEVBUF ;
 int M_WAITOK ;
 int VESA_MODE (int ) ;
 int V_ADP_DAC8 ;
 int copyin (int *,int *,int) ;
 int free (int *,int ) ;
 int * malloc (int,int ,int ) ;
 int vesa_bios_load_palette2 (int,int,int *,int *,int *,int) ;

__attribute__((used)) static int
set_palette(video_adapter_t *adp, int base, int count,
     u_char *red, u_char *green, u_char *blue, u_char *trans)
{
 u_char *r;
 u_char *g;
 u_char *b;
 int bits;
 int error;

 if (base < 0 || base >= 256 || count < 0 || count > 256)
  return (1);
 if ((base + count) > 256)
  return (1);
 if (!VESA_MODE(adp->va_mode))
  return (1);

 bits = (adp->va_flags & V_ADP_DAC8) != 0 ? 8 : 6;
 r = malloc(count * 3, M_DEVBUF, M_WAITOK);
 g = r + count;
 b = g + count;
 copyin(red, r, count);
 copyin(green, g, count);
 copyin(blue, b, count);

 error = vesa_bios_load_palette2(base, count, r, g, b, bits);
 free(r, M_DEVBUF);

 return (error);
}
