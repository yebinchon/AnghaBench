
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ops_t { ____Placeholder_ops_t } ops_t ;


 int FALSE ;




 int TRUE ;
 int panic (char*,int) ;

__attribute__((used)) static int
aq_revcmp(int revision, enum ops_t op, int value)
{
    switch (op) {
    case 129:
 if (revision <= value)
     return (TRUE);
 break;
    case 130:
 if (revision >= value)
     return (TRUE);
 break;
    case 131:
 if (revision == value)
     return (TRUE);
 break;
    case 128:
 return (TRUE);
    default:
 panic("aq_revcmp: invalid op %d", op);
    }

    return (FALSE);
}
