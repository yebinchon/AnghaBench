
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long htonl (int ) ;
 int random () ;

__attribute__((used)) static void
fill_buffer(long *buffer, int len)
{
 int i;

 for (i = 0; i < len; i++)
  buffer[i] = htonl(random());
}
