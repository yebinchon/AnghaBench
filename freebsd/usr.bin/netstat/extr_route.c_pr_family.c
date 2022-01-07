
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xo_emit (char*,...) ;

void
pr_family(int af1)
{
 const char *afname;

 switch (af1) {
 case 131:
  afname = "Internet";
  break;





 case 129:
  afname = "ISO";
  break;
 case 132:
  afname = "X.25";
  break;
 case 128:
  afname = "Netgraph";
  break;
 default:
  afname = ((void*)0);
  break;
 }
 if (afname)
  xo_emit("\n{k:address-family/%s}:\n", afname);
 else
  xo_emit("\n{L:Protocol Family} {k:address-family/%d}:\n", af1);
}
