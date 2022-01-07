
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct mallinfo {size_t arena; size_t ordblks; size_t fordblks; size_t keepcost; scalar_t__ uordblks; int usmblks; scalar_t__ hblkhd; int member_9; int member_8; int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__* mstate ;
typedef TYPE_2__* msegmentptr ;
typedef TYPE_3__* mchunkptr ;
struct TYPE_18__ {scalar_t__ head; } ;
struct TYPE_17__ {struct TYPE_17__* next; int base; } ;
struct TYPE_16__ {size_t topsize; scalar_t__ footprint; int max_footprint; TYPE_3__* top; TYPE_2__ seg; } ;


 scalar_t__ FENCEPOST_HEAD ;
 int POSTACTION (TYPE_1__*) ;
 int PREACTION (TYPE_1__*) ;
 size_t SIZE_T_ONE ;
 size_t TOP_FOOT_SIZE ;
 TYPE_3__* align_as_chunk (int ) ;
 int check_malloc_state (TYPE_1__*) ;
 size_t chunksize (TYPE_3__*) ;
 int cinuse (TYPE_3__*) ;
 int ensure_initialization () ;
 scalar_t__ is_initialized (TYPE_1__*) ;
 TYPE_3__* next_chunk (TYPE_3__*) ;
 scalar_t__ segment_holds (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static struct mallinfo internal_mallinfo(mstate m) {
  struct mallinfo nm = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
  ensure_initialization();
  if (!PREACTION(m)) {
    check_malloc_state(m);
    if (is_initialized(m)) {
      size_t nfree = SIZE_T_ONE;
      size_t mfree = m->topsize + TOP_FOOT_SIZE;
      size_t sum = mfree;
      msegmentptr s = &m->seg;
      while (s != 0) {
 mchunkptr q = align_as_chunk(s->base);
 while (segment_holds(s, q) &&
        q != m->top && q->head != FENCEPOST_HEAD) {
   size_t sz = chunksize(q);
   sum += sz;
   if (!cinuse(q)) {
     mfree += sz;
     ++nfree;
   }
   q = next_chunk(q);
 }
 s = s->next;
      }

      nm.arena = sum;
      nm.ordblks = nfree;
      nm.hblkhd = m->footprint - sum;
      nm.usmblks = m->max_footprint;
      nm.uordblks = m->footprint - mfree;
      nm.fordblks = mfree;
      nm.keepcost = m->topsize;
    }

    POSTACTION(m);
  }
  return nm;
}
