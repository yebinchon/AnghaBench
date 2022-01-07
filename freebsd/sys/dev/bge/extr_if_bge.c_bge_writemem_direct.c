
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bge_softc {int dummy; } ;


 int CSR_WRITE_4 (struct bge_softc*,int,int) ;

__attribute__((used)) static void
bge_writemem_direct(struct bge_softc *sc, int off, int val)
{
 CSR_WRITE_4(sc, off, val);
}
