
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfsync_state {int dummy; } ;
struct pf_state {int dummy; } ;


 int pfsync_state_export (struct pfsync_state*,struct pf_state*) ;

__attribute__((used)) static void
pfsync_out_state(struct pf_state *st, void *buf)
{
 struct pfsync_state *sp = buf;

 pfsync_state_export(sp, st);
}
