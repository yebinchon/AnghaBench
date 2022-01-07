
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bbb_transfer {int error; int status_try; int cv; int state; } ;


 int ST_COMMAND ;
 int cv_signal (int *) ;

__attribute__((used)) static void
bbb_done(struct bbb_transfer *sc, int error)
{
 sc->error = error;
 sc->state = ST_COMMAND;
 sc->status_try = 1;
 cv_signal(&sc->cv);
}
