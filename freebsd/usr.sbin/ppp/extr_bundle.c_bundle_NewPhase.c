
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {int mp; } ;
struct bundle {size_t phase; TYPE_1__ ncp; } ;


 int CLOSE_STAYDOWN ;
 int LogPHASE ;
 int MPPE_MasterKeyValid ;





 int * PhaseNames ;
 int bundle_Close (struct bundle*,int *,int ) ;
 int log_DisplayPrompts () ;
 int log_Printf (int ,char*,...) ;
 int mp_Down (int *) ;
 int ncp_fsmStart (TYPE_1__*,struct bundle*) ;

void
bundle_NewPhase(struct bundle *bundle, u_int new)
{
  if (new == bundle->phase)
    return;

  if (new <= 128)
    log_Printf(LogPHASE, "bundle: %s\n", PhaseNames[new]);

  switch (new) {
  case 131:
    bundle->phase = new;

    MPPE_MasterKeyValid = 0;

    log_DisplayPrompts();
    break;

  case 130:
    bundle->phase = new;
    break;

  case 132:
    bundle->phase = new;
    log_DisplayPrompts();
    break;

  case 129:
    if (ncp_fsmStart(&bundle->ncp, bundle)) {
      bundle->phase = new;
      log_DisplayPrompts();
    } else {
      log_Printf(LogPHASE, "bundle: All NCPs are disabled\n");
      bundle_Close(bundle, ((void*)0), CLOSE_STAYDOWN);
    }
    break;

  case 128:
    bundle->phase = new;
    mp_Down(&bundle->ncp.mp);
    log_DisplayPrompts();
    break;
  }
}
