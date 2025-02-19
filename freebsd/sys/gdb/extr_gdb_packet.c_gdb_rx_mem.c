
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* jmp_buf ;


 int C2N (int ) ;
 void* gdb_begin_write () ;
 int gdb_end_write (void*) ;
 int * gdb_rxp ;
 size_t gdb_rxsz ;
 int kdb_cpu_sync_icache (unsigned char*,size_t) ;
 void* kdb_jmpbuf (void*) ;
 int setjmp (void*) ;

int
gdb_rx_mem(unsigned char *addr, size_t size)
{
 unsigned char *p;
 void *prev;
 void *wctx;
 jmp_buf jb;
 size_t cnt;
 int ret;
 unsigned char c;

 if (size * 2 != gdb_rxsz)
  return (-1);

 wctx = gdb_begin_write();
 prev = kdb_jmpbuf(jb);
 ret = setjmp(jb);
 if (ret == 0) {
  p = addr;
  cnt = size;
  while (cnt-- > 0) {
   c = (C2N(gdb_rxp[0]) << 4) & 0xf0;
   c |= C2N(gdb_rxp[1]) & 0x0f;
   *p++ = c;
   gdb_rxsz -= 2;
   gdb_rxp += 2;
  }
  kdb_cpu_sync_icache(addr, size);
 }
 (void)kdb_jmpbuf(prev);
 gdb_end_write(wctx);
 return ((ret == 0) ? 1 : 0);
}
