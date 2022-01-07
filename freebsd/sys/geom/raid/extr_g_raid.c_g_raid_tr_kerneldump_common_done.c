
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bio_flags; } ;


 int BIO_DONE ;

__attribute__((used)) static void
g_raid_tr_kerneldump_common_done(struct bio *bp)
{

 bp->bio_flags |= BIO_DONE;
}
