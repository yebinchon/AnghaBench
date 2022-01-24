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
struct sockaddr_un {int /*<<< orphan*/  sun_path; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  LogID0 ; 
 int FUNC2 (int,struct sockaddr const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,int) ; 

int
FUNC4(int s, const struct sockaddr_un *name)
{
  int result;

  FUNC0();
  result = FUNC2(s, (const struct sockaddr *)name, sizeof *name);
  FUNC3(LogID0, "%d = connect(%d, \"%s\", %d)\n",
            result, s, name->sun_path, (int)sizeof(*name));
  FUNC1();
  return result;
}