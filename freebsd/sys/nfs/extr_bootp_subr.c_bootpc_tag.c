
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bootpc_tagcontext {int overload; scalar_t__ badopt; scalar_t__ badtag; scalar_t__ foundopt; size_t taglen; char* buf; } ;
struct bootp_packet {unsigned char* vend; scalar_t__ sname; scalar_t__ file; } ;


 int OVERLOAD_FILE ;
 int OVERLOAD_SNAME ;
 scalar_t__ bootpc_hascookie (struct bootp_packet*) ;
 int bootpc_tag_helper (struct bootpc_tagcontext*,unsigned char*,int,int) ;

__attribute__((used)) static unsigned char *
bootpc_tag(struct bootpc_tagcontext *tctx,
    struct bootp_packet *bp, int len, int tag)
{
 tctx->overload = 0;
 tctx->badopt = 0;
 tctx->badtag = 0;
 tctx->foundopt = 0;
 tctx->taglen = 0;

 if (bootpc_hascookie(bp) == 0)
  return ((void*)0);

 bootpc_tag_helper(tctx, &bp->vend[4],
     (unsigned char *) bp + len - &bp->vend[4], tag);

 if ((tctx->overload & OVERLOAD_FILE) != 0)
  bootpc_tag_helper(tctx,
      (unsigned char *) bp->file,
      sizeof(bp->file),
      tag);
 if ((tctx->overload & OVERLOAD_SNAME) != 0)
  bootpc_tag_helper(tctx,
      (unsigned char *) bp->sname,
      sizeof(bp->sname),
      tag);

 if (tctx->badopt != 0 || tctx->badtag != 0 || tctx->foundopt == 0)
  return ((void*)0);
 tctx->buf[tctx->taglen] = '\0';
 return tctx->buf;
}
