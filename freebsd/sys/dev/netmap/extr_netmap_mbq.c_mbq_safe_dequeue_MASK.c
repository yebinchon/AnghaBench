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
struct mbuf {int dummy; } ;
struct mbq {int dummy; } ;

/* Variables and functions */
 struct mbuf* FUNC0 (struct mbq*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbq*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbq*) ; 

struct mbuf *FUNC3(struct mbq *q)
{
    struct mbuf *ret;

    FUNC1(q);
    ret =  FUNC0(q);
    FUNC2(q);

    return ret;
}