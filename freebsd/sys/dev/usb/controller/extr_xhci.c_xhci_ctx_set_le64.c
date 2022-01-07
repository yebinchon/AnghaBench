
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef uintptr_t uint32_t ;
struct xhci_softc {scalar_t__ sc_ctx_is_64_byte; } ;


 int XHCI_PAGE_SIZE ;
 int htole64 (int ) ;

__attribute__((used)) static void
xhci_ctx_set_le64(struct xhci_softc *sc, volatile uint64_t *ptr, uint64_t val)
{
 if (sc->sc_ctx_is_64_byte) {
  uint32_t offset;


  offset = ((uintptr_t)ptr) & ((XHCI_PAGE_SIZE - 1) & ~(31U));
  ptr = (volatile uint64_t *)(((volatile uint8_t *)ptr) + offset);
 }
 *ptr = htole64(val);
}
