
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int dummy; } ;


 int SC_PORT (struct bxe_softc*) ;

__attribute__((used)) static inline int
func_by_vn(struct bxe_softc *sc,
           int vn)
{
    return (2 * vn + SC_PORT(sc));
}
