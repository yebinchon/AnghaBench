
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned char
digest_fold(const unsigned char *mdigest)
{
    int i;
    unsigned char rval;

    rval = mdigest[0];
    for (i = 1; i < 16; i++) {
        rval = rval ^ mdigest[i];
    }
    return (rval);
}
