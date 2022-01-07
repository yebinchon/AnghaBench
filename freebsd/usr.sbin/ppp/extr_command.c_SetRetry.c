
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int DEF_FSMRETRY ;
 int LogWARN ;
 long MIN_FSMRETRY ;
 long atol (char const* const) ;
 int log_Printf (int ,char*,long,...) ;

__attribute__((used)) static int
SetRetry(int argc, char const *const *argv, u_int *timeout, u_int *maxreq,
          u_int *maxtrm, int def)
{
  if (argc == 0) {
    *timeout = DEF_FSMRETRY;
    *maxreq = def;
    if (maxtrm != ((void*)0))
      *maxtrm = def;
  } else {
    long l = atol(argv[0]);

    if (l < MIN_FSMRETRY) {
      log_Printf(LogWARN, "%ld: Invalid FSM retry period - min %d\n",
                 l, MIN_FSMRETRY);
      return 1;
    } else
      *timeout = l;

    if (argc > 1) {
      l = atol(argv[1]);
      if (l < 1) {
        log_Printf(LogWARN, "%ld: Invalid FSM REQ tries - changed to 1\n", l);
        l = 1;
      }
      *maxreq = l;

      if (argc > 2 && maxtrm != ((void*)0)) {
        l = atol(argv[2]);
        if (l < 1) {
          log_Printf(LogWARN, "%ld: Invalid FSM TRM tries - changed to 1\n", l);
          l = 1;
        }
        *maxtrm = l;
      }
    }
  }

  return 0;
}
