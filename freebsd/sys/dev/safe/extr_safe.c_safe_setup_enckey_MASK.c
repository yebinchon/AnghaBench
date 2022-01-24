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
struct safe_session {int ses_klen; int /*<<< orphan*/ * ses_key; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct safe_session *ses, caddr_t key)
{
	int i;

	FUNC1(key, ses->ses_key, ses->ses_klen / 8);

	/* PE is little-endian, insure proper byte order */
	for (i = 0; i < FUNC0(ses->ses_key); i++)
		ses->ses_key[i] = FUNC2(ses->ses_key[i]);
}