
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbcons {int npending; int flush; } ;
struct consdev {struct gdbcons* cn_arg; } ;


 int callout_init (int *,int) ;
 struct gdbcons state ;

__attribute__((used)) static void
gdb_cninit(struct consdev *cp)
{
 struct gdbcons *c = &state;


 if (c->npending == -1) {
  c->npending = 0;
  callout_init(&c->flush, 1);
  cp->cn_arg = c;
 }
}
