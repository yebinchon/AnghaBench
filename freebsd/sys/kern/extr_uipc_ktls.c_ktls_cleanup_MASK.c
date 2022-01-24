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
struct TYPE_2__ {int auth_key_len; int cipher_key_len; int /*<<< orphan*/ * iv; int /*<<< orphan*/ * cipher_key; int /*<<< orphan*/ * auth_key; int /*<<< orphan*/  cipher_algorithm; } ;
struct ktls_session {int mode; TYPE_1__ params; int /*<<< orphan*/  snd_tag; int /*<<< orphan*/  (* free ) (struct ktls_session*) ;int /*<<< orphan*/ * be; } ;

/* Variables and functions */
#define  CRYPTO_AES_CBC 132 
#define  CRYPTO_AES_NIST_GCM_16 131 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_KTLS ; 
#define  TCP_TLS_MODE_IFNET 130 
#define  TCP_TLS_MODE_SW 129 
#define  TCP_TLS_MODE_TOE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ktls_ifnet_cbc ; 
 int /*<<< orphan*/  ktls_ifnet_gcm ; 
 int /*<<< orphan*/  ktls_offload_active ; 
 int /*<<< orphan*/  ktls_sw_cbc ; 
 int /*<<< orphan*/  ktls_sw_gcm ; 
 int /*<<< orphan*/  ktls_toe_cbc ; 
 int /*<<< orphan*/  ktls_toe_gcm ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ktls_session*) ; 

__attribute__((used)) static void
FUNC6(struct ktls_session *tls)
{

	FUNC1(ktls_offload_active, -1);
	switch (tls->mode) {
	case TCP_TLS_MODE_SW:
		FUNC0(tls->be != NULL);
		switch (tls->params.cipher_algorithm) {
		case CRYPTO_AES_CBC:
			FUNC1(ktls_sw_cbc, -1);
			break;
		case CRYPTO_AES_NIST_GCM_16:
			FUNC1(ktls_sw_gcm, -1);
			break;
		}
		tls->free(tls);
		break;
	case TCP_TLS_MODE_IFNET:
		switch (tls->params.cipher_algorithm) {
		case CRYPTO_AES_CBC:
			FUNC1(ktls_ifnet_cbc, -1);
			break;
		case CRYPTO_AES_NIST_GCM_16:
			FUNC1(ktls_ifnet_gcm, -1);
			break;
		}
		FUNC4(tls->snd_tag);
		break;
#ifdef TCP_OFFLOAD
	case TCP_TLS_MODE_TOE:
		switch (tls->params.cipher_algorithm) {
		case CRYPTO_AES_CBC:
			counter_u64_add(ktls_toe_cbc, -1);
			break;
		case CRYPTO_AES_NIST_GCM_16:
			counter_u64_add(ktls_toe_gcm, -1);
			break;
		}
		break;
#endif
	}
	if (tls->params.auth_key != NULL) {
		FUNC2(tls->params.auth_key, tls->params.auth_key_len);
		FUNC3(tls->params.auth_key, M_KTLS);
		tls->params.auth_key = NULL;
		tls->params.auth_key_len = 0;
	}
	if (tls->params.cipher_key != NULL) {
		FUNC2(tls->params.cipher_key,
		    tls->params.cipher_key_len);
		FUNC3(tls->params.cipher_key, M_KTLS);
		tls->params.cipher_key = NULL;
		tls->params.cipher_key_len = 0;
	}
	FUNC2(tls->params.iv, sizeof(tls->params.iv));
}