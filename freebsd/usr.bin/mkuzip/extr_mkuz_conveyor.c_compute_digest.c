
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int digest; int len; } ;
struct mkuz_blk {TYPE_1__ info; int data; } ;
typedef int MD5_CTX ;


 int MD5Final (int ,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,int ,int ) ;

__attribute__((used)) static void
compute_digest(struct mkuz_blk *bp)
{
    MD5_CTX mcontext;

    MD5Init(&mcontext);
    MD5Update(&mcontext, bp->data, bp->info.len);
    MD5Final(bp->info.digest, &mcontext);
}
