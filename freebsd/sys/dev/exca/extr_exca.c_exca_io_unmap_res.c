
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct exca_softc {int dummy; } ;


 int ENOENT ;
 int exca_io_findmap (struct exca_softc*,struct resource*) ;
 int exca_io_unmap (struct exca_softc*,int) ;

int
exca_io_unmap_res(struct exca_softc *sc, struct resource *res)
{
 int win;

 win = exca_io_findmap(sc, res);
 if (win < 0)
  return (ENOENT);
 exca_io_unmap(sc, win);
 return (0);
}
