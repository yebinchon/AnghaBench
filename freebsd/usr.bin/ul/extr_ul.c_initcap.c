
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* CURS_LEFT ;
 int * CURS_RIGHT ;
 void* CURS_UP ;
 void* ENTER_BOLD ;
 void* ENTER_DIM ;
 void* ENTER_REVERSE ;
 void* ENTER_STANDOUT ;
 void* ENTER_UNDERLINE ;
 void* EXIT_ATTRIBUTES ;
 void* EXIT_STANDOUT ;
 void* EXIT_UNDERLINE ;
 void* UNDER_CHAR ;
 int must_use_uc ;
 scalar_t__ tgetflag (char*) ;
 void* tgetstr (char*,char**) ;

__attribute__((used)) static void
initcap(void)
{
 static char tcapbuf[512];
 char *bp = tcapbuf;


 CURS_UP = tgetstr("up", &bp);
 CURS_RIGHT = tgetstr("ri", &bp);
 if (CURS_RIGHT == ((void*)0))
  CURS_RIGHT = tgetstr("nd", &bp);
 CURS_LEFT = tgetstr("le", &bp);
 if (CURS_LEFT == ((void*)0))
  CURS_LEFT = tgetstr("bc", &bp);
 if (CURS_LEFT == ((void*)0) && tgetflag("bs"))
  CURS_LEFT = "\b";

 ENTER_STANDOUT = tgetstr("so", &bp);
 EXIT_STANDOUT = tgetstr("se", &bp);
 ENTER_UNDERLINE = tgetstr("us", &bp);
 EXIT_UNDERLINE = tgetstr("ue", &bp);
 ENTER_DIM = tgetstr("mh", &bp);
 ENTER_BOLD = tgetstr("md", &bp);
 ENTER_REVERSE = tgetstr("mr", &bp);
 EXIT_ATTRIBUTES = tgetstr("me", &bp);

 if (!ENTER_BOLD && ENTER_REVERSE)
  ENTER_BOLD = ENTER_REVERSE;
 if (!ENTER_BOLD && ENTER_STANDOUT)
  ENTER_BOLD = ENTER_STANDOUT;
 if (!ENTER_UNDERLINE && ENTER_STANDOUT) {
  ENTER_UNDERLINE = ENTER_STANDOUT;
  EXIT_UNDERLINE = EXIT_STANDOUT;
 }
 if (!ENTER_DIM && ENTER_STANDOUT)
  ENTER_DIM = ENTER_STANDOUT;
 if (!ENTER_REVERSE && ENTER_STANDOUT)
  ENTER_REVERSE = ENTER_STANDOUT;
 if (!EXIT_ATTRIBUTES && EXIT_STANDOUT)
  EXIT_ATTRIBUTES = EXIT_STANDOUT;
 UNDER_CHAR = tgetstr("uc", &bp);
 must_use_uc = (UNDER_CHAR && !ENTER_UNDERLINE);
}
