#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ km_elem; } ;
struct krb5_context {int /*<<< orphan*/  kc_lock; scalar_t__ kc_recv_sign_Kc; scalar_t__ kc_recv_seal_Kc; scalar_t__ kc_recv_seal_Ki; scalar_t__ kc_recv_seal_Ke; scalar_t__ kc_send_sign_Kc; scalar_t__ kc_send_seal_Kc; scalar_t__ kc_send_seal_Ki; scalar_t__ kc_send_seal_Ke; scalar_t__ kc_checksumkey; scalar_t__ kc_encryptkey; scalar_t__ kc_tokenkey; TYPE_1__ kc_msg_order; int /*<<< orphan*/  kc_target_name; int /*<<< orphan*/  kc_source_name; int /*<<< orphan*/  kc_remote_subkey; int /*<<< orphan*/  kc_local_subkey; int /*<<< orphan*/  kc_keyblock; int /*<<< orphan*/  kc_remote_address; int /*<<< orphan*/  kc_local_address; } ;
typedef  scalar_t__ gss_ctx_id_t ;
typedef  TYPE_2__* gss_buffer_t ;
struct TYPE_5__ {int /*<<< orphan*/ * value; scalar_t__ length; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_GSSAPI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(gss_ctx_id_t ctx, gss_buffer_t output_token)
{
	struct krb5_context *kc = (struct krb5_context *)ctx;

	FUNC0(&kc->kc_local_address);
	FUNC0(&kc->kc_remote_address);
	FUNC2(&kc->kc_keyblock);
	FUNC2(&kc->kc_local_subkey);
	FUNC2(&kc->kc_remote_subkey);
	FUNC1(&kc->kc_source_name);
	FUNC1(&kc->kc_target_name);
	if (kc->kc_msg_order.km_elem)
		FUNC3(kc->kc_msg_order.km_elem, M_GSSAPI);
	if (output_token) {
		output_token->length = 0;
		output_token->value = NULL;
	}
	if (kc->kc_tokenkey) {
		FUNC4(kc->kc_tokenkey);
		if (kc->kc_encryptkey) {
			FUNC4(kc->kc_encryptkey);
			FUNC4(kc->kc_checksumkey);
		} else {
			FUNC4(kc->kc_send_seal_Ke);
			FUNC4(kc->kc_send_seal_Ki);
			FUNC4(kc->kc_send_seal_Kc);
			FUNC4(kc->kc_send_sign_Kc);
			FUNC4(kc->kc_recv_seal_Ke);
			FUNC4(kc->kc_recv_seal_Ki);
			FUNC4(kc->kc_recv_seal_Kc);
			FUNC4(kc->kc_recv_sign_Kc);
		}
	}
	FUNC5(&kc->kc_lock);
}