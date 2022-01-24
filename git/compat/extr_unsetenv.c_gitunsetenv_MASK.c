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
 size_t FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char*,char const*,size_t) ; 

void FUNC2 (const char *name)
{
#if !defined(__MINGW32__)
     extern char **environ;
#endif
     int src, dst;
     size_t nmln;

     nmln = FUNC0(name);

     for (src = dst = 0; environ[src]; ++src) {
	  size_t enln;
	  enln = FUNC0(environ[src]);
	  if (enln > nmln) {
               /* might match, and can test for '=' safely */
	       if (0 == FUNC1 (environ[src], name, nmln)
		   && '=' == environ[src][nmln])
		    /* matches, so skip */
		    continue;
	  }
	  environ[dst] = environ[src];
	  ++dst;
     }
     environ[dst] = NULL;
}