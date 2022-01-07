
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufdomain {int bd_freebuffers; int bd_hifreebuffers; int bd_lofreebuffers; int bd_maxbufspace; int bd_hibufspace; int bd_lobufspace; int bd_bufspacethresh; int bd_hidirtybuffers; int bd_lodirtybuffers; int bd_dirtybufthresh; int bd_lim; scalar_t__ bd_numdirtybuffers; scalar_t__ bd_bufspace; } ;
struct buf {int b_domain; int b_dep; scalar_t__ b_kvabase; scalar_t__ b_data; scalar_t__ b_xflags; scalar_t__ b_subqueue; int b_qindex; void* b_wcred; void* b_rcred; int b_flags; } ;
typedef scalar_t__ caddr_t ;


 long BKVASIZE ;
 int BUF_DOMAINS ;
 int BUF_LOCKINIT (struct buf*) ;
 int B_INVAL ;
 int KASSERT (int,char*) ;
 int LIST_INIT (int *) ;
 int MAXBSIZE ;
 int MAXPHYS ;
 int MIN (int,int) ;
 int MTX_DEF ;
 int M_WAITOK ;
 void* NOCRED ;
 int QUEUE_EMPTY ;
 int QUEUE_NONE ;
 int bd_init (struct bufdomain*) ;
 int bdirtylock ;
 int bdlock ;
 struct bufdomain* bdomain ;
 int bq_init (int *,int ,int,char*) ;
 int bq_insert (int *,struct buf*,int) ;
 int bqempty ;
 struct buf* buf ;
 int buf_domains ;
 int buf_import ;
 int buf_release ;
 int buf_zone ;
 void* bufdefragcnt ;
 int buffer_arena ;
 void* buffreekvacnt ;
 int bufkva_reclaim ;
 void* bufkvaspace ;
 int bufspacethresh ;
 int bzero (struct buf*,int) ;
 void* counter_u64_alloc (int ) ;
 int dirtybufthresh ;
 void* getnewbufcalls ;
 void* getnewbufrestarts ;
 int hibufspace ;
 int hidirtybuffers ;
 int hifreebuffers ;
 int hirunningspace ;
 int howmany (int,int) ;
 scalar_t__ kva_alloc (int ) ;
 int lmax (int,int) ;
 int lmin (int ,int) ;
 int lobufspace ;
 int lodirtybuffers ;
 int lofreebuffers ;
 int lorunningspace ;
 void* mappingrestarts ;
 int maxbcachebuf ;
 int maxbufmallocspace ;
 int maxbufspace ;
 scalar_t__ mp_maxid ;
 int mp_ncpus ;
 int mtx_init (int *,char*,int *,int ) ;
 int nbuf ;
 void* notbufdflushes ;
 void* numbufallocfails ;
 int numfreebuffers ;
 int rbreqlock ;
 int roundup (int,int) ;
 int uma_zcache_create (char*,int,int *,int *,int *,int *,int ,int ,int *,int ) ;
 scalar_t__ unmapped_buf ;
 int vmem_set_reclaim (int ,int ) ;

void
bufinit(void)
{
 struct buf *bp;
 int i;

 KASSERT(maxbcachebuf >= MAXBSIZE,
     ("maxbcachebuf (%d) must be >= MAXBSIZE (%d)\n", maxbcachebuf,
     MAXBSIZE));
 bq_init(&bqempty, QUEUE_EMPTY, -1, "bufq empty lock");
 mtx_init(&rbreqlock, "runningbufspace lock", ((void*)0), MTX_DEF);
 mtx_init(&bdlock, "buffer daemon lock", ((void*)0), MTX_DEF);
 mtx_init(&bdirtylock, "dirty buf lock", ((void*)0), MTX_DEF);

 unmapped_buf = (caddr_t)kva_alloc(MAXPHYS);


 for (i = 0; i < nbuf; i++) {
  bp = &buf[i];
  bzero(bp, sizeof *bp);
  bp->b_flags = B_INVAL;
  bp->b_rcred = NOCRED;
  bp->b_wcred = NOCRED;
  bp->b_qindex = QUEUE_NONE;
  bp->b_domain = -1;
  bp->b_subqueue = mp_maxid + 1;
  bp->b_xflags = 0;
  bp->b_data = bp->b_kvabase = unmapped_buf;
  LIST_INIT(&bp->b_dep);
  BUF_LOCKINIT(bp);
  bq_insert(&bqempty, bp, 0);
 }
 maxbufspace = (long)nbuf * BKVASIZE;
 hibufspace = lmax(3 * maxbufspace / 4, maxbufspace - maxbcachebuf * 10);
 lobufspace = (hibufspace / 20) * 19;
 bufspacethresh = lobufspace + (hibufspace - lobufspace) / 2;
 hirunningspace = lmax(lmin(roundup(hibufspace / 64, maxbcachebuf),
     16 * 1024 * 1024), 1024 * 1024);
 lorunningspace = roundup((hirunningspace * 2) / 3, maxbcachebuf);
 maxbufmallocspace = hibufspace / 20;





 hidirtybuffers = nbuf / 4 + 20;
 dirtybufthresh = hidirtybuffers * 9 / 10;






 while ((long)hidirtybuffers * BKVASIZE > 3 * hibufspace / 4) {
  hidirtybuffers >>= 1;
 }
 lodirtybuffers = hidirtybuffers / 2;
 lofreebuffers = MIN((nbuf / 25) + (20 * mp_ncpus), 128 * mp_ncpus);
 hifreebuffers = (3 * lofreebuffers) / 2;
 numfreebuffers = nbuf;


 vmem_set_reclaim(buffer_arena, bufkva_reclaim);
 buf_zone = uma_zcache_create("buf free cache", sizeof(struct buf),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), buf_import, buf_release, ((void*)0), 0);






 buf_domains = MIN(howmany(maxbufspace, 256*1024*1024), BUF_DOMAINS);
 for (i = 0 ; i < buf_domains; i++) {
  struct bufdomain *bd;

  bd = &bdomain[i];
  bd_init(bd);
  bd->bd_freebuffers = nbuf / buf_domains;
  bd->bd_hifreebuffers = hifreebuffers / buf_domains;
  bd->bd_lofreebuffers = lofreebuffers / buf_domains;
  bd->bd_bufspace = 0;
  bd->bd_maxbufspace = maxbufspace / buf_domains;
  bd->bd_hibufspace = hibufspace / buf_domains;
  bd->bd_lobufspace = lobufspace / buf_domains;
  bd->bd_bufspacethresh = bufspacethresh / buf_domains;
  bd->bd_numdirtybuffers = 0;
  bd->bd_hidirtybuffers = hidirtybuffers / buf_domains;
  bd->bd_lodirtybuffers = lodirtybuffers / buf_domains;
  bd->bd_dirtybufthresh = dirtybufthresh / buf_domains;

  bd->bd_lim = nbuf / buf_domains / 50 / mp_ncpus;
 }
 getnewbufcalls = counter_u64_alloc(M_WAITOK);
 getnewbufrestarts = counter_u64_alloc(M_WAITOK);
 mappingrestarts = counter_u64_alloc(M_WAITOK);
 numbufallocfails = counter_u64_alloc(M_WAITOK);
 notbufdflushes = counter_u64_alloc(M_WAITOK);
 buffreekvacnt = counter_u64_alloc(M_WAITOK);
 bufdefragcnt = counter_u64_alloc(M_WAITOK);
 bufkvaspace = counter_u64_alloc(M_WAITOK);
}
