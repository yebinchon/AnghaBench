
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcons_softc {int dummy; } ;
struct consdev {scalar_t__ cn_arg; } ;


 int dcons_os_checkc (struct dcons_softc*) ;

__attribute__((used)) static int
dcons_cngetc(struct consdev *cp)
{
 struct dcons_softc *dc = (struct dcons_softc *)cp->cn_arg;
 return (dcons_os_checkc(dc));
}
