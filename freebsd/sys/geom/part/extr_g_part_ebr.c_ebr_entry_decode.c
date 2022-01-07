
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dos_partition {char dp_flag; char dp_shd; char dp_ssect; char dp_scyl; char dp_typ; char dp_ehd; char dp_esect; char dp_ecyl; void* dp_size; void* dp_start; } ;


 void* le32dec (char const*) ;

__attribute__((used)) static void
ebr_entry_decode(const char *p, struct dos_partition *ent)
{
 ent->dp_flag = p[0];
 ent->dp_shd = p[1];
 ent->dp_ssect = p[2];
 ent->dp_scyl = p[3];
 ent->dp_typ = p[4];
 ent->dp_ehd = p[5];
 ent->dp_esect = p[6];
 ent->dp_ecyl = p[7];
 ent->dp_start = le32dec(p + 8);
 ent->dp_size = le32dec(p + 12);
}
