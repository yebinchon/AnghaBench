
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ nlm_setup_xlp_board (int ) ;

int nlm_board_info_setup(void)
{
 if (nlm_setup_xlp_board(0) != 0)
  return (-1);
 return (0);
}
