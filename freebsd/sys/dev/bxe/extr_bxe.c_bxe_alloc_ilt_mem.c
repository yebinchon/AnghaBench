
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_ilt {int dummy; } ;
struct bxe_softc {struct ecore_ilt* ilt; } ;


 int M_BXE_ILT ;
 int M_NOWAIT ;
 int M_ZERO ;
 scalar_t__ malloc (int,int ,int) ;

__attribute__((used)) static int
bxe_alloc_ilt_mem(struct bxe_softc *sc)
{
    int rc = 0;

    if ((sc->ilt =
         (struct ecore_ilt *)malloc(sizeof(struct ecore_ilt),
                                    M_BXE_ILT,
                                    (M_NOWAIT | M_ZERO))) == ((void*)0)) {
        rc = 1;
    }

    return (rc);
}
