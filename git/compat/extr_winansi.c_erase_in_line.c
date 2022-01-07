
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ X; } ;
struct TYPE_5__ {scalar_t__ X; } ;
struct TYPE_6__ {TYPE_4__ dwCursorPosition; TYPE_1__ dwSize; } ;
typedef int DWORD ;
typedef TYPE_2__ CONSOLE_SCREEN_BUFFER_INFO ;


 int FillConsoleOutputCharacterA (int ,char,scalar_t__,TYPE_4__,int *) ;
 int GetConsoleScreenBufferInfo (int ,TYPE_2__*) ;
 int console ;

__attribute__((used)) static void erase_in_line(void)
{
 CONSOLE_SCREEN_BUFFER_INFO sbi;
 DWORD dummy;

 if (!console)
  return;

 GetConsoleScreenBufferInfo(console, &sbi);
 FillConsoleOutputCharacterA(console, ' ',
  sbi.dwSize.X - sbi.dwCursorPosition.X, sbi.dwCursorPosition,
  &dummy);
}
