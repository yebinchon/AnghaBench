
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* cnext; } ;
typedef TYPE_1__ nltype ;


 scalar_t__ GREATERTHAN ;
 scalar_t__ membercmp (TYPE_1__*,TYPE_1__*) ;

void
sortmembers(nltype *cyclep)
{
    nltype *todo;
    nltype *doing;
    nltype *prev;





    todo = cyclep -> cnext;
    cyclep -> cnext = 0;
    for ( (doing = todo)&&(todo = doing -> cnext);
     doing ;
    (doing = todo )&&(todo = doing -> cnext )){
 for ( prev = cyclep ; prev -> cnext ; prev = prev -> cnext ) {
     if ( membercmp( doing , prev -> cnext ) == GREATERTHAN ) {
  break;
     }
 }
 doing -> cnext = prev -> cnext;
 prev -> cnext = doing;
    }
}
