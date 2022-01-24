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
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,size_t) ; 

__attribute__((used)) static size_t
FUNC3(char *cp, const void *data, size_t len)
{
  size_t padlen;

  padlen = FUNC0(len);
  FUNC1(cp, data, len);
  if (padlen > len)
    FUNC2(cp + len, '\0', padlen - len);

  return padlen;
}