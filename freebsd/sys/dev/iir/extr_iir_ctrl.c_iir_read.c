
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct cdev {int dummy; } ;


 int GDT_DPRINTF (int ,char*) ;
 int GDT_D_DEBUG ;

__attribute__((used)) static int
iir_read(struct cdev *dev, struct uio * uio, int ioflag)
{
    GDT_DPRINTF(GDT_D_DEBUG, ("iir_read()\n"));

    return (0);
}
