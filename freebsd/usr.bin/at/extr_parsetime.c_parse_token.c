
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; int plural; int name; } ;


 int ID ;
 TYPE_1__* Specials ;
 int sc_tokid ;
 int sc_tokplur ;
 scalar_t__ strcasecmp (int ,char*) ;

__attribute__((used)) static int
parse_token(char *arg)
{
    size_t i;

    for (i=0; i<(sizeof Specials/sizeof Specials[0]); i++)
 if (strcasecmp(Specials[i].name, arg) == 0) {
     sc_tokplur = Specials[i].plural;
     return sc_tokid = Specials[i].value;
 }


    return ID;
}
