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
typedef  scalar_t__ uint32_t ;
struct svc_rpc_gss_client {scalar_t__ cl_seqlast; int* cl_seqmask; int /*<<< orphan*/  cl_lock; } ;

/* Variables and functions */
 int SVC_RPC_GSS_SEQWINDOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct svc_rpc_gss_client *client, uint32_t seq)
{
	int offset, i, word, bit;
	uint32_t carry, newcarry;

	FUNC0(&client->cl_lock);
	if (seq > client->cl_seqlast) {
		/*
		 * This request has a sequence number greater
		 * than any we have seen so far. Advance the
		 * seq window and set bit zero of the window
		 * (which corresponds to the new sequence
		 * number)
		 */
		offset = seq - client->cl_seqlast;
		while (offset > 32) {
			for (i = (SVC_RPC_GSS_SEQWINDOW / 32) - 1;
			     i > 0; i--) {
				client->cl_seqmask[i] = client->cl_seqmask[i-1];
			}
			client->cl_seqmask[0] = 0;
			offset -= 32;
		}
		carry = 0;
		for (i = 0; i < SVC_RPC_GSS_SEQWINDOW / 32; i++) {
			newcarry = client->cl_seqmask[i] >> (32 - offset);
			client->cl_seqmask[i] =
				(client->cl_seqmask[i] << offset) | carry;
			carry = newcarry;
		}
		client->cl_seqmask[0] |= 1;
		client->cl_seqlast = seq;
	} else {
		offset = client->cl_seqlast - seq;
		word = offset / 32;
		bit = offset % 32;
		client->cl_seqmask[word] |= (1 << bit);
	}
	FUNC1(&client->cl_lock);
}