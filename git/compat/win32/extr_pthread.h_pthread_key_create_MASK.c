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
typedef  int /*<<< orphan*/  pthread_key_t ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  TLS_OUT_OF_INDEXES ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static inline int FUNC1(pthread_key_t *keyp, void (*destructor)(void *value))
{
	return (*keyp = FUNC0()) == TLS_OUT_OF_INDEXES ? EAGAIN : 0;
}