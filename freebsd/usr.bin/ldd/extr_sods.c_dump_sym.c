
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlist {int n_type; int n_value; } ;




 scalar_t__ BIND_WEAK ;

 int N_AUX (struct nlist const*) ;


 scalar_t__ N_BIND (struct nlist const*) ;
 int N_EXT ;
 int printf (char*,char,char*,char*,int ) ;
 int snprintf (char*,int,char*,int) ;
 int strcpy (char*,char*) ;
 char toupper (char) ;

__attribute__((used)) static void
dump_sym(const struct nlist *np)
{
    char type[8];
    char aux[8];
    char weak;
    char *p;

    switch (np->n_type & ~N_EXT) {
    case 128: strcpy(type, "undf"); break;
    case 167: strcpy(type, "abs"); break;
    case 129: strcpy(type, "text"); break;
    case 161: strcpy(type, "data"); break;
    case 163: strcpy(type, "bss"); break;
    case 150: strcpy(type, "indr"); break;
    case 135: strcpy(type, "size"); break;
    case 162: strcpy(type, "comm"); break;
    case 140: strcpy(type, "seta"); break;
    case 137: strcpy(type, "sett"); break;
    case 138: strcpy(type, "setd"); break;
    case 139: strcpy(type, "setb"); break;
    case 136: strcpy(type, "setv"); break;
    case 154: strcpy(type, np->n_type&N_EXT ? "fn" : "warn"); break;
    case 151: strcpy(type, "gsym"); break;
    case 153: strcpy(type, "fname"); break;
    case 152: strcpy(type, "fun"); break;
    case 130: strcpy(type, "stsym"); break;
    case 148: strcpy(type, "lcsym"); break;
    case 145: strcpy(type, "main"); break;
    case 144: strcpy(type, "pc"); break;
    case 141: strcpy(type, "rsym"); break;
    case 134: strcpy(type, "sline"); break;
    case 160: strcpy(type, "dsline"); break;
    case 164: strcpy(type, "bsline"); break;
    case 131: strcpy(type, "ssym"); break;
    case 133: strcpy(type, "so"); break;
    case 146: strcpy(type, "lsym"); break;
    case 165: strcpy(type, "bincl"); break;
    case 132: strcpy(type, "sol"); break;
    case 143: strcpy(type, "psym"); break;
    case 157: strcpy(type, "eincl"); break;
    case 156: strcpy(type, "entry"); break;
    case 149: strcpy(type, "lbrac"); break;
    case 155: strcpy(type, "excl"); break;
    case 142: strcpy(type, "rbrac"); break;
    case 166: strcpy(type, "bcomm"); break;
    case 158: strcpy(type, "ecomm"); break;
    case 159: strcpy(type, "ecoml"); break;
    case 147: strcpy(type, "leng"); break;
    default:
 snprintf(type, sizeof type, "%#02x", np->n_type);
 break;
    }

    if (np->n_type & N_EXT && type[0] != '0')
 for (p = type; *p != '\0'; ++p)
     *p = toupper(*p);

    switch (N_AUX(np)) {
    case 0: strcpy(aux, ""); break;
    case 168: strcpy(aux, "objt"); break;
    case 169: strcpy(aux, "func"); break;
    default: snprintf(aux, sizeof aux, "%#01x", N_AUX(np)); break;
    }

    weak = N_BIND(np) == BIND_WEAK ? 'w' : ' ';

    printf("%c%-6s %-4s %8lx", weak, type, aux, np->n_value);
}
