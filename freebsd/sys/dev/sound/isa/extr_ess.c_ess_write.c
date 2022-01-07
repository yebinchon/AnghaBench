
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ess_info {int dummy; } ;


 int ess_cmd1 (struct ess_info*,int ,int) ;

__attribute__((used)) static int
ess_write(struct ess_info *sc, u_char reg, int val)
{
     return ess_cmd1(sc, reg, val);
}
