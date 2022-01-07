
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ cycleno; int ncall; } ;
typedef TYPE_1__ nltype ;
struct TYPE_7__ {double arc_time; double arc_childtime; scalar_t__ arc_count; TYPE_1__* arc_childp; TYPE_1__* arc_parentp; } ;
typedef TYPE_2__ arctype ;


 int EQUALTO ;
 int GREATERTHAN ;
 int LESSTHAN ;
 int TIMEDEBUG ;
 int debug ;
 int printf (char*,...) ;
 int printname (TYPE_1__*) ;

int
arccmp(arctype *thisp, arctype *thatp)
{
    nltype *thisparentp = thisp -> arc_parentp;
    nltype *thischildp = thisp -> arc_childp;
    nltype *thatparentp = thatp -> arc_parentp;
    nltype *thatchildp = thatp -> arc_childp;
    double thistime;
    double thattime;
    if ( thisparentp == thischildp ) {

 return LESSTHAN;
    }
    if ( thatparentp == thatchildp ) {

 return GREATERTHAN;
    }
    if ( thisparentp -> cycleno != 0 && thischildp -> cycleno != 0 &&
 thisparentp -> cycleno == thischildp -> cycleno ) {

 if ( thatparentp -> cycleno != 0 && thatchildp -> cycleno != 0 &&
     thatparentp -> cycleno == thatchildp -> cycleno ) {

     if ( thisp -> arc_count < thatp -> arc_count ) {
  return LESSTHAN;
     }
     if ( thisp -> arc_count > thatp -> arc_count ) {
  return GREATERTHAN;
     }
     return EQUALTO;
 } else {

     return LESSTHAN;
 }
    } else {

 if ( thatparentp -> cycleno != 0 && thatchildp -> cycleno != 0 &&
     thatparentp -> cycleno == thatchildp -> cycleno ) {

     return GREATERTHAN;
 } else {

     thistime = thisp -> arc_time + thisp -> arc_childtime;
     thattime = thatp -> arc_time + thatp -> arc_childtime;
     if ( thistime < thattime )
  return LESSTHAN;
     if ( thistime > thattime )
  return GREATERTHAN;
     if ( thisp -> arc_count < thatp -> arc_count )
  return LESSTHAN;
     if ( thisp -> arc_count > thatp -> arc_count )
  return GREATERTHAN;
     return EQUALTO;
 }
    }
}
