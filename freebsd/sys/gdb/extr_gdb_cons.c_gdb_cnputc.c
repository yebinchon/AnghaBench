
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbcons {scalar_t__ npending; int* buf; int flush; } ;
struct consdev {struct gdbcons* cn_arg; } ;


 int callout_reset (int *,int,int (*) (struct gdbcons*),struct gdbcons*) ;
 int callout_stop (int *) ;
 scalar_t__ calloutok ;
 int gdb_cnflush (struct gdbcons*) ;
 int * gdb_cur ;
 scalar_t__ gdb_listening ;
 scalar_t__ gdbcons_enable ;
 int hz ;

__attribute__((used)) static void
gdb_cnputc(struct consdev *cp, int c)
{
 struct gdbcons *gc;

 if (gdbcons_enable && gdb_cur != ((void*)0) && gdb_listening) {
  gc = cp->cn_arg;
  if (gc->npending != 0) {




   if (calloutok)
    callout_stop(&gc->flush);
   if (gc->npending == sizeof(gc->buf))
    gdb_cnflush(gc);
  }
  gc->buf[gc->npending++] = c;






  if (c == '\n')
   gdb_cnflush(gc);
  else if (calloutok)
   callout_reset(&gc->flush, hz/4, gdb_cnflush, gc);
 }
}
