
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buf ;
struct TYPE_2__ {int v_access; } ;


 size_t BEAUTIFY ;
 int CHANGED ;
 size_t HARDWAREFLOW ;
 scalar_t__ HD ;
 size_t LECHO ;
 size_t LINEDISC ;
 int NOSTR ;
 size_t PARITY ;
 size_t RECORD ;
 size_t SCRIPT ;
 int SIGSYS ;
 size_t TAND ;
 scalar_t__ boolean (int ) ;
 int hardwareflow (char*) ;
 int kill (int ,int ) ;
 int linedisc (int ) ;
 scalar_t__ prompt (char*,char*,int) ;
 int setparity (int ) ;
 int setscript () ;
 int tandem (char*) ;
 int tipout_pid ;
 int value (size_t) ;
 int vlex (char*) ;
 TYPE_1__* vtable ;

void
variable(int c)
{
 char buf[256];

 if (prompt("[set] ", buf, sizeof(buf)))
  return;
 vlex(buf);
 if (vtable[BEAUTIFY].v_access&CHANGED) {
  vtable[BEAUTIFY].v_access &= ~CHANGED;
  kill(tipout_pid, SIGSYS);
 }
 if (vtable[SCRIPT].v_access&CHANGED) {
  vtable[SCRIPT].v_access &= ~CHANGED;
  setscript();




  if (vtable[RECORD].v_access&CHANGED)
   vtable[RECORD].v_access &= ~CHANGED;
 }
 if (vtable[RECORD].v_access&CHANGED) {
  vtable[RECORD].v_access &= ~CHANGED;
  if (boolean(value(SCRIPT)))
   setscript();
 }
 if (vtable[TAND].v_access&CHANGED) {
  vtable[TAND].v_access &= ~CHANGED;
  if (boolean(value(TAND)))
   tandem("on");
  else
   tandem("off");
 }
 if (vtable[LECHO].v_access&CHANGED) {
  vtable[LECHO].v_access &= ~CHANGED;
  HD = boolean(value(LECHO));
 }
 if (vtable[PARITY].v_access&CHANGED) {
  vtable[PARITY].v_access &= ~CHANGED;
  setparity(NOSTR);
 }
 if (vtable[HARDWAREFLOW].v_access&CHANGED) {
  vtable[HARDWAREFLOW].v_access &= ~CHANGED;
  if (boolean(value(HARDWAREFLOW)))
   hardwareflow("on");
  else
   hardwareflow("off");
 }
 if (vtable[LINEDISC].v_access&CHANGED) {
  vtable[LINEDISC].v_access &= ~CHANGED;
  linedisc(NOSTR);
 }
}
