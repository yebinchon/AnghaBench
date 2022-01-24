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
struct xlp_sec_softc {int dummy; } ;
struct xlp_sec_command {scalar_t__ hashdest; int /*<<< orphan*/  hmacpad; int /*<<< orphan*/  hashlen; int /*<<< orphan*/  hashoff; int /*<<< orphan*/  paramp; int /*<<< orphan*/  ctrlp; int /*<<< orphan*/  hashmode; int /*<<< orphan*/  hashalg; struct cryptodesc* maccrd; } ;
struct cryptodesc {int crd_klen; int /*<<< orphan*/  crd_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  NLM_CIPHER_BYPASS ; 
 int FUNC0 (struct xlp_sec_softc*,struct xlp_sec_command*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xlp_sec_command*) ; 

int
FUNC4(struct xlp_sec_softc *sc, struct xlp_sec_command *cmd)
{
	struct cryptodesc *digdesc = NULL;
	int ret=0;

	digdesc = cmd->maccrd;

	FUNC2(cmd->ctrlp, (digdesc->crd_klen) ? 1 : 0,
	    cmd->hashalg, cmd->hashmode, NLM_CIPHER_BYPASS, 0,
	    NULL, 0, digdesc->crd_key, digdesc->crd_klen >> 3);

	FUNC1(cmd->ctrlp, cmd->paramp,
	    cmd->hashoff, cmd->hashlen, cmd->hmacpad,
	    (unsigned char *)cmd->hashdest);

	FUNC3(cmd);

	ret = FUNC0(sc, cmd);

	return (ret);
}