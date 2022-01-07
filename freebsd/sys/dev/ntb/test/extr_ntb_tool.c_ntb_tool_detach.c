
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tool_ctx {int dummy; } ;
typedef int device_t ;


 struct tool_ctx* device_get_softc (int ) ;
 int tool_clear_data (struct tool_ctx*) ;
 int tool_clear_mws (struct tool_ctx*) ;
 int tool_clear_ntb (struct tool_ctx*) ;
 int tool_clear_peers (struct tool_ctx*) ;
 int tool_clear_spads (struct tool_ctx*) ;

__attribute__((used)) static int
ntb_tool_detach(device_t dev)
{
 struct tool_ctx *tc = device_get_softc(dev);

 tool_clear_ntb(tc);

 tool_clear_spads(tc);

 tool_clear_mws(tc);

 tool_clear_peers(tc);

 tool_clear_data(tc);

 return (0);
}
