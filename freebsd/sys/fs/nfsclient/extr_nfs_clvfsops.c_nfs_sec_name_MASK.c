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

/* Variables and functions */
 int NFSMNT_INTEGRITY ; 
 int NFSMNT_KERB ; 
 int NFSMNT_PRIVACY ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

__attribute__((used)) static void
FUNC1(char *sec, int *flagsp)
{
	if (!FUNC0(sec, "krb5"))
		*flagsp |= NFSMNT_KERB;
	else if (!FUNC0(sec, "krb5i"))
		*flagsp |= (NFSMNT_KERB | NFSMNT_INTEGRITY);
	else if (!FUNC0(sec, "krb5p"))
		*flagsp |= (NFSMNT_KERB | NFSMNT_PRIVACY);
}