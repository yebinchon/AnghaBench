
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int msg_start ;
 int set_bkg_tiles (int,int,int,int,int ) ;

void hide_msg()
{
  set_bkg_tiles( 6, 9, 8, 1, msg_start );
}
