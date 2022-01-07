
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scr_stat ;


 int cut_buffer ;
 int sc_paste (int *,int ,int ) ;
 int strlen (int ) ;

void
sc_mouse_paste(scr_stat *scp)
{
    sc_paste(scp, cut_buffer, strlen(cut_buffer));
}
