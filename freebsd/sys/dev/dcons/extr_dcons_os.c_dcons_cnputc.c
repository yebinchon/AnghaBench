
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcons_softc {int dummy; } ;
struct consdev {scalar_t__ cn_arg; } ;


 int dcons_os_putc (struct dcons_softc*,int) ;

__attribute__((used)) static void
dcons_cnputc(struct consdev *cp, int c)
{
 struct dcons_softc *dc = (struct dcons_softc *)cp->cn_arg;
 dcons_os_putc(dc, c);
}
