
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mly_softc {int dummy; } ;
struct mly_command {int dummy; } ;


 int ENOMEM ;
 int debug_called (int) ;
 struct mly_command* mly_dequeue_free (struct mly_softc*) ;

__attribute__((used)) static int
mly_alloc_command(struct mly_softc *sc, struct mly_command **mcp)
{
    struct mly_command *mc;

    debug_called(3);

    if ((mc = mly_dequeue_free(sc)) == ((void*)0))
 return(ENOMEM);

    *mcp = mc;
    return(0);
}
