
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct twe_softc {int dummy; } ;
struct twe_request {int * tr_complete; scalar_t__ tr_flags; int tr_status; int * tr_private; int * tr_data; } ;
struct TYPE_4__ {scalar_t__ flags; scalar_t__ status; } ;
struct TYPE_5__ {TYPE_1__ generic; } ;
typedef TYPE_2__ TWE_Command ;


 int TWE_CMD_SETUP ;
 TYPE_2__* TWE_FIND_COMMAND (struct twe_request*) ;
 int TWE_IO_ASSERT_LOCKED (struct twe_softc*) ;
 int debug_called (int) ;
 int dumping ;
 struct twe_request* twe_dequeue_free (struct twe_softc*) ;

__attribute__((used)) static int
twe_get_request(struct twe_softc *sc, struct twe_request **tr)
{
    TWE_Command *cmd;
    debug_called(4);

    if (!dumping)
 TWE_IO_ASSERT_LOCKED(sc);


    *tr = twe_dequeue_free(sc);


    if (*tr != ((void*)0)) {
 cmd = TWE_FIND_COMMAND(*tr);
 (*tr)->tr_data = ((void*)0);
 (*tr)->tr_private = ((void*)0);
 (*tr)->tr_status = TWE_CMD_SETUP;
 (*tr)->tr_flags = 0;
 (*tr)->tr_complete = ((void*)0);
 cmd->generic.status = 0;
 cmd->generic.flags = 0;
    }
    return(*tr == ((void*)0));
}
