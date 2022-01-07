
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ilt_line {int dummy; } ;
struct bxe_softc {TYPE_1__* ilt; } ;
struct TYPE_2__ {struct ilt_line* lines; } ;


 int ILT_MAX_LINES ;
 int M_BXE_ILT ;
 int M_NOWAIT ;
 int M_ZERO ;
 scalar_t__ malloc (int,int ,int) ;

__attribute__((used)) static int
bxe_alloc_ilt_lines_mem(struct bxe_softc *sc)
{
    int rc = 0;

    if ((sc->ilt->lines =
         (struct ilt_line *)malloc((sizeof(struct ilt_line) * ILT_MAX_LINES),
                                    M_BXE_ILT,
                                    (M_NOWAIT | M_ZERO))) == ((void*)0)) {
        rc = 1;
    }

    return (rc);
}
