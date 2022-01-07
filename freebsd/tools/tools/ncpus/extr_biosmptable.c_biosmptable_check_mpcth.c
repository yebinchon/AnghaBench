
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
typedef scalar_t__ off_t ;
typedef TYPE_1__* mpcth_t ;
typedef int intmax_t ;
struct TYPE_8__ {int base_table_length; int signature; } ;


 int MPCTH_SIG ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int memread (scalar_t__,TYPE_1__*,int) ;
 TYPE_1__* realloc (TYPE_1__*,int) ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,int ,int ) ;
 int warnx (char*,...) ;

__attribute__((used)) static mpcth_t
biosmptable_check_mpcth(off_t addr)
{
    mpcth_t mpcth;
    u_int8_t *cp, sum;
    int idx, table_length;


    if ((u_int32_t)addr >= 1024 * 1024) {
 warnx("bad mpcth address (0x%jx)\n", (intmax_t)addr);
 return (((void*)0));
    }

    mpcth = malloc(sizeof(*mpcth));
    if (mpcth == ((void*)0)) {
 warnx("unable to malloc space for MP Configuration Table Header");
 return (((void*)0));
    }
    if (!memread(addr, mpcth, sizeof(*mpcth)))
 goto bad;

    if (strncmp(mpcth->signature, MPCTH_SIG, strlen(MPCTH_SIG)) != 0) {
        warnx("bad mpcth signature");
 goto bad;
    }
    table_length = mpcth->base_table_length;
    mpcth = realloc(mpcth, table_length);
    if (mpcth == ((void*)0)) {
 warnx("unable to realloc space for mpcth (len %u)", table_length);
 return (((void*)0));
    }
    if (!memread(addr, mpcth, table_length))
 goto bad;
    cp = (u_int8_t *)mpcth;
    sum = 0;
    for (idx = 0; idx < mpcth->base_table_length; idx++)
 sum += *(cp + idx);
    if (sum != 0) {
 warnx("bad mpcth checksum (%d)", sum);
 goto bad;
    }

    return mpcth;
bad:
    free(mpcth);
    return (((void*)0));
}
