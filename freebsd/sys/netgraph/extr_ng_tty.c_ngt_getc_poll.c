
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tty {int dummy; } ;
typedef TYPE_1__* sc_p ;
struct TYPE_3__ {size_t outqlen; } ;


 TYPE_1__* ttyhook_softc (struct tty*) ;

__attribute__((used)) static size_t
ngt_getc_poll(struct tty *tp)
{
 sc_p sc = ttyhook_softc(tp);

 return (sc->outqlen);
}
