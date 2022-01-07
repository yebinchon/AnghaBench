
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_20__ {int af_filesz; } ;
struct TYPE_18__ {int am_failure; int am_success; } ;
struct TYPE_19__ {TYPE_7__ ap_mask; } ;
struct TYPE_17__ {int ec_class; int ec_number; } ;
struct TYPE_15__ {int am_failure; int am_success; } ;
struct TYPE_16__ {TYPE_4__ ai_mask; } ;
struct TYPE_14__ {int aq_minfree; int aq_delay; int aq_bufsz; int aq_lowater; int aq_hiwater; } ;
struct TYPE_13__ {int aq64_minfree; int aq64_delay; int aq64_bufsz; int aq64_lowater; int aq64_hiwater; } ;
struct TYPE_12__ {int am_failure; int am_success; } ;
struct TYPE_11__ {TYPE_9__ au_fstat; TYPE_8__ au_aupinfo; TYPE_6__ au_evclass; int au_cond; int au_cond64; TYPE_5__ au_auinfo; TYPE_3__ au_qctrl; TYPE_2__ au_qctrl64; TYPE_1__ au_mask; int au_policy; int au_policy64; } ;
struct audit_record {int ar_arg_cmd; TYPE_10__ ar_arg_auditon; int ar_arg_len; } ;
struct au_token {int dummy; } ;
struct au_record {int dummy; } ;
typedef int int64_t ;
typedef int au_qctrl64_t ;
 struct au_token* au_to_arg32 (int,char*,int ) ;
 struct au_token* au_to_arg64 (int,char*,int ) ;
 int kau_write (struct au_record*,struct au_token*) ;

__attribute__((used)) static void
audit_sys_auditon(struct audit_record *ar, struct au_record *rec)
{
 struct au_token *tok;

 tok = au_to_arg32(3, "length", ar->ar_arg_len);
 kau_write(rec, tok);
 switch (ar->ar_arg_cmd) {
 case 138:
  if ((size_t)ar->ar_arg_len == sizeof(int64_t)) {
   tok = au_to_arg64(2, "policy",
       ar->ar_arg_auditon.au_policy64);
   kau_write(rec, tok);
   break;
  }


 case 131:
  tok = au_to_arg32(2, "policy", ar->ar_arg_auditon.au_policy);
  kau_write(rec, tok);
  break;

 case 133:
  tok = au_to_arg32(2, "setkmask:as_success",
      ar->ar_arg_auditon.au_mask.am_success);
  kau_write(rec, tok);
  tok = au_to_arg32(2, "setkmask:as_failure",
      ar->ar_arg_auditon.au_mask.am_failure);
  kau_write(rec, tok);
  break;

 case 137:
  if ((size_t)ar->ar_arg_len == sizeof(au_qctrl64_t)) {
   tok = au_to_arg64(2, "setqctrl:aq_hiwater",
       ar->ar_arg_auditon.au_qctrl64.aq64_hiwater);
   kau_write(rec, tok);
   tok = au_to_arg64(2, "setqctrl:aq_lowater",
       ar->ar_arg_auditon.au_qctrl64.aq64_lowater);
   kau_write(rec, tok);
   tok = au_to_arg64(2, "setqctrl:aq_bufsz",
       ar->ar_arg_auditon.au_qctrl64.aq64_bufsz);
   kau_write(rec, tok);
   tok = au_to_arg64(2, "setqctrl:aq_delay",
       ar->ar_arg_auditon.au_qctrl64.aq64_delay);
   kau_write(rec, tok);
   tok = au_to_arg64(2, "setqctrl:aq_minfree",
       ar->ar_arg_auditon.au_qctrl64.aq64_minfree);
   kau_write(rec, tok);
   break;
  }


 case 130:
  tok = au_to_arg32(2, "setqctrl:aq_hiwater",
      ar->ar_arg_auditon.au_qctrl.aq_hiwater);
  kau_write(rec, tok);
  tok = au_to_arg32(2, "setqctrl:aq_lowater",
      ar->ar_arg_auditon.au_qctrl.aq_lowater);
  kau_write(rec, tok);
  tok = au_to_arg32(2, "setqctrl:aq_bufsz",
      ar->ar_arg_auditon.au_qctrl.aq_bufsz);
  kau_write(rec, tok);
  tok = au_to_arg32(2, "setqctrl:aq_delay",
      ar->ar_arg_auditon.au_qctrl.aq_delay);
  kau_write(rec, tok);
  tok = au_to_arg32(2, "setqctrl:aq_minfree",
      ar->ar_arg_auditon.au_qctrl.aq_minfree);
  kau_write(rec, tok);
  break;

 case 128:
  tok = au_to_arg32(2, "setumask:as_success",
      ar->ar_arg_auditon.au_auinfo.ai_mask.am_success);
  kau_write(rec, tok);
  tok = au_to_arg32(2, "setumask:as_failure",
      ar->ar_arg_auditon.au_auinfo.ai_mask.am_failure);
  kau_write(rec, tok);
  break;

 case 129:
  tok = au_to_arg32(2, "setsmask:as_success",
      ar->ar_arg_auditon.au_auinfo.ai_mask.am_success);
  kau_write(rec, tok);
  tok = au_to_arg32(2, "setsmask:as_failure",
      ar->ar_arg_auditon.au_auinfo.ai_mask.am_failure);
  kau_write(rec, tok);
  break;

 case 139:
  if ((size_t)ar->ar_arg_len == sizeof(int64_t)) {
   tok = au_to_arg64(2, "setcond",
       ar->ar_arg_auditon.au_cond64);
   kau_write(rec, tok);
   break;
  }


 case 135:
  tok = au_to_arg32(2, "setcond", ar->ar_arg_auditon.au_cond);
  kau_write(rec, tok);
  break;

 case 136:
  tok = au_to_arg32(2, "setclass:ec_event",
      ar->ar_arg_auditon.au_evclass.ec_number);
  kau_write(rec, tok);
  tok = au_to_arg32(2, "setclass:ec_class",
      ar->ar_arg_auditon.au_evclass.ec_class);
  kau_write(rec, tok);
  break;

 case 132:
  tok = au_to_arg32(2, "setpmask:as_success",
      ar->ar_arg_auditon.au_aupinfo.ap_mask.am_success);
  kau_write(rec, tok);
  tok = au_to_arg32(2, "setpmask:as_failure",
      ar->ar_arg_auditon.au_aupinfo.ap_mask.am_failure);
  kau_write(rec, tok);
  break;

 case 134:
  tok = au_to_arg32(2, "setfsize:filesize",
      ar->ar_arg_auditon.au_fstat.af_filesz);
  kau_write(rec, tok);
  break;

 default:
  break;
 }
}
