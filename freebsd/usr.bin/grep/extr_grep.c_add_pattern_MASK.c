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
struct pat {int dummy; } ;
struct TYPE_4__ {char* pat; size_t len; } ;

/* Variables and functions */
 char* FUNC0 (size_t) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int) ; 
 int matchall ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 TYPE_1__* pattern ; 
 int pattern_sz ; 
 int patterns ; 

__attribute__((used)) static void
FUNC3(char *pat, size_t len)
{

	/* Check if we can do a shortcut */
	if (len == 0) {
		matchall = true;
		return;
	}
	/* Increase size if necessary */
	if (patterns == pattern_sz) {
		pattern_sz *= 2;
		pattern = FUNC1(pattern, ++pattern_sz *
		    sizeof(struct pat));
	}
	if (len > 0 && pat[len - 1] == '\n')
		--len;
	/* pat may not be NUL-terminated */
	pattern[patterns].pat = FUNC0(len + 1);
	FUNC2(pattern[patterns].pat, pat, len);
	pattern[patterns].len = len;
	pattern[patterns].pat[len] = '\0';
	++patterns;
}