
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct exca_softc {int dummy; } ;


 int ENOENT ;
 int exca_mem_findmap (struct exca_softc*,struct resource*) ;
 int exca_mem_unmap (struct exca_softc*,int) ;

int
exca_mem_unmap_res(struct exca_softc *sc, struct resource *res)
{
 int win;

 win = exca_mem_findmap(sc, res);
 if (win < 0)
  return (ENOENT);
 exca_mem_unmap(sc, win);
 return (0);
}
