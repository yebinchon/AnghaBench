
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cesa_packet {unsigned int cp_size; int cp_copyout; int cp_copyin; scalar_t__ cp_offset; } ;


 int STAILQ_INIT (int *) ;

__attribute__((used)) static void
cesa_start_packet(struct cesa_packet *cp, unsigned int size)
{

 cp->cp_size = size;
 cp->cp_offset = 0;
 STAILQ_INIT(&cp->cp_copyin);
 STAILQ_INIT(&cp->cp_copyout);
}
