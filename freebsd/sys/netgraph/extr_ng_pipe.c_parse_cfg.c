
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct ng_pipe_hookcfg {int ber; int qin_size_limit; int qout_size_limit; int duplicate; int fifo; int wfq; int drr; int droptail; int drophead; int bandwidth; } ;
struct hookinfo {int* ber_p; int noqueue; } ;
typedef TYPE_1__* priv_p ;
struct TYPE_3__ {int delay; } ;


 int MAX_FSIZE ;
 int MAX_OHSIZE ;
 int M_NG_PIPE ;
 int M_WAITOK ;
 int free (int*,int ) ;
 int* malloc (int,int ,int ) ;

__attribute__((used)) static void
parse_cfg(struct ng_pipe_hookcfg *current, struct ng_pipe_hookcfg *new,
 struct hookinfo *hinfo, priv_p priv)
{

 if (new->ber == -1) {
  current->ber = 0;
  if (hinfo->ber_p) {
   free(hinfo->ber_p, M_NG_PIPE);
   hinfo->ber_p = ((void*)0);
  }
 } else if (new->ber >= 1 && new->ber <= 1000000000000) {
  static const uint64_t one = 0x1000000000000;
  uint64_t p0, p;
  uint32_t fsize, i;

  if (hinfo->ber_p == ((void*)0))
   hinfo->ber_p =
       malloc((MAX_FSIZE + MAX_OHSIZE) * sizeof(uint64_t),
       M_NG_PIPE, M_WAITOK);
  current->ber = new->ber;
  p0 = one - one / new->ber;
  p = one;
  for (fsize = 0; fsize < MAX_FSIZE + MAX_OHSIZE; fsize++) {
   hinfo->ber_p[fsize] = p;
   for (i = 0; i < 8; i++)
    p = (p * (p0 & 0xffff) >> 48) +
        (p * ((p0 >> 16) & 0xffff) >> 32) +
        (p * (p0 >> 32) >> 16);
  }
 }

 if (new->qin_size_limit == -1)
  current->qin_size_limit = 0;
 else if (new->qin_size_limit >= 5)
  current->qin_size_limit = new->qin_size_limit;

 if (new->qout_size_limit == -1)
  current->qout_size_limit = 0;
 else if (new->qout_size_limit >= 5)
  current->qout_size_limit = new->qout_size_limit;

 if (new->duplicate == -1)
  current->duplicate = 0;
 else if (new->duplicate > 0 && new->duplicate <= 50)
  current->duplicate = new->duplicate;

 if (new->fifo) {
  current->fifo = 1;
  current->wfq = 0;
  current->drr = 0;
 }

 if (new->wfq) {
  current->fifo = 0;
  current->wfq = 1;
  current->drr = 0;
 }

 if (new->drr) {
  current->fifo = 0;
  current->wfq = 0;

  if (new->drr >= 32)
   current->drr = new->drr;
  else
   current->drr = 2048;
 }

 if (new->droptail) {
  current->droptail = 1;
  current->drophead = 0;
 }

 if (new->drophead) {
  current->droptail = 0;
  current->drophead = 1;
 }

 if (new->bandwidth == -1) {
  current->bandwidth = 0;
  current->fifo = 1;
  current->wfq = 0;
  current->drr = 0;
 } else if (new->bandwidth >= 100 && new->bandwidth <= 1000000000)
  current->bandwidth = new->bandwidth;

 if (current->bandwidth | priv->delay |
     current->duplicate | current->ber)
  hinfo->noqueue = 0;
 else
  hinfo->noqueue = 1;
}
