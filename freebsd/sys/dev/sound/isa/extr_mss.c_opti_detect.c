
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mss_info {int conf_rid; int indir_rid; int optibase; int password; int passwdreg; int bd_id; int * conf_base; int * indir; } ;
typedef int device_t ;




 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 void* bus_alloc_resource (int ,int ,int*,int,int,int,int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 int opti_read (struct mss_info*,int) ;

__attribute__((used)) static int
opti_detect(device_t dev, struct mss_info *mss)
{
 int c;
 static const struct opticard {
  int boardid;
  int passwdreg;
  int password;
  int base;
  int indir_reg;
 } cards[] = {
  { 128, 0, 0xe4, 0xf8f, 0xe0e },
  { 129, 3, 0xe5, 0xf8c, 0, },
  { 0 },
 };
 mss->conf_rid = 3;
 mss->indir_rid = 4;
 for (c = 0; cards[c].base; c++) {
  mss->optibase = cards[c].base;
  mss->password = cards[c].password;
  mss->passwdreg = cards[c].passwdreg;
  mss->bd_id = cards[c].boardid;

  if (cards[c].indir_reg)
   mss->indir = bus_alloc_resource(dev, SYS_RES_IOPORT,
    &mss->indir_rid, cards[c].indir_reg,
    cards[c].indir_reg+1, 1, RF_ACTIVE);

  mss->conf_base = bus_alloc_resource(dev, SYS_RES_IOPORT,
   &mss->conf_rid, mss->optibase, mss->optibase+9,
   9, RF_ACTIVE);

  if (opti_read(mss, 1) != 0xff) {
   return 1;
  } else {
   if (mss->indir)
    bus_release_resource(dev, SYS_RES_IOPORT, mss->indir_rid, mss->indir);
   mss->indir = ((void*)0);
   if (mss->conf_base)
    bus_release_resource(dev, SYS_RES_IOPORT, mss->conf_rid, mss->conf_base);
   mss->conf_base = ((void*)0);
  }
 }
 return 0;
}
