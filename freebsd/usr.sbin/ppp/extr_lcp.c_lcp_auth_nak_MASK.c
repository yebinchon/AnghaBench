#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  chap81; int /*<<< orphan*/  chap80lm; int /*<<< orphan*/  chap80nt; int /*<<< orphan*/  chap05; int /*<<< orphan*/  pap; } ;
struct lcp {TYPE_2__ cfg; } ;
struct TYPE_3__ {int len; int /*<<< orphan*/  id; } ;
struct fsm_opt {unsigned char* data; TYPE_1__ hdr; } ;
struct fsm_decode {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PROTO_CHAP ; 
 int PROTO_PAP ; 
 int /*<<< orphan*/  TY_AUTHPROTO ; 
 int /*<<< orphan*/  FUNC1 (struct fsm_decode*,struct fsm_opt*) ; 

__attribute__((used)) static int
FUNC2(struct lcp *lcp, struct fsm_decode *dec)
{
  struct fsm_opt nak;

  nak.hdr.id = TY_AUTHPROTO;

  if (FUNC0(lcp->cfg.pap)) {
    nak.hdr.len = 4;
    nak.data[0] = (unsigned char)(PROTO_PAP >> 8);
    nak.data[1] = (unsigned char)PROTO_PAP;
    FUNC1(dec, &nak);
    return 1;
  }

  nak.hdr.len = 5;
  nak.data[0] = (unsigned char)(PROTO_CHAP >> 8);
  nak.data[1] = (unsigned char)PROTO_CHAP;

  if (FUNC0(lcp->cfg.chap05)) {
    nak.data[2] = 0x05;
    FUNC1(dec, &nak);
#ifndef NODES
  } else if (FUNC0(lcp->cfg.chap80nt) ||
             FUNC0(lcp->cfg.chap80lm)) {
    nak.data[2] = 0x80;
    FUNC1(dec, &nak);
  } else if (FUNC0(lcp->cfg.chap81)) {
    nak.data[2] = 0x81;
    FUNC1(dec, &nak);
#endif
  } else {
    return 0;
  }

  return 1;
}