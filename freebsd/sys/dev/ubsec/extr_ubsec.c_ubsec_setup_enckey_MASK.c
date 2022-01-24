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
struct ubsec_session {int /*<<< orphan*/ * ses_deskey; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int CRYPTO_DES_CBC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC2(struct ubsec_session *ses, int algo, caddr_t key)
{

	/* Go ahead and compute key in ubsec's byte order */
	if (algo == CRYPTO_DES_CBC) {
		FUNC1(key, &ses->ses_deskey[0], 8);
		FUNC1(key, &ses->ses_deskey[2], 8);
		FUNC1(key, &ses->ses_deskey[4], 8);
	} else
		FUNC1(key, ses->ses_deskey, 24);

	FUNC0(ses->ses_deskey[0]);
	FUNC0(ses->ses_deskey[1]);
	FUNC0(ses->ses_deskey[2]);
	FUNC0(ses->ses_deskey[3]);
	FUNC0(ses->ses_deskey[4]);
	FUNC0(ses->ses_deskey[5]);
}