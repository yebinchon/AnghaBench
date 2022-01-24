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
typedef  int /*<<< orphan*/  uint64_t ;
struct xlp_sec_softc {int dummy; } ;
struct xlp_sec_command {scalar_t__ cipheralg; int /*<<< orphan*/  cipherlen; int /*<<< orphan*/  cipheroff; int /*<<< orphan*/  ivlen; int /*<<< orphan*/  ivoff; int /*<<< orphan*/  paramp; int /*<<< orphan*/  ctrlp; int /*<<< orphan*/  ciphermode; scalar_t__ des3key; struct cryptodesc* enccrd; } ;
struct cryptodesc {int crd_flags; int crd_klen; scalar_t__ crd_key; } ;

/* Variables and functions */
 int CRD_F_ENCRYPT ; 
 scalar_t__ NLM_CIPHER_3DES ; 
 int /*<<< orphan*/  NLM_HASH_BYPASS ; 
 int FUNC0 (struct xlp_sec_softc*,struct xlp_sec_command*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xlp_sec_command*) ; 

int
FUNC4(struct xlp_sec_softc *sc, struct xlp_sec_command *cmd)
{
	struct cryptodesc *cipdesc = NULL;
	unsigned char *cipkey = NULL;
	int ret = 0;

	cipdesc = cmd->enccrd;
	cipkey = (unsigned char *)cipdesc->crd_key;
	if (cmd->cipheralg == NLM_CIPHER_3DES) {
		if (!(cipdesc->crd_flags & CRD_F_ENCRYPT)) {
                        uint64_t *k, *tkey;
			k = (uint64_t *)cipdesc->crd_key;
			tkey = (uint64_t *)cmd->des3key;
			tkey[2] = k[0];
			tkey[1] = k[1];
			tkey[0] = k[2];
			cipkey = (unsigned char *)tkey;
		}
	}
	FUNC2(cmd->ctrlp, 0, NLM_HASH_BYPASS, 0,
	    cmd->cipheralg, cmd->ciphermode, cipkey,
	    (cipdesc->crd_klen >> 3), NULL, 0);

	FUNC1(cmd->ctrlp, cmd->paramp,
	    (cipdesc->crd_flags & CRD_F_ENCRYPT) ? 1 : 0, cmd->ivoff,
	    cmd->ivlen, cmd->cipheroff, cmd->cipherlen);
	FUNC3(cmd);

	ret = FUNC0(sc, cmd);
	return (ret);
}