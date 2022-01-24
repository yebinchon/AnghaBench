#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  gss_qop_t ;
typedef  int /*<<< orphan*/  gss_ctx_id_t ;
typedef  TYPE_1__* gss_buffer_t ;
struct TYPE_4__ {int /*<<< orphan*/  value; int /*<<< orphan*/  length; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_NO_CONTEXT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const,scalar_t__*,int,int /*<<< orphan*/ ,struct mbuf**,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLEN ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_GSSAPI ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

OM_uint32
FUNC8(OM_uint32 *minor_status,
    const gss_ctx_id_t ctx,
    int conf_req_flag,
    gss_qop_t qop_req,
    const gss_buffer_t input_message_buffer,
    int *conf_state,
    gss_buffer_t output_message_buffer)
{
	OM_uint32 maj_stat;
	struct mbuf *m;

	if (!ctx) {
		*minor_status = 0;
		return (GSS_S_NO_CONTEXT);
	}

	FUNC2(m, M_WAITOK, MT_DATA);
	if (input_message_buffer->length > MLEN)
		FUNC1(m, M_WAITOK);
	FUNC3(m, input_message_buffer->length, input_message_buffer->value);

	maj_stat = FUNC0(ctx, minor_status, conf_req_flag, qop_req,
	    &m, conf_state);

	/*
	 * On success, m is the wrapped message, on failure, m is
	 * freed.
	 */
	if (maj_stat == GSS_S_COMPLETE) {
		output_message_buffer->length = FUNC6(m, NULL);
		output_message_buffer->value =
			FUNC7(output_message_buffer->length,
			    M_GSSAPI, M_WAITOK);
		FUNC4(m, 0, output_message_buffer->length,
		    output_message_buffer->value);
		FUNC5(m);
	}

	return (maj_stat);
}