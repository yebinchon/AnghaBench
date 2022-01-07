
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KDB_REQ_DEBUGGER ;
 int KDB_REQ_PANIC ;
 int KDB_REQ_REBOOT ;
 int KEY_CR ;
 int KEY_CRTLB ;
 int KEY_CRTLP ;
 int KEY_CRTLR ;
 int KEY_TILDE ;

__attribute__((used)) static int
kdb_alt_break_state(int key, int *state)
{
 int brk;


 if (key == KEY_CR) {
  *state = 130;
  return (0);
 }

 brk = 0;
 switch (*state) {
 case 130:
  *state = 128;
  if (key == KEY_TILDE)
   *state = 129;
  break;
 case 129:
  *state = 128;
  if (key == KEY_CRTLB)
   brk = KDB_REQ_DEBUGGER;
  else if (key == KEY_CRTLP)
   brk = KDB_REQ_PANIC;
  else if (key == KEY_CRTLR)
   brk = KDB_REQ_REBOOT;
  break;
 case 128:
 default:
  *state = 128;
  break;
 }
 return (brk);
}
