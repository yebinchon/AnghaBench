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
struct patch {char* new_name; unsigned int new_mode; unsigned long resultsize; char* result; scalar_t__ conflicted_threeway; } ;
struct apply_state {scalar_t__ update_index; } ;

/* Variables and functions */
 int S_IFREG ; 
 int FUNC0 (struct apply_state*,struct patch*) ; 
 int FUNC1 (struct apply_state*,char*,unsigned int,char*,unsigned long) ; 
 scalar_t__ FUNC2 (struct apply_state*,char*,unsigned int,char*,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct apply_state *state, struct patch *patch)
{
	char *path = patch->new_name;
	unsigned mode = patch->new_mode;
	unsigned long size = patch->resultsize;
	char *buf = patch->result;

	if (!mode)
		mode = S_IFREG | 0644;
	if (FUNC2(state, path, mode, buf, size))
		return -1;

	if (patch->conflicted_threeway)
		return FUNC0(state, patch);
	else if (state->update_index)
		return FUNC1(state, path, mode, buf, size);
	return 0;
}