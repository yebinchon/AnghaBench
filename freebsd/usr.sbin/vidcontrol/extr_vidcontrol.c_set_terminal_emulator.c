
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct term_info {char* ti_name; char* ti_desc; } ;


 int CONS_SETTERM ;
 int get_terminal_emulator (int ,struct term_info*) ;
 scalar_t__ ioctl (int ,int ,struct term_info*) ;
 int printf (char*,char*,char*,char*,char*) ;
 int strlcpy (char*,char const*,int) ;
 int warn (char*,char const*) ;

__attribute__((used)) static void
set_terminal_emulator(const char *name)
{
 struct term_info old_ti, ti;

 get_terminal_emulator(0, &old_ti);
 strlcpy((char *)ti.ti_name, name, sizeof(ti.ti_name));
 if (ioctl(0, CONS_SETTERM, &ti) != 0)
  warn("SETTERM '%s'", name);
 get_terminal_emulator(0, &ti);
 printf("%s (%s) -> %s (%s)\n", old_ti.ti_name, old_ti.ti_desc,
     ti.ti_name, ti.ti_desc);
}
