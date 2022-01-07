
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 int HN_DECIMAL ;
 int humanize_number (char*,int,long,char*,int,int ) ;
 int snprintf (char*,int,char*,long) ;

__attribute__((used)) static const char *
format_value(long value, bool humanize, int scale)
{
 static char buffer[14];

 if (scale != 0)
  value <<= scale * 10;
 if (humanize)
  humanize_number(buffer, sizeof(buffer), value, "B",
      scale, HN_DECIMAL);
 else
  snprintf(buffer, sizeof(buffer), "%ld   ", value);
 return (buffer);
}
