
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int16_t ;
struct tws_softc {scalar_t__ is64bit; } ;
struct tws_sg_desc64 {int length; int address; scalar_t__ reserved; scalar_t__ flag; } ;
struct tws_sg_desc32 {scalar_t__ flag; int length; int address; } ;
typedef int bus_dma_segment_t ;


 int TWS_MAX_32BIT_SG_ELEMENTS ;
 int TWS_MAX_64BIT_SG_ELEMENTS ;
 int TWS_TRACE (struct tws_softc*,char*,int,int ) ;
 int tws_use_32bit_sgls ;

__attribute__((used)) static void
tws_fill_sg_list(struct tws_softc *sc, void *sgl_src, void *sgl_dest,
                          u_int16_t num_sgl_entries)
{
    int i;

    if ( sc->is64bit ) {
        struct tws_sg_desc64 *sgl_s = (struct tws_sg_desc64 *)sgl_src;

        if ( !tws_use_32bit_sgls ) {
            struct tws_sg_desc64 *sgl_d = (struct tws_sg_desc64 *)sgl_dest;
            if ( num_sgl_entries > TWS_MAX_64BIT_SG_ELEMENTS )
                TWS_TRACE(sc, "64bit sg overflow", num_sgl_entries, 0);
            for (i = 0; i < num_sgl_entries; i++) {
                sgl_d[i].address = sgl_s->address;
                sgl_d[i].length = sgl_s->length;
                sgl_d[i].flag = 0;
                sgl_d[i].reserved = 0;
                sgl_s = (struct tws_sg_desc64 *) (((u_int8_t *)sgl_s) +
                                               sizeof(bus_dma_segment_t));
            }
        } else {
            struct tws_sg_desc32 *sgl_d = (struct tws_sg_desc32 *)sgl_dest;
            if ( num_sgl_entries > TWS_MAX_32BIT_SG_ELEMENTS )
                TWS_TRACE(sc, "32bit sg overflow", num_sgl_entries, 0);
            for (i = 0; i < num_sgl_entries; i++) {
                sgl_d[i].address = sgl_s->address;
                sgl_d[i].length = sgl_s->length;
                sgl_d[i].flag = 0;
                sgl_s = (struct tws_sg_desc64 *) (((u_int8_t *)sgl_s) +
                                               sizeof(bus_dma_segment_t));
            }
        }
    } else {
        struct tws_sg_desc32 *sgl_s = (struct tws_sg_desc32 *)sgl_src;
        struct tws_sg_desc32 *sgl_d = (struct tws_sg_desc32 *)sgl_dest;

        if ( num_sgl_entries > TWS_MAX_32BIT_SG_ELEMENTS )
            TWS_TRACE(sc, "32bit sg overflow", num_sgl_entries, 0);


        for (i = 0; i < num_sgl_entries; i++) {
            sgl_d[i].address = sgl_s[i].address;
            sgl_d[i].length = sgl_s[i].length;
            sgl_d[i].flag = 0;
        }
    }
}
