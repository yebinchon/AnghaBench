
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int offset; } ;
struct mkuz_blkcache_itm {TYPE_1__ hit; } ;
struct TYPE_4__ {unsigned int len; int offset; } ;
struct mkuz_blk {TYPE_2__ info; int data; } ;
typedef scalar_t__ ssize_t ;


 int SEEK_SET ;
 int free (void*) ;
 scalar_t__ lseek (int,int ,int ) ;
 void* malloc (unsigned int) ;
 scalar_t__ memcmp (int ,void*,unsigned int) ;
 scalar_t__ read (int,void*,unsigned int) ;

__attribute__((used)) static int
verify_match(int fd, const struct mkuz_blk *cbp, struct mkuz_blkcache_itm *bcep)
{
    void *vbuf;
    ssize_t rlen;
    int rval;

    rval = -1;
    vbuf = malloc(cbp->info.len);
    if (vbuf == ((void*)0)) {
        goto e0;
    }
    if (lseek(fd, bcep->hit.offset, SEEK_SET) < 0) {
        goto e1;
    }
    rlen = read(fd, vbuf, cbp->info.len);
    if (rlen < 0 || (unsigned)rlen != cbp->info.len) {
        goto e2;
    }
    rval = (memcmp(cbp->data, vbuf, cbp->info.len) == 0) ? 1 : 0;
e2:
    lseek(fd, cbp->info.offset, SEEK_SET);
e1:
    free(vbuf);
e0:
    return (rval);
}
