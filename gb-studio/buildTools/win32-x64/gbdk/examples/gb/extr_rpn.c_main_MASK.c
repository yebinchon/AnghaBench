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
typedef  int WORD ;
typedef  int BYTE ;

/* Variables and functions */
#define  NUMBER 128 
 int n ; 
 int FUNC0 () ; 
 scalar_t__ pos ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 () ; 
 scalar_t__ sp ; 
 int FUNC5 () ; 

int FUNC6(void)
{
  BYTE type;
  WORD op2;

  FUNC3("RPN Calculator");
  sp = 0;
  pos = 0;

  while((type = FUNC4()) != 0) {
    switch(type) {
    case NUMBER:
      FUNC2(n);
      break;
    case '+':
      FUNC2(FUNC0() + FUNC0());
      break;
    case '*':
      FUNC2(FUNC0() * FUNC0());
      break;
    case '-':
      op2 = FUNC0();
      FUNC2(FUNC0() - op2);
      break;
    case '/':
      op2 = FUNC0();
      if(op2 != 0)
	FUNC2(FUNC0() / op2);
      else
	FUNC3("Divide by 0");
      break;
    case '\n':
      FUNC1("==> %d\n", FUNC5());
      break;
    }
  }
}