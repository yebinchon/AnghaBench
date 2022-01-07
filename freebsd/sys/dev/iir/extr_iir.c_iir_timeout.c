
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDT_DPRINTF (int ,char*) ;
 int GDT_D_TIMEOUT ;
 int gccb ;

__attribute__((used)) static void
iir_timeout(void *arg)
{
    GDT_DPRINTF(GDT_D_TIMEOUT, ("iir_timeout(%p)\n", gccb));
}
