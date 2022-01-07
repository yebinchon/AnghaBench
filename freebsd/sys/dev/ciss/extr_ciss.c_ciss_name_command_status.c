
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
ciss_name_command_status(int status)
{
    switch(status) {
    case 132:
 return("success");
    case 131:
 return("target status");
    case 136:
 return("data underrun");
    case 137:
 return("data overrun");
    case 134:
 return("invalid command");
    case 133:
 return("protocol error");
    case 135:
 return("hardware error");
    case 138:
 return("connection lost");
    case 140:
 return("aborted");
    case 139:
 return("abort failed");
    case 128:
 return("unsolicited abort");
    case 130:
 return("timeout");
    case 129:
 return("unabortable");
    }
    return("unknown status");
}
