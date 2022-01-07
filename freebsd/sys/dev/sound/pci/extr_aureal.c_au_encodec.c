
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au_info {int dummy; } ;


 int AU_REG_CODECEN ;
 int au_rd (struct au_info*,int ,int ,int) ;
 int au_wr (struct au_info*,int ,int ,int,int) ;

__attribute__((used)) static void
au_encodec(struct au_info *au, char channel)
{
 au_wr(au, 0, AU_REG_CODECEN,
       au_rd(au, 0, AU_REG_CODECEN, 4) | (1 << (channel + 8)), 4);
}
