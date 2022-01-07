
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef uintptr_t uint32_t ;
struct xhci_softc {scalar_t__ sc_ctx_is_64_byte; } ;


 int XHCI_PAGE_SIZE ;
 uintptr_t htole32 (uintptr_t) ;

__attribute__((used)) static void
xhci_ctx_set_le32(struct xhci_softc *sc, volatile uint32_t *ptr, uint32_t val)
{
 if (sc->sc_ctx_is_64_byte) {
  uint32_t offset;


  offset = ((uintptr_t)ptr) & ((XHCI_PAGE_SIZE - 1) & ~(31U));
  ptr = (volatile uint32_t *)(((volatile uint8_t *)ptr) + offset);
 }
 *ptr = htole32(val);
}
