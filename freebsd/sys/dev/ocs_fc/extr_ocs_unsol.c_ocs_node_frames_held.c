
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int hold_frames; } ;
typedef TYPE_1__ ocs_node_t ;



__attribute__((used)) static uint8_t
ocs_node_frames_held(void *arg)
{
 ocs_node_t *node = (ocs_node_t *)arg;
 return node->hold_frames;
}
