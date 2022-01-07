
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twe_softc {int dummy; } ;
struct twe_request {int tr_flags; int (* tr_complete ) (struct twe_request*) ;} ;


 int TWE_CMD_SLEEPER ;
 int debug (int,char*,...) ;
 int debug_called (int) ;
 int stub1 (struct twe_request*) ;
 struct twe_request* twe_dequeue_complete (struct twe_softc*) ;
 int twe_unmap_request (struct twe_request*) ;
 int wakeup_one (struct twe_request*) ;

__attribute__((used)) static void
twe_complete(struct twe_softc *sc)
{
    struct twe_request *tr;

    debug_called(5);




    while ((tr = twe_dequeue_complete(sc)) != ((void*)0)) {

 twe_unmap_request(tr);


 if (tr->tr_complete != ((void*)0)) {
     debug(2, "call completion handler %p", tr->tr_complete);
     tr->tr_complete(tr);

 } else if (tr->tr_flags & TWE_CMD_SLEEPER) {
     debug(2, "wake up command owner on %p", tr);
     wakeup_one(tr);

 } else {
     debug(2, "command left for owner");
 }
    }
}
