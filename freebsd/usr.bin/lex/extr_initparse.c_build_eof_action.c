
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int action_text ;
typedef int FILE ;


 int MAXLINE ;
 int add_action (char*) ;
 int format_pinpoint_message (char*,char*) ;
 int line_directive_out (int *,int) ;
 int num_eof_rules ;
 int num_rules ;
 scalar_t__ previous_continued_action ;
 int* sceof ;
 char** scname ;
 size_t* scon_stk ;
 int scon_stk_ptr ;
 int snprintf (char*,int,char*,char*) ;

void build_eof_action()
 {
 int i;
 char action_text[MAXLINE];

 for ( i = 1; i <= scon_stk_ptr; ++i )
  {
  if ( sceof[scon_stk[i]] )
   format_pinpoint_message(
    "multiple <<EOF>> rules for start condition %s",
    scname[scon_stk[i]] );

  else
   {
   sceof[scon_stk[i]] = 1;

   if (previous_continued_action )
    add_action("YY_RULE_SETUP\n");

   snprintf( action_text, sizeof(action_text), "case YY_STATE_EOF(%s):\n",
    scname[scon_stk[i]] );
   add_action( action_text );
   }
  }

 line_directive_out( (FILE *) 0, 1 );






 --num_rules;
 ++num_eof_rules;
 }
