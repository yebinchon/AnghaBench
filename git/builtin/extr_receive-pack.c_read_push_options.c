
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct packet_reader {int line; } ;


 scalar_t__ PACKET_READ_NORMAL ;
 scalar_t__ packet_reader_read (struct packet_reader*) ;
 int string_list_append (struct string_list*,int ) ;

__attribute__((used)) static void read_push_options(struct packet_reader *reader,
         struct string_list *options)
{
 while (1) {
  if (packet_reader_read(reader) != PACKET_READ_NORMAL)
   break;

  string_list_append(options, reader->line);
 }
}
