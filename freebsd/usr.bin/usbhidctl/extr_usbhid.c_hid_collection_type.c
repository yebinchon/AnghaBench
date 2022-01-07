
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int num ;
typedef int int32_t ;


 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char *
hid_collection_type(int32_t type)
{
 static char num[8];

 switch (type) {
 case 0: return ("Physical");
 case 1: return ("Application");
 case 2: return ("Logical");
 case 3: return ("Report");
 case 4: return ("Named_Array");
 case 5: return ("Usage_Switch");
 case 6: return ("Usage_Modifier");
 }
 snprintf(num, sizeof(num), "0x%02x", type);
 return (num);
}
