
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union mly_command_packet {int dummy; } mly_command_packet ;
struct mly_command {TYPE_2__* mc_packet; int mc_packetphys; int * mc_private; int * mc_complete; scalar_t__ mc_flags; int * mc_data; } ;
struct TYPE_3__ {int maximum_sense_size; int sense_buffer_address; } ;
struct TYPE_4__ {TYPE_1__ generic; } ;


 int debug_called (int) ;
 int mly_enqueue_free (struct mly_command*) ;

__attribute__((used)) static void
mly_release_command(struct mly_command *mc)
{
    debug_called(3);





    mc->mc_data = ((void*)0);
    mc->mc_flags = 0;
    mc->mc_complete = ((void*)0);
    mc->mc_private = ((void*)0);





    mc->mc_packet->generic.sense_buffer_address = mc->mc_packetphys;
    mc->mc_packet->generic.maximum_sense_size = sizeof(union mly_command_packet);

    mly_enqueue_free(mc);
}
