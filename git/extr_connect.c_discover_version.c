
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_reader {int line; } ;
typedef enum protocol_version { ____Placeholder_protocol_version } protocol_version ;


 int BUG (char*) ;




 int determine_protocol_version_client (int ) ;
 int die_initial_contact (int ) ;
 int packet_reader_peek (struct packet_reader*) ;
 int packet_reader_read (struct packet_reader*) ;
 int process_capabilities_v2 (struct packet_reader*) ;





enum protocol_version discover_version(struct packet_reader *reader)
{
 enum protocol_version version = 131;





 switch (packet_reader_peek(reader)) {
 case 134:
  die_initial_contact(0);
 case 133:
 case 135:
  version = 130;
  break;
 case 132:
  version = determine_protocol_version_client(reader->line);
  break;
 }

 switch (version) {
 case 128:
  process_capabilities_v2(reader);
  break;
 case 129:

  packet_reader_read(reader);
  break;
 case 130:
  break;
 case 131:
  BUG("unknown protocol version");
 }

 return version;
}
