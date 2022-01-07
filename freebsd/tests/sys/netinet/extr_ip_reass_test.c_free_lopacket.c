
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lopacket {int dummy; } ;


 int free (struct lopacket*) ;

__attribute__((used)) static void
free_lopacket(struct lopacket *packet)
{

 free(packet);
}
