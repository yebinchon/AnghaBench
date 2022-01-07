
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_softc {int dummy; } ;
struct iwi_cmd_ring {scalar_t__ next; scalar_t__ cur; scalar_t__ queued; } ;



__attribute__((used)) static void
iwi_reset_cmd_ring(struct iwi_softc *sc, struct iwi_cmd_ring *ring)
{
 ring->queued = 0;
 ring->cur = ring->next = 0;
}
