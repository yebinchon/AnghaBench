
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int tso_segsz; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct bxe_softc {int dummy; } ;
typedef int int32_t ;
struct TYPE_5__ {int ds_len; } ;
typedef TYPE_2__ bus_dma_segment_t ;


 unsigned short htole16 (int ) ;

__attribute__((used)) static int
bxe_chktso_window(struct bxe_softc *sc,
                  int nsegs,
                  bus_dma_segment_t *segs,
                  struct mbuf *m)
{
    uint32_t num_wnds, wnd_size, wnd_sum;
    int32_t frag_idx, wnd_idx;
    unsigned short lso_mss;
    int defrag;

    defrag = 0;
    wnd_sum = 0;
    wnd_size = 10;
    num_wnds = nsegs - wnd_size;
    lso_mss = htole16(m->m_pkthdr.tso_segsz);






    for (frag_idx = 1; (frag_idx <= wnd_size); frag_idx++) {
        wnd_sum += htole16(segs[frag_idx].ds_len);
    }


    if (wnd_sum < lso_mss) {
        return (1);
    }


    for (wnd_idx = 0; wnd_idx < num_wnds; wnd_idx++, frag_idx++) {

        wnd_sum -= htole16(segs[wnd_idx+1].ds_len);

        wnd_sum += htole16(segs[frag_idx].ds_len);
        if (wnd_sum < lso_mss) {
            return (1);
        }
    }

    return (0);
}
