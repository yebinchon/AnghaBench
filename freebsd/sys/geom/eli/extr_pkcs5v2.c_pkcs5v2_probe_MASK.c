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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int tv_sec; scalar_t__ tv_usec; } ;
struct rusage {TYPE_1__ ru_utime; } ;
typedef  int /*<<< orphan*/  salt ;
typedef  int /*<<< orphan*/  key ;

/* Variables and functions */
 int G_ELI_SALTLEN ; 
 int G_ELI_USERKEYLEN ; 
 int /*<<< orphan*/  RUSAGE_SELF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct rusage*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,char const*,int) ; 

__attribute__((used)) static int
FUNC2(int iterations)
{
	uint8_t	key[G_ELI_USERKEYLEN], salt[G_ELI_SALTLEN];
	const char passphrase[] = "passphrase";
	struct rusage start, end;
	int usecs;

	FUNC0(RUSAGE_SELF, &start);
	FUNC1(key, sizeof(key), salt, sizeof(salt), passphrase,
	    iterations);
	FUNC0(RUSAGE_SELF, &end);

	usecs = end.ru_utime.tv_sec - start.ru_utime.tv_sec;
	usecs *= 1000000;
	usecs += end.ru_utime.tv_usec - start.ru_utime.tv_usec;
	return (usecs);
}