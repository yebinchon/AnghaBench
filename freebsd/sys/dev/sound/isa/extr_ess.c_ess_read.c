
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ess_info {int dummy; } ;


 scalar_t__ ess_cmd (struct ess_info*,int) ;
 int ess_get_byte (struct ess_info*) ;

__attribute__((used)) static int
ess_read(struct ess_info *sc, u_char reg)
{
     return (ess_cmd(sc, 0xc0) && ess_cmd(sc, reg))? ess_get_byte(sc) : -1;
}
