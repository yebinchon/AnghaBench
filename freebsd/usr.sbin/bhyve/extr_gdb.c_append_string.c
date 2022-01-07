
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int append_packet_data (char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void
append_string(const char *str)
{

 append_packet_data(str, strlen(str));
}
