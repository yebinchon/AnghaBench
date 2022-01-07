
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EXT_BUFFER ;
 char* FLAGS (int,int ) ;
 int FORCE_SHORT_XFER ;
 int MANUAL_STATUS ;
 int NO_PIPE_OK ;
 int PIPE_BOF ;
 int PROXY_BUFFER ;
 int SHORT_FRAMES_OK ;
 int SHORT_XFER_OK ;
 int STALL_PIPE ;
 int printf (char*,int,char*,char*,char*,char*,char*,char*,char*,char*,char*) ;

__attribute__((used)) static void
print_flags(uint32_t flags)
{
 printf(" flags %#x <%s%s%s%s%s%s%s%s%s0>\n",
     flags,
     FLAGS(flags, FORCE_SHORT_XFER),
     FLAGS(flags, SHORT_XFER_OK),
     FLAGS(flags, SHORT_FRAMES_OK),
     FLAGS(flags, PIPE_BOF),
     FLAGS(flags, PROXY_BUFFER),
     FLAGS(flags, EXT_BUFFER),
     FLAGS(flags, MANUAL_STATUS),
     FLAGS(flags, NO_PIPE_OK),
     FLAGS(flags, STALL_PIPE));
}
