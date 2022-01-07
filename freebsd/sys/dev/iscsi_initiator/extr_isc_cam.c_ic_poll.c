
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_sim {int dummy; } ;


 int debug_called (int) ;

__attribute__((used)) static void
ic_poll(struct cam_sim *sim)
{
     debug_called(4);

}
