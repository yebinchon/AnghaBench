#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct prompt {int logmask; struct prompt* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogALERT ; 
 int /*<<< orphan*/  LogERROR ; 
 int LogMaskLocal ; 
 int /*<<< orphan*/  LogWARN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct prompt* promptlist ; 

__attribute__((used)) static void
FUNC1(void)
{
  struct prompt *p;

  LogMaskLocal = FUNC0(LogERROR) | FUNC0(LogALERT) | FUNC0(LogWARN);
  for (p = promptlist; p; p = p->next)
    LogMaskLocal |= p->logmask;
}