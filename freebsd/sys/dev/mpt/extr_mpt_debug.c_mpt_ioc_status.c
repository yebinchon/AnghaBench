
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Error_Map {int Error_Code; char* Error_String; } ;


 struct Error_Map* IOC_Status ;
 int MPI_IOCSTATUS_MASK ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static char *
mpt_ioc_status(int code)
{
 const struct Error_Map *status = IOC_Status;
 static char buf[64];
 while (status->Error_Code >= 0) {
  if (status->Error_Code == (code & MPI_IOCSTATUS_MASK))
   return status->Error_String;
  status++;
 }
 snprintf(buf, sizeof buf, "Unknown (0x%08x)", code);
 return buf;
}
