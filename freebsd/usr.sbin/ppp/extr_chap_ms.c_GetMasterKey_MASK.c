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
typedef  int /*<<< orphan*/  SHA_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

void
FUNC4(char *PasswordHashHash, char *NTResponse, char *MasterKey)
{
  char Digest[SHA_DIGEST_LENGTH];
  SHA_CTX Context;
  static char Magic1[27] =
      {0x54, 0x68, 0x69, 0x73, 0x20, 0x69, 0x73, 0x20, 0x74,
       0x68, 0x65, 0x20, 0x4d, 0x50, 0x50, 0x45, 0x20, 0x4d,
       0x61, 0x73, 0x74, 0x65, 0x72, 0x20, 0x4b, 0x65, 0x79};

  FUNC1(&Context);
  FUNC2(&Context, PasswordHashHash, 16);
  FUNC2(&Context, NTResponse, 24);
  FUNC2(&Context, Magic1, 27);
  FUNC0(Digest, &Context);
  FUNC3(MasterKey, Digest, 16);
}