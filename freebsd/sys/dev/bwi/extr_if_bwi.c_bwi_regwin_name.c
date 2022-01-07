
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_regwin {int rw_type; } ;






 int panic (char*,int) ;

__attribute__((used)) static const char *
bwi_regwin_name(const struct bwi_regwin *rw)
{
 switch (rw->rw_type) {
 case 129:
  return "COM";
 case 131:
  return "PCI";
 case 128:
  return "MAC";
 case 130:
  return "PCIE";
 }
 panic("unknown regwin type 0x%04x\n", rw->rw_type);
 return ((void*)0);
}
