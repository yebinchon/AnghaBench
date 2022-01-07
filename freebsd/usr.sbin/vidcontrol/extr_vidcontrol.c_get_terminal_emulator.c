
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct term_info {int ti_index; scalar_t__ ti_desc; scalar_t__ ti_name; } ;


 int CONS_GETTERM ;
 scalar_t__ ioctl (int ,int ,struct term_info*) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static int
get_terminal_emulator(int i, struct term_info *tip)
{
 tip->ti_index = i;
 if (ioctl(0, CONS_GETTERM, tip) == 0)
  return (1);
 strlcpy((char *)tip->ti_name, "unknown", sizeof(tip->ti_name));
 strlcpy((char *)tip->ti_desc, "unknown", sizeof(tip->ti_desc));
 return (0);
}
