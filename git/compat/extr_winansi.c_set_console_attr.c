
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;


 int BACKGROUND_ALL ;
 int BACKGROUND_BLUE ;
 int BACKGROUND_GREEN ;
 int BACKGROUND_RED ;
 int FOREGROUND_ALL ;
 int FOREGROUND_BLUE ;
 int FOREGROUND_GREEN ;
 int FOREGROUND_RED ;
 int SetConsoleTextAttribute (int ,int) ;
 int attr ;
 int console ;
 scalar_t__ negative ;

__attribute__((used)) static void set_console_attr(void)
{
 WORD attributes = attr;
 if (negative) {
  attributes &= ~FOREGROUND_ALL;
  attributes &= ~BACKGROUND_ALL;



  if (attr & FOREGROUND_RED)
   attributes |= BACKGROUND_RED;
  if (attr & FOREGROUND_GREEN)
   attributes |= BACKGROUND_GREEN;
  if (attr & FOREGROUND_BLUE)
   attributes |= BACKGROUND_BLUE;

  if (attr & BACKGROUND_RED)
   attributes |= FOREGROUND_RED;
  if (attr & BACKGROUND_GREEN)
   attributes |= FOREGROUND_GREEN;
  if (attr & BACKGROUND_BLUE)
   attributes |= FOREGROUND_BLUE;
 }
 SetConsoleTextAttribute(console, attributes);
}
