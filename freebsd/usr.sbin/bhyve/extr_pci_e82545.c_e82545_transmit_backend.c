
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int dummy; } ;
struct e82545_softc {int * esc_be; } ;


 int netbe_send (int *,struct iovec*,int) ;

__attribute__((used)) static void
e82545_transmit_backend(struct e82545_softc *sc, struct iovec *iov, int iovcnt)
{

 if (sc->esc_be == ((void*)0))
  return;

 (void) netbe_send(sc->esc_be, iov, iovcnt);
}
