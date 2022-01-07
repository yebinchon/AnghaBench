
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dn_queue {TYPE_1__* fs; } ;
struct dn_fs {int* par; int index; int n_flows; int cur; int first_flow; int next_flow; int y; int base_y; int next_y; } ;
struct cfg_s {int flows; int flowsets; char const* fs_config; int wsum; int max_y; TYPE_1__* fs; } ;
struct TYPE_2__ {struct dn_fs fs; } ;


 int D (char*,...) ;
 int DX (int,char*,...) ;
 struct dn_queue* FI2Q (struct cfg_s*,int) ;
 int getnum (char*,char**,char*) ;
 char* strdup (char const*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static void
parse_flowsets(struct cfg_s *c, const char *fs)
{
 char *s, *cur, *next;
 int n_flows = 0, n_fs = 0, wsum = 0;
 int i, j;
 struct dn_fs *prev = ((void*)0);
 int pass = (fs == ((void*)0));

 DX(3, "--- pass %d flows %d flowsets %d", pass, c->flows, c->flowsets);
 if (fs != ((void*)0)) {
  if (c->fs_config)
   D("warning, overwriting fs %s with %s",
    c->fs_config, fs);
  c->fs_config = fs;
 }
 s = c->fs_config ? strdup(c->fs_config) : ((void*)0);
 if (s == ((void*)0)) {
  if (pass == 0)
   D("no fsconfig");
  return;
 }
 for (next = s; (cur = strsep(&next, ","));) {
  char *p = ((void*)0);
  int w, w_h, w_steps, wi;
  int len, len_h, l_steps, li;
  int flows;

  w = getnum(strsep(&cur, ":"), &p, "weight");
  if (w <= 0)
   w = 1;
  w_h = p ? getnum(p+1, &p, "weight_max") : w;
  w_steps = p ? getnum(p+1, &p, "w_steps") : (w_h == w ?1:2);
  len = getnum(strsep(&cur, ":"), &p, "len");
  if (len <= 0)
   len = 1000;
  len_h = p ? getnum(p+1, &p, "len_max") : len;
  l_steps = p ? getnum(p+1, &p, "l_steps") : (len_h == len ? 1 : 2);
  flows = getnum(strsep(&cur, ":"), ((void*)0), "flows");
  if (flows == 0)
   flows = 1;
  DX(4, "weight %d..%d (%d) len %d..%d (%d) flows %d",
   w, w_h, w_steps, len, len_h, l_steps, flows);
  if (w == 0 || w_h < w || len == 0 || len_h < len ||
    flows == 0) {
   DX(4,"wrong parameters %s", s);
   return;
  }
  n_flows += flows * w_steps * l_steps;
  for (i = 0; i < w_steps; i++) {
   wi = w + ((w_h - w)* i)/(w_steps == 1 ? 1 : (w_steps-1));
   for (j = 0; j < l_steps; j++, n_fs++) {
    struct dn_fs *fs = &c->fs[n_fs].fs;
    int x;

    li = len + ((len_h - len)* j)/(l_steps == 1 ? 1 : (l_steps-1));
    x = (wi*2048)/li;
    DX(3, "----- fs %4d weight %4d lmax %4d X %4d flows %d",
     n_fs, wi, li, x, flows);
    if (pass == 0)
     continue;
    if (c->fs == ((void*)0) || c->flowsets <= n_fs) {
     D("error in number of flowsets");
     return;
    }
    wsum += wi * flows;
    fs->par[0] = wi;
    fs->par[1] = li;
    fs->index = n_fs;
    fs->n_flows = flows;
    fs->cur = fs->first_flow = prev==((void*)0) ? 0 : prev->next_flow;
    fs->next_flow = fs->first_flow + fs->n_flows;
    fs->y = x * flows;
    fs->base_y = (prev == ((void*)0)) ? 0 : prev->next_y;
    fs->next_y = fs->base_y + fs->y;
    prev = fs;
   }
  }
 }
 c->flows = n_flows;
 c->flowsets = n_fs;
 c->wsum = wsum;
 if (pass == 0)
  return;


 DX(1,"%d flows on %d flowsets", c->flows, c->flowsets);




 for (i=0; i < c->flowsets; i++) {
  struct dn_fs *fs = &c->fs[i].fs;
  DX(1, "fs %3d w %5d l %4d flow %5d .. %5d y %6d .. %6d",
   i, fs->par[0], fs->par[1],
   fs->first_flow, fs->next_flow,
   fs->base_y, fs->next_y);
  for (j = fs->first_flow; j < fs->next_flow; j++) {
   struct dn_queue *q = FI2Q(c, j);
   q->fs = &c->fs[i];
  }
 }
}
