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
typedef  int UBYTE ;

/* Variables and functions */
 scalar_t__ IO_IDLE ; 
 scalar_t__ IO_RECEIVING ; 
 scalar_t__ IO_SENDING ; 
 int J_A ; 
 int J_B ; 
 int J_SELECT ; 
 int J_START ; 
 int _io_in ; 
 char _io_out ; 
 scalar_t__ _io_status ; 
 char* buffer ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* str ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int FUNC8(void)
{
  UBYTE i, n = 0;
  char *s;

  FUNC3("Byte");
  FUNC3("  A      : Send");
  FUNC3("  B      : Receive");
  FUNC3("String");
  FUNC3("  START  : Send");
  FUNC3("  SELECT : Receive");

  while(1) {
    i = FUNC6(J_A | J_B | J_START | J_SELECT);
    FUNC7();

    if(i == J_A) {
      /* Send 1 byte */
      FUNC1("Sending b... ");
      _io_out = n++;
      FUNC5();
      /* Wait for IO completion... */
      while(_io_status == IO_SENDING && FUNC0() == 0)
	;
      if(_io_status == IO_IDLE)
	FUNC1("OK\n");
      else
	FUNC1("#%d\n", _io_status);
    } else if(i == J_B) {
      /* Receive 1 byte */
      FUNC1("Receiving b... ");
      FUNC4();
      /* Wait for IO completion... */
      while(_io_status == IO_RECEIVING && FUNC0() == 0)
	;
      if(_io_status == IO_IDLE)
	FUNC1("OK\n%d\n", _io_in);
      else
	FUNC1("#%d\n", _io_status);
    } else if(i == J_START) {
      /* Send a string */
      FUNC1("Sending s... ");
      s = str;
      while(1) {
	_io_out = *s;
	do {
	  FUNC5();
	  /* Wait for IO completion... */
	  while(_io_status == IO_SENDING && FUNC0() == 0)
	    ;
	} while(_io_status != IO_IDLE && FUNC0() == 0);
	if(_io_status != IO_IDLE) {
	  FUNC1("#%d\n", _io_status);
	  break;
	}
	if(*s == 0)
	  break;
	s++;
      }
      if(_io_status == IO_IDLE)
	FUNC1("OK\n");
    } else if(i == J_SELECT) {
      /* Receive a string */
      FUNC1("Receiving s... ");
      s = buffer;
      while(1) {
	FUNC4();
	/* Wait for IO completion... */
	while(_io_status == IO_RECEIVING && FUNC0() == 0)
	  ;
	if(_io_status != IO_IDLE) {
	  FUNC1("#%d\n", _io_status);
	  break;
	}
	FUNC2(_io_in);
	*s = _io_in;
	if(*s == 0)
	  break;
	s++;
      }
      if(_io_status == IO_IDLE)
	FUNC1("OK\n%s\n", buffer);
    }
    /* In case of user cancellation */
    FUNC7();
  }
}