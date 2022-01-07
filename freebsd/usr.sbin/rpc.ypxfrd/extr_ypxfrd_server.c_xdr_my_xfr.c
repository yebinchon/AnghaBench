
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int xfrblock_buf_len; char* xfrblock_buf_val; } ;
struct TYPE_7__ {int xfrstat; TYPE_1__ xfrblock_buf; } ;
struct TYPE_8__ {scalar_t__ ok; TYPE_2__ xfr_u; } ;
typedef TYPE_3__ xfr ;
typedef scalar_t__ bool_t ;
typedef int XDR ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int XFRBLOCKSIZE ;
 int XFR_DONE ;
 int XFR_READ_ERR ;
 int errno ;
 int fp ;
 int read (int ,unsigned char**,int) ;
 int strerror (int ) ;
 int xdr_xfr (int *,TYPE_3__*) ;
 int yp_error (char*,int ) ;

__attribute__((used)) static bool_t
xdr_my_xfr(register XDR *xdrs, xfr *objp)
{
 unsigned char buf[XFRBLOCKSIZE];

 while (1) {
  if ((objp->xfr_u.xfrblock_buf.xfrblock_buf_len =
      read(fp, &buf, XFRBLOCKSIZE)) != -1) {
   objp->ok = TRUE;
   objp->xfr_u.xfrblock_buf.xfrblock_buf_val = (char *)&buf;
  } else {
   objp->ok = FALSE;
   objp->xfr_u.xfrstat = XFR_READ_ERR;
   yp_error("read error: %s", strerror(errno));
  }


  if (!xdr_xfr(xdrs, objp))
   return(FALSE);
  if (objp->ok == FALSE)
   return(TRUE);
  if (objp->xfr_u.xfrblock_buf.xfrblock_buf_len < XFRBLOCKSIZE) {
   objp->ok = FALSE;
   objp->xfr_u.xfrstat = XFR_DONE;
   if (!xdr_xfr(xdrs, objp))
    return(FALSE);
   return(TRUE);
  }
 }
}
