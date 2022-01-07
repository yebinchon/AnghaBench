
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CISS_LD_NONEXISTENT ;
 int CISS_LD_OFFLINE ;
 int CISS_LD_ONLINE ;
__attribute__((used)) static int
ciss_decode_ldrive_status(int status)
{
    switch(status) {
    case 133:
 return(CISS_LD_NONEXISTENT);

    case 132:
    case 135:
    case 130:
    case 129:
    case 137:
    case 131:
 return(CISS_LD_ONLINE);

    case 136:
    case 128:
    case 134:
    case 138:
    default:
 return(CISS_LD_OFFLINE);
    }
}
