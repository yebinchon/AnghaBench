
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtget {scalar_t__ mt_dsreg; scalar_t__ mt_resid; scalar_t__ mt_fileno; scalar_t__ mt_blkno; int mt_comp3; int mt_density3; int mt_blksiz3; int mt_comp2; int mt_density2; int mt_blksiz2; int mt_comp1; int mt_density1; int mt_blksiz1; int mt_comp0; int mt_density0; int mt_blksiz0; int mt_comp; int mt_density; int mt_blksiz; } ;
typedef scalar_t__ daddr_t ;


 scalar_t__ MTIO_DSREG_NIL ;
 int TRUE ;
 char* comptostring (int ) ;
 char* denstostring (int ) ;
 char* get_driver_state_str (scalar_t__) ;
 char* getblksiz (int ) ;
 int mt_density_bp (int ,int ) ;
 int printf (char const*,...) ;
 int sprintf (char*,char*,scalar_t__) ;

__attribute__((used)) static void
st_status(struct mtget *bp)
{
 printf("Mode      Density              Blocksize      bpi      "
        "Compression\n"
        "Current:  %-17s    %-12s   %-7d  %s\n"
        "---------available modes---------\n"
        "0:        %-17s    %-12s   %-7d  %s\n"
        "1:        %-17s    %-12s   %-7d  %s\n"
        "2:        %-17s    %-12s   %-7d  %s\n"
        "3:        %-17s    %-12s   %-7d  %s\n",
        denstostring(bp->mt_density), getblksiz(bp->mt_blksiz),
        mt_density_bp(bp->mt_density, TRUE), comptostring(bp->mt_comp),
        denstostring(bp->mt_density0), getblksiz(bp->mt_blksiz0),
        mt_density_bp(bp->mt_density0, TRUE), comptostring(bp->mt_comp0),
        denstostring(bp->mt_density1), getblksiz(bp->mt_blksiz1),
        mt_density_bp(bp->mt_density1, TRUE), comptostring(bp->mt_comp1),
        denstostring(bp->mt_density2), getblksiz(bp->mt_blksiz2),
        mt_density_bp(bp->mt_density2, TRUE), comptostring(bp->mt_comp2),
        denstostring(bp->mt_density3), getblksiz(bp->mt_blksiz3),
        mt_density_bp(bp->mt_density3, TRUE), comptostring(bp->mt_comp3));

 if (bp->mt_dsreg != MTIO_DSREG_NIL) {
  const char sfmt[] = "Current Driver State: %s.\n";
  printf("---------------------------------\n");
  const char *state_str;

  state_str = get_driver_state_str(bp->mt_dsreg);
  if (state_str == ((void*)0)) {
   char foo[32];
   (void) sprintf(foo, "Unknown state 0x%x", bp->mt_dsreg);
   printf(sfmt, foo);
  } else {
   printf(sfmt, state_str);
  }
 }
 if (bp->mt_resid == 0 && bp->mt_fileno == (daddr_t) -1 &&
     bp->mt_blkno == (daddr_t) -1)
  return;
 printf("---------------------------------\n");
 printf("File Number: %d\tRecord Number: %d\tResidual Count %d\n",
     bp->mt_fileno, bp->mt_blkno, bp->mt_resid);
}
