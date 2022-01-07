
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char
*adapter_name(int type)
{
    static struct {
 int type;
 const char *name;
    } names[] = {
 { 130, "MDA" },
 { 131, "Hercules" },
 { 133, "CGA" },
 { 132, "EGA" },
 { 128, "VGA" },
 { 129, "TGA" },
 { -1, "Unknown" },
    };

    int i;

    for (i = 0; names[i].type != -1; ++i)
 if (names[i].type == type)
     break;
    return names[i].name;
}
