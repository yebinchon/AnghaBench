
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int dummy; } ;
typedef int c ;


 int BLOGI (struct bxe_softc*,char*,char*) ;
 int bxe_prev_mtx ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int snprintf (char*,int,char*,int) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

void
bxe_dump_mem(struct bxe_softc *sc,
             char *tag,
             uint8_t *mem,
             uint32_t len)
{
    char buf[256];
    char c[32];
    int xx;

    mtx_lock(&bxe_prev_mtx);

    BLOGI(sc, "++++++++++++ %s\n", tag);
    strcpy(buf, "** 000: ");

    for (xx = 0; xx < len; xx++)
    {
        if ((xx != 0) && (xx % 16 == 0))
        {
            BLOGI(sc, "%s\n", buf);
            strcpy(buf, "** ");
            snprintf(c, sizeof(c), "%03x", xx);
            strcat(buf, c);
            strcat(buf, ": ");
        }

        snprintf(c, sizeof(c), "%02x ", *mem);
        strcat(buf, c);

        mem++;
    }

    BLOGI(sc, "%s\n", buf);
    BLOGI(sc, "------------ %s\n", tag);

    mtx_unlock(&bxe_prev_mtx);
}
