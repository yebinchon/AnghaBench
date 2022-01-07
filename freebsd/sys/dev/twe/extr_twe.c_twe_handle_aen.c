
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int16_t ;
struct twe_softc {int dummy; } ;
struct twe_request {scalar_t__ tr_data; struct twe_softc* tr_sc; } ;
struct TYPE_2__ {scalar_t__ data; } ;
typedef TYPE_1__ TWE_Param ;


 int M_DEVBUF ;
 int debug_called (int) ;
 int free (scalar_t__,int ) ;
 int twe_enqueue_aen (struct twe_softc*,int ) ;
 int twe_release_request (struct twe_request*) ;

__attribute__((used)) static void
twe_handle_aen(struct twe_request *tr)
{
    struct twe_softc *sc = tr->tr_sc;
    TWE_Param *param;
    u_int16_t aen;

    debug_called(4);



    param = (TWE_Param *)tr->tr_data;
    aen = *(u_int16_t *)(param->data);

    free(tr->tr_data, M_DEVBUF);
    twe_release_request(tr);
    twe_enqueue_aen(sc, aen);


}
