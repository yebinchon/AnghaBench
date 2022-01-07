
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unknown_tag ;
typedef int uintmax_t ;
typedef scalar_t__ u_int64_t ;
 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
d_tags(u_int64_t tag)
{
 static char unknown_tag[48];

 switch (tag) {
 case 161: return "DT_NULL";
 case 162: return "DT_NEEDED";
 case 156: return "DT_PLTRELSZ";
 case 160: return "DT_PLTGOT";
 case 170: return "DT_HASH";
 case 140: return "DT_STRTAB";
 case 134: return "DT_SYMTAB";
 case 151: return "DT_RELA";
 case 148: return "DT_RELASZ";
 case 149: return "DT_RELAENT";
 case 141: return "DT_STRSZ";
 case 138: return "DT_SYMENT";
 case 169: return "DT_INIT";
 case 176: return "DT_FINI";
 case 142: return "DT_SONAME";
 case 144: return "DT_RPATH";
 case 139: return "DT_SYMBOLIC";
 case 152: return "DT_REL";
 case 145: return "DT_RELSZ";
 case 146: return "DT_RELENT";
 case 157: return "DT_PLTREL";
 case 180: return "DT_DEBUG";
 case 133: return "DT_TEXTREL";
 case 166: return "DT_JMPREL";
 case 182: return "DT_BIND_NOW";
 case 168: return "DT_INIT_ARRAY";
 case 175: return "DT_FINI_ARRAY";
 case 167: return "DT_INIT_ARRAYSZ";
 case 174: return "DT_FINI_ARRAYSZ";
 case 143: return "DT_RUNPATH";
 case 173: return "DT_FLAGS";
 case 154: return "DT_PREINIT_ARRAY";
 case 153:return "DT_PREINIT_ARRAYSZ";

 case 0x6ffffdf5: return "DT_GNU_PRELINKED";
 case 0x6ffffdf6: return "DT_GNU_CONFLICTSZ";
 case 0x6ffffdf7: return "DT_GNU_LIBLISTSZ";
 case 0x6ffffdf8: return "DT_SUNW_CHECKSUM";
 case 158: return "DT_PLTPADSZ";
 case 165: return "DT_MOVEENT";
 case 164: return "DT_MOVESZ";
 case 178: return "DT_FEATURE";
 case 155: return "DT_POSFLAG_1";
 case 135: return "DT_SYMINSZ";
 case 137 : return "DT_SYMINENT (DT_VALRNGHI)";
 case 185: return "DT_ADDRRNGLO";
 case 171: return "DT_GNU_HASH";
 case 0x6ffffef8: return "DT_GNU_CONFLICT";
 case 0x6ffffef9: return "DT_GNU_LIBLIST";
 case 181: return "DT_CONFIG";
 case 179: return "DT_DEPAUDIT";
 case 184: return "DT_AUDIT";
 case 159: return "DT_PLTPAD";
 case 163: return "DT_MOVETAB";
 case 136 : return "DT_SYMINFO (DT_ADDRRNGHI)";
 case 150: return "DT_RELACOUNT";
 case 147: return "DT_RELCOUNT";
 case 172: return "DT_FLAGS_1";
 case 131: return "DT_VERDEF";
 case 130: return "DT_VERDEFNUM";
 case 129: return "DT_VERNEED";
 case 128: return "DT_VERNEEDNUM";
 case 0x6ffffff0: return "DT_GNU_VERSYM";

 case 0x70000000: return "DT_IA_64_PLT_RESERVE";
 case 183: return "DT_AUXILIARY";
 case 132: return "DT_USED";
 case 177: return "DT_FILTER";
 }
 snprintf(unknown_tag, sizeof(unknown_tag),
  "ERROR: TAG NOT DEFINED -- tag 0x%jx", (uintmax_t)tag);
 return (unknown_tag);
}
