
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mkuz_blk_info {unsigned int offset; scalar_t__ len; scalar_t__ blkno; int digest; } ;
struct mkuz_blkcache_itm {struct mkuz_blk_info hit; struct mkuz_blkcache_itm* next; } ;
struct mkuz_blk {struct mkuz_blk_info info; } ;
struct TYPE_2__ {struct mkuz_blkcache_itm* first; } ;


 int I2J (scalar_t__) ;
 int SEEK_CUR ;
 int assert (int) ;
 TYPE_1__ blkcache ;
 unsigned char digest_fold (int ) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ lseek (int,int ,int ) ;
 struct mkuz_blkcache_itm* malloc (int) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int memset (struct mkuz_blkcache_itm*,char,int) ;
 int stderr ;
 int verify_match (int,struct mkuz_blk const*,struct mkuz_blkcache_itm*) ;
 int warn (char*) ;

struct mkuz_blk_info *
mkuz_blkcache_regblock(int fd, const struct mkuz_blk *bp)
{
    struct mkuz_blkcache_itm *bcep;
    int rval;
    unsigned char h;




    h = digest_fold(bp->info.digest);
    if (blkcache.first[h].hit.len == 0) {
        bcep = &blkcache.first[h];
    } else {
        for (bcep = &blkcache.first[h]; bcep != ((void*)0); bcep = bcep->next) {
            if (bcep->hit.len != bp->info.len)
                continue;
            if (memcmp(bp->info.digest, bcep->hit.digest,
              sizeof(bp->info.digest)) == 0) {
                break;
            }
        }
        if (bcep != ((void*)0)) {
            rval = verify_match(fd, bp, bcep);
            if (rval == 1) {





                return (&bcep->hit);
            }
            if (rval == 0) {




                return (((void*)0));
            }
            warn("verify_match");
            return (((void*)0));
        }
        bcep = malloc(sizeof(struct mkuz_blkcache_itm));
        if (bcep == ((void*)0))
            return (((void*)0));
        memset(bcep, '\0', sizeof(struct mkuz_blkcache_itm));
        bcep->next = blkcache.first[h].next;
        blkcache.first[h].next = bcep;
    }
    bcep->hit = bp->info;
    return (((void*)0));
}
