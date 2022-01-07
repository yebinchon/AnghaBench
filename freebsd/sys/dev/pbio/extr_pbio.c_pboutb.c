
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pbio_softc {int bsh; int bst; } ;


 int bus_space_write_1 (int ,int ,int,int ) ;

__attribute__((used)) static __inline void
pboutb(struct pbio_softc *scp, int off, uint8_t val)
{

 bus_space_write_1(scp->bst, scp->bsh, off, val);
}
