
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int isc_session_t ;


 int debug_called (int) ;
 int sdebug (int,char*,int) ;
 int xdebug (char*,int) ;

__attribute__((used)) static int
dwl(isc_session_t *sp, int lun, u_char *lp)
{
     debug_called(8);
     sdebug(4, "lun=%d", lun);







     if(lun < 256) {
   lp[0] = 0;
   lp[1] = lun;
     } else
     if(lun < 16384) {
   lp[0] = (1 << 5) | ((lun >> 8) & 0x3f);
   lp[1] = lun & 0xff;
     }
     else {
   xdebug("lun %d: is unsupported!", lun);
   return -1;
     }

     return 0;
}
