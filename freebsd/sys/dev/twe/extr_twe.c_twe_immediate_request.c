
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twe_softc {int * twe_immediate; } ;
struct twe_request {scalar_t__ tr_status; int tr_length; int * tr_data; int tr_flags; struct twe_softc* tr_sc; } ;


 int DELAY (int) ;
 int DFLTPHYS ;
 int EBUSY ;
 int EINVAL ;
 scalar_t__ TWE_CMD_BUSY ;
 scalar_t__ TWE_CMD_COMPLETE ;
 int TWE_CMD_IMMEDIATE ;
 int bcopy (int *,int *,int ) ;
 int debug_called (int) ;
 int twe_done (struct twe_softc*,int) ;
 int twe_map_request (struct twe_request*) ;

__attribute__((used)) static int
twe_immediate_request(struct twe_request *tr, int usetmp)
{
    struct twe_softc *sc;
    int error;
    int count = 0;

    debug_called(4);

    sc = tr->tr_sc;

    if (usetmp && (tr->tr_data != ((void*)0))) {
 tr->tr_flags |= TWE_CMD_IMMEDIATE;
 if (tr->tr_length > DFLTPHYS)
     return (EINVAL);
 bcopy(tr->tr_data, sc->twe_immediate, tr->tr_length);
    }
    tr->tr_status = TWE_CMD_BUSY;
    if ((error = twe_map_request(tr)) != 0)
 if (error != EBUSY)
     return(error);


    while ((count++ < 5000) && (tr->tr_status == TWE_CMD_BUSY)){
 DELAY(1000);
 twe_done(sc, 1);
    }
    if (usetmp && (tr->tr_data != ((void*)0)))
 bcopy(sc->twe_immediate, tr->tr_data, tr->tr_length);

    return(tr->tr_status != TWE_CMD_COMPLETE);
}
