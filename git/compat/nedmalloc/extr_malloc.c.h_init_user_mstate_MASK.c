#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct malloc_state {int dummy; } ;
typedef  TYPE_2__* mstate ;
typedef  TYPE_3__* mchunkptr ;
struct TYPE_19__ {int /*<<< orphan*/  default_mflags; int /*<<< orphan*/  magic; } ;
struct TYPE_18__ {size_t head; } ;
struct TYPE_16__ {char* base; size_t size; } ;
struct TYPE_17__ {char* least_addr; size_t footprint; size_t max_footprint; int /*<<< orphan*/  top; scalar_t__ exts; scalar_t__ extp; int /*<<< orphan*/  mflags; int /*<<< orphan*/  release_checks; int /*<<< orphan*/  magic; TYPE_1__ seg; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 size_t CINUSE_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_RELEASE_CHECK_RATE ; 
 size_t PINUSE_BIT ; 
 scalar_t__ TOP_FOOT_SIZE ; 
 TYPE_3__* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,size_t) ; 
 TYPE_5__ mparams ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ) ; 
 size_t FUNC10 (int) ; 

__attribute__((used)) static mstate FUNC11(char* tbase, size_t tsize) {
  size_t msize = FUNC10(sizeof(struct malloc_state));
  mchunkptr mn;
  mchunkptr msp = FUNC1(tbase);
  mstate m = (mstate)(FUNC3(msp));
  FUNC8(m, 0, msize);
  (void)FUNC0(&m->mutex);
  msp->head = (msize|PINUSE_BIT|CINUSE_BIT);
  m->seg.base = m->least_addr = tbase;
  m->seg.size = m->footprint = m->max_footprint = tsize;
  m->magic = mparams.magic;
  m->release_checks = MAX_RELEASE_CHECK_RATE;
  m->mflags = mparams.default_mflags;
  m->extp = 0;
  m->exts = 0;
  FUNC4(m);
  FUNC5(m);
  mn = FUNC9(FUNC7(m));
  FUNC6(m, mn, (size_t)((tbase + tsize) - (char*)mn) - TOP_FOOT_SIZE);
  FUNC2(m, m->top);
  return m;
}