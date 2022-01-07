
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct octeon_device {int dummy; } ;


 int lio_dev_info (struct octeon_device*,char*,int ,char*,...) ;

__attribute__((used)) static int
lio_dbg_console_print(struct octeon_device *oct, uint32_t console_num,
        char *prefix, char *suffix)
{

 if (prefix != ((void*)0) && suffix != ((void*)0))
  lio_dev_info(oct, "%u: %s%s\n", console_num, prefix, suffix);
 else if (prefix != ((void*)0))
  lio_dev_info(oct, "%u: %s\n", console_num, prefix);
 else if (suffix != ((void*)0))
  lio_dev_info(oct, "%u: %s\n", console_num, suffix);

 return (0);
}
