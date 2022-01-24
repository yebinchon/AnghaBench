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
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int) ; 

__attribute__((used)) static void      /* IN 8 octets      IN 16 octets     OUT 24 octets */
FUNC3(u_char *challenge, u_char *pwHash, u_char *response)
{
    char    ZPasswordHash[21];

    FUNC2(ZPasswordHash, '\0', sizeof ZPasswordHash);
    FUNC1(ZPasswordHash, pwHash, 16);

    FUNC0(challenge, ZPasswordHash +  0, response + 0);
    FUNC0(challenge, ZPasswordHash +  7, response + 8);
    FUNC0(challenge, ZPasswordHash + 14, response + 16);
}