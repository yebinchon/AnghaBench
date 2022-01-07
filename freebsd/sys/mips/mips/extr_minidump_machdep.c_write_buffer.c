
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct dumperinfo {scalar_t__ maxiosize; } ;


 int ECANCELED ;
 scalar_t__ PAGE_SIZE ;
 int WD_LASTVAL ;
 int cncheckc () ;
 size_t counter ;
 int dump_append (struct dumperinfo*,char*,int ,size_t) ;
 int dumpsize ;
 size_t min (scalar_t__,size_t) ;
 int panic (char*) ;
 int printf (char*) ;
 size_t progress ;
 int report_progress (size_t,int ) ;
 int wdog_kern_pat (int ) ;

__attribute__((used)) static int
write_buffer(struct dumperinfo *di, char *ptr, size_t sz)
{
 size_t len;
 int error, c;
 u_int maxdumpsz;

 maxdumpsz = di->maxiosize;

 if (maxdumpsz == 0)
  maxdumpsz = PAGE_SIZE;

 error = 0;

 while (sz) {
  len = min(maxdumpsz, sz);
  counter += len;
  progress -= len;

  if (counter >> 22) {
   report_progress(progress, dumpsize);
   counter &= (1<<22) - 1;
  }

  wdog_kern_pat(WD_LASTVAL);

  if (ptr) {
   error = dump_append(di, ptr, 0, len);
   if (error)
    return (error);
   ptr += len;
   sz -= len;
  } else {
   panic("pa is not supported");
  }


  c = cncheckc();
  if (c == 0x03)
   return (ECANCELED);
  if (c != -1)
   printf(" (CTRL-C to abort) ");
 }

 return (0);
}
