
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct malloc_state {int dummy; } ;
typedef TYPE_2__* mstate ;
typedef TYPE_3__* mchunkptr ;
struct TYPE_19__ {int default_mflags; int magic; } ;
struct TYPE_18__ {size_t head; } ;
struct TYPE_16__ {char* base; size_t size; } ;
struct TYPE_17__ {char* least_addr; size_t footprint; size_t max_footprint; int top; scalar_t__ exts; scalar_t__ extp; int mflags; int release_checks; int magic; TYPE_1__ seg; int mutex; } ;


 size_t CINUSE_BIT ;
 int INITIAL_LOCK (int *) ;
 int MAX_RELEASE_CHECK_RATE ;
 size_t PINUSE_BIT ;
 scalar_t__ TOP_FOOT_SIZE ;
 TYPE_3__* align_as_chunk (char*) ;
 int check_top_chunk (TYPE_2__*,int ) ;
 int chunk2mem (TYPE_3__*) ;
 int disable_contiguous (TYPE_2__*) ;
 int init_bins (TYPE_2__*) ;
 int init_top (TYPE_2__*,TYPE_3__*,scalar_t__) ;
 int mem2chunk (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,size_t) ;
 TYPE_5__ mparams ;
 TYPE_3__* next_chunk (int ) ;
 size_t pad_request (int) ;

__attribute__((used)) static mstate init_user_mstate(char* tbase, size_t tsize) {
  size_t msize = pad_request(sizeof(struct malloc_state));
  mchunkptr mn;
  mchunkptr msp = align_as_chunk(tbase);
  mstate m = (mstate)(chunk2mem(msp));
  memset(m, 0, msize);
  (void)INITIAL_LOCK(&m->mutex);
  msp->head = (msize|PINUSE_BIT|CINUSE_BIT);
  m->seg.base = m->least_addr = tbase;
  m->seg.size = m->footprint = m->max_footprint = tsize;
  m->magic = mparams.magic;
  m->release_checks = MAX_RELEASE_CHECK_RATE;
  m->mflags = mparams.default_mflags;
  m->extp = 0;
  m->exts = 0;
  disable_contiguous(m);
  init_bins(m);
  mn = next_chunk(mem2chunk(m));
  init_top(m, mn, (size_t)((tbase + tsize) - (char*)mn) - TOP_FOOT_SIZE);
  check_top_chunk(m, m->top);
  return m;
}
