
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
spr_cctrl_sel(unsigned sel0,unsigned sel1)
{
  unsigned sel=(sel1<<1) | sel0;
  char *ret="UNKNOWN";

  if ( 0 == sel) {ret = "Reno";}
  else if ( 1 == sel) {ret = "Tahoe";}
  else if ( 2 == sel) {ret = "NewReno";}
  else if ( 3 == sel) {ret = "HighSpeed";}

  return ret;
}
