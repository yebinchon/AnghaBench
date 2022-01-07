
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NG_HCI_EVENT_MASK_DEFAULT ;
 int NG_HCI_EVENT_MASK_LE ;
 int NG_HCI_LE_EVENT_MASK_ALL ;
 int OK ;
 int USAGE ;
 int set_event_mask (int,int) ;
 int set_le_event_mask (int,int ) ;
 scalar_t__ strcasecmp (char*,char*) ;

__attribute__((used)) static
int le_enable(int s, int argc, char *argv[])
{
 if (argc != 1)
  return USAGE;

 if (strcasecmp(argv[0], "enable") == 0) {
  set_event_mask(s, NG_HCI_EVENT_MASK_DEFAULT |
          NG_HCI_EVENT_MASK_LE);
  set_le_event_mask(s, NG_HCI_LE_EVENT_MASK_ALL);
 } else if (strcasecmp(argv[0], "disble") == 0)
  set_event_mask(s, NG_HCI_EVENT_MASK_DEFAULT);
 else
  return USAGE;

 return OK;
}
