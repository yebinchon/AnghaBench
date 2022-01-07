
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_xfer {int flag; int resp; } ;


 int fw_xfer_free (struct fw_xfer*) ;
 int printf (char*,int,int) ;

void
fw_asy_callback_free(struct fw_xfer *xfer)
{




 fw_xfer_free(xfer);
}
