
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;


 int ENXIO ;
 int cnputsn (char const*,int) ;
 scalar_t__ kdb_active ;
 int * panicstr ;
 int tty_putstrn (struct tty*,char const*,int) ;

__attribute__((used)) static int
sbuf_tty_drain(void *a, const char *d, int len)
{
 struct tty *tp;
 int rc;

 tp = a;

 if (kdb_active) {
  cnputsn(d, len);
  return (len);
 }
 if (tp != ((void*)0) && panicstr == ((void*)0)) {
  rc = tty_putstrn(tp, d, len);
  if (rc != 0)
   return (-ENXIO);
  return (len);
 }
 return (-ENXIO);
}
