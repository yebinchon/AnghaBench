
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int8_t ;
typedef scalar_t__ off_t ;
typedef TYPE_1__* mpfps_t ;
struct TYPE_6__ {int length; int signature; } ;


 int MPFPS_SIG ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int memread (scalar_t__,TYPE_1__*,int) ;
 int strlen (int ) ;
 int strncmp (int ,int ,int ) ;
 int warnx (char*,...) ;

__attribute__((used)) static mpfps_t
biosmptable_search_mpfps(off_t base, int length)
{
    mpfps_t mpfps;
    u_int8_t *cp, sum;
    int ofs, idx;

    mpfps = malloc(sizeof(*mpfps));
    if (mpfps == ((void*)0)) {
 warnx("unable to malloc space for MP Floating Pointer Structure");
 return (((void*)0));
    }

    for (ofs = 0; ofs < length; ofs += 16) {
 if (!memread(base + ofs, mpfps, sizeof(*mpfps)))
     break;


 if (!strncmp(mpfps->signature, MPFPS_SIG, strlen(MPFPS_SIG))) {
     cp = (u_int8_t *)mpfps;
     sum = 0;

     if (mpfps->length != 1) {
      warnx("bad mpfps length (%d)", mpfps->length);
  continue;
     }
     for (idx = 0; idx < mpfps->length * 16; idx++)
  sum += *(cp + idx);
     if (sum != 0) {
  warnx("bad mpfps checksum (%d)\n", sum);
  continue;
     }
     return (mpfps);
 }
    }
    free(mpfps);
    return (((void*)0));
}
