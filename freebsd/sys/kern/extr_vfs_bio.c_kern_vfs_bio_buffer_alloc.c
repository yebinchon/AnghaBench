
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ caddr_t ;


 int BKVASIZE ;
 long INT_MAX ;
 int LONG_MAX ;
 long MAXPHYS ;
 scalar_t__ NSWBUF_MIN ;
 int PAGE_SIZE ;
 long TRANSIENT_DENOM ;
 int bio_transient_maxcnt ;
 void* buf ;
 int maxbcache ;
 int maxbcachebuf_adjust () ;
 scalar_t__ min (int,int) ;
 int nbuf ;
 scalar_t__ nswbuf ;
 int printf (char*,int,long) ;
 scalar_t__ unmapped_buf_allowed ;

caddr_t
kern_vfs_bio_buffer_alloc(caddr_t v, long physmem_est)
{
 int tuned_nbuf;
 long maxbuf, maxbuf_sz, buf_sz, biotmap_sz;





 physmem_est = physmem_est * (PAGE_SIZE / 1024);

 maxbcachebuf_adjust();
 if (nbuf == 0) {
  int factor = 4 * BKVASIZE / 1024;

  nbuf = 50;
  if (physmem_est > 4096)
   nbuf += min((physmem_est - 4096) / factor,
       65536 / factor);
  if (physmem_est > 65536)
   nbuf += min((physmem_est - 65536) * 2 / (factor * 5),
       32 * 1024 * 1024 / (factor * 5));

  if (maxbcache && nbuf > maxbcache / BKVASIZE)
   nbuf = maxbcache / BKVASIZE;
  tuned_nbuf = 1;
 } else
  tuned_nbuf = 0;


 maxbuf = (LONG_MAX / 3) / BKVASIZE;
 if (nbuf > maxbuf) {
  if (!tuned_nbuf)
   printf("Warning: nbufs lowered from %d to %ld\n", nbuf,
       maxbuf);
  nbuf = maxbuf;
 }
 if (bio_transient_maxcnt == 0 && unmapped_buf_allowed) {
  maxbuf_sz = maxbcache != 0 ? maxbcache : maxbuf * BKVASIZE;
  buf_sz = (long)nbuf * BKVASIZE;
  if (buf_sz < maxbuf_sz / TRANSIENT_DENOM *
      (TRANSIENT_DENOM - 1)) {





   biotmap_sz = maxbuf_sz - buf_sz;
  } else {





   biotmap_sz = buf_sz / TRANSIENT_DENOM;
   buf_sz -= biotmap_sz;
  }
  if (biotmap_sz / INT_MAX > MAXPHYS)
   bio_transient_maxcnt = INT_MAX;
  else
   bio_transient_maxcnt = biotmap_sz / MAXPHYS;




  if (bio_transient_maxcnt > 1024)
   bio_transient_maxcnt = 1024;
  if (tuned_nbuf)
   nbuf = buf_sz / BKVASIZE;
 }

 if (nswbuf == 0) {
  nswbuf = min(nbuf / 4, 256);
  if (nswbuf < NSWBUF_MIN)
   nswbuf = NSWBUF_MIN;
 }




 buf = (void *)v;
 v = (caddr_t)(buf + nbuf);

 return(v);
}
