#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
typedef  struct fsmheader {size_t code; size_t id; int /*<<< orphan*/  length; } const fsmheader ;
typedef  struct fsmheader u_char ;
struct physical {int /*<<< orphan*/  link; TYPE_1__* dl; } ;
struct mbuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bundle; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LogDEBUG ; 
 int /*<<< orphan*/  LogPHASE ; 
 scalar_t__ FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  MB_CHAPOUT ; 
 int /*<<< orphan*/  PROTO_CHAP ; 
 int /*<<< orphan*/ * chapcodes ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct mbuf*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 struct mbuf* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,struct fsmheader const*,int) ; 

__attribute__((used)) static void
FUNC8(struct physical *physical, u_int code, u_int id,
	   const u_char *ptr, int count, const char *text)
{
  int plen;
  struct fsmheader lh;
  struct mbuf *bp;

  plen = sizeof(struct fsmheader) + count;
  lh.code = code;
  lh.id = id;
  lh.length = FUNC2(plen);
  bp = FUNC6(plen, MB_CHAPOUT);
  FUNC7(FUNC1(bp), &lh, sizeof(struct fsmheader));
  if (count)
    FUNC7(FUNC1(bp) + sizeof(struct fsmheader), ptr, count);
  FUNC4(LogDEBUG, "ChapOutput", bp);
  if (text == NULL)
    FUNC5(LogPHASE, "Chap Output: %s\n", chapcodes[code]);
  else
    FUNC5(LogPHASE, "Chap Output: %s (%s)\n", chapcodes[code], text);
  FUNC3(&physical->link, bp, physical->dl->bundle,
                  FUNC0(&physical->link) - 1, PROTO_CHAP);
}