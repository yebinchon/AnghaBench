
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pvscsi_softc {struct pvscsi_hcb* hcbs; } ;
struct pvscsi_hcb {int dummy; } ;



__attribute__((used)) static inline uint64_t pvscsi_hcb_to_context(struct pvscsi_softc *sc,
    struct pvscsi_hcb *hcb)
{


 return (hcb - sc->hcbs + 1);
}
