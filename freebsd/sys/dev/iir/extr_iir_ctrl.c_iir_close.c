
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;


 int GDT_DPRINTF (int ,char*) ;
 int GDT_D_DEBUG ;

__attribute__((used)) static int
iir_close(struct cdev *dev, int flags, int fmt, struct thread * p)
{
    GDT_DPRINTF(GDT_D_DEBUG, ("iir_close()\n"));

    return (0);
}
