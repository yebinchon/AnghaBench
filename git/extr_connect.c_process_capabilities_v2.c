
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_reader {scalar_t__ status; int line; } ;


 scalar_t__ PACKET_READ_FLUSH ;
 scalar_t__ PACKET_READ_NORMAL ;
 int _ (char*) ;
 int argv_array_push (int *,int ) ;
 int die (int ) ;
 scalar_t__ packet_reader_read (struct packet_reader*) ;
 int server_capabilities_v2 ;

__attribute__((used)) static void process_capabilities_v2(struct packet_reader *reader)
{
 while (packet_reader_read(reader) == PACKET_READ_NORMAL)
  argv_array_push(&server_capabilities_v2, reader->line);

 if (reader->status != PACKET_READ_FLUSH)
  die(_("expected flush after capabilities"));
}
