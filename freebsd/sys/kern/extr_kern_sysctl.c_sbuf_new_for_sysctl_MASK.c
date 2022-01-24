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
struct sysctl_req {int dummy; } ;
struct sbuf {int dummy; } ;

/* Variables and functions */
 int SBUF_FIXEDLEN ; 
 int SBUF_INCLUDENUL ; 
 struct sbuf* FUNC0 (struct sbuf*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,int /*<<< orphan*/ ,struct sysctl_req*) ; 
 int /*<<< orphan*/  sbuf_sysctl_drain ; 

struct sbuf *
FUNC2(struct sbuf *s, char *buf, int length,
    struct sysctl_req *req)
{

	/* Supply a default buffer size if none given. */
	if (buf == NULL && length == 0)
		length = 64;
	s = FUNC0(s, buf, length, SBUF_FIXEDLEN | SBUF_INCLUDENUL);
	FUNC1(s, sbuf_sysctl_drain, req);
	return (s);
}