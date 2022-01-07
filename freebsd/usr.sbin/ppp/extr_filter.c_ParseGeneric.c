
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filterent {int f_dstop; int f_srcop; } ;


 int LogWARN ;
 int OP_NONE ;
 int log_Printf (int ,char*) ;

__attribute__((used)) static int
ParseGeneric(int argc, struct filterent *tgt)
{




  if (argc != 0) {
    log_Printf(LogWARN, "ParseGeneric: Too many parameters\n");
    return 0;
  } else
    tgt->f_srcop = tgt->f_dstop = OP_NONE;

  return 1;
}
