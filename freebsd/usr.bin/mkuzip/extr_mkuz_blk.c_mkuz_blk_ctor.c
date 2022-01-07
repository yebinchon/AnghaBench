
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mkuz_blk {size_t alen; int br_offset; } ;


 int OFFSET_UNDEF ;
 struct mkuz_blk* mkuz_safe_zmalloc (int) ;

struct mkuz_blk *
mkuz_blk_ctor(size_t blen)
{
    struct mkuz_blk *rval;

    rval = mkuz_safe_zmalloc(sizeof(struct mkuz_blk) + blen);
    rval->alen = blen;
    rval->br_offset = OFFSET_UNDEF;
    return (rval);
}
