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
typedef  union authctx {int dummy; } authctx ;
struct TYPE_2__ {int /*<<< orphan*/  pads; struct auth_hash* auth_hash; } ;
struct ccr_session {TYPE_1__ hmac; } ;
struct auth_hash {int /*<<< orphan*/  (* Init ) (union authctx*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union authctx*) ; 
 int /*<<< orphan*/  FUNC1 (int,union authctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct ccr_session *s, int cri_alg)
{
	union authctx auth_ctx;
	struct auth_hash *axf;

	axf = s->hmac.auth_hash;
	axf->Init(&auth_ctx);
	FUNC1(cri_alg, &auth_ctx, s->hmac.pads);
}