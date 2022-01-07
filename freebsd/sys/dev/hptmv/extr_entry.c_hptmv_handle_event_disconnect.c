
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hptmv_handle_event (void*,int) ;

__attribute__((used)) static void
hptmv_handle_event_disconnect(void *data)
{
  hptmv_handle_event (data, 1);
}
