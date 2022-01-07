
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double propself; double propchild; long ncall; long selfcalls; } ;
typedef TYPE_1__ nltype ;


 int EQUALTO ;
 int GREATERTHAN ;
 int LESSTHAN ;

int
membercmp(nltype *this, nltype *that)
{
    double thistime = this -> propself + this -> propchild;
    double thattime = that -> propself + that -> propchild;
    long thiscalls = this -> ncall + this -> selfcalls;
    long thatcalls = that -> ncall + that -> selfcalls;

    if ( thistime > thattime ) {
 return GREATERTHAN;
    }
    if ( thistime < thattime ) {
 return LESSTHAN;
    }
    if ( thiscalls > thatcalls ) {
 return GREATERTHAN;
    }
    if ( thiscalls < thatcalls ) {
 return LESSTHAN;
    }
    return EQUALTO;
}
