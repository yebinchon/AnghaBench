
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct thread {int dummy; } ;
struct gsstest_args {int a_op; int a_res; int a_args; } ;
struct TYPE_8__ {int length; int value; } ;
struct TYPE_7__ {int length; int value; } ;
struct gsstest_2_res {TYPE_2__ output_token; int min_stat; int maj_stat; int step; TYPE_1__ input_token; } ;
struct gsstest_2_args {TYPE_2__ output_token; int min_stat; int maj_stat; int step; TYPE_1__ input_token; } ;
typedef int res ;
struct TYPE_9__ {int length; struct gsstest_2_res* value; } ;
typedef TYPE_3__ gss_buffer_desc ;
typedef int args ;
typedef int OM_uint32 ;


 int EINVAL ;
 int EOVERFLOW ;
 int M_GSSAPI ;
 int M_WAITOK ;
 int copyin (int ,struct gsstest_2_res*,int) ;
 int copyout (struct gsstest_2_res*,int ,int) ;
 int gss_release_buffer (int *,TYPE_3__*) ;
 int gsstest_1 (struct thread*) ;
 int gsstest_2 (struct thread*,int ,TYPE_3__*,int *,int *,TYPE_3__*) ;
 int gsstest_3 (struct thread*) ;
 int gsstest_4 (struct thread*) ;
 struct gsstest_2_res* malloc (int,int ,int ) ;

__attribute__((used)) static int
gsstest(struct thread *td, struct gsstest_args *uap)
{
 int error;

 switch (uap->a_op) {
 case 1:
                return (gsstest_1(td));

 case 2: {
  struct gsstest_2_args args;
  struct gsstest_2_res res;
  gss_buffer_desc input_token, output_token;
  OM_uint32 junk;

  error = copyin(uap->a_args, &args, sizeof(args));
  if (error)
   return (error);
  input_token.length = args.input_token.length;
  input_token.value = malloc(input_token.length, M_GSSAPI,
      M_WAITOK);
  error = copyin(args.input_token.value, input_token.value,
      input_token.length);
  if (error) {
   gss_release_buffer(&junk, &input_token);
   return (error);
  }
  output_token.length = 0;
  output_token.value = ((void*)0);
  gsstest_2(td, args.step, &input_token,
      &res.maj_stat, &res.min_stat, &output_token);
  gss_release_buffer(&junk, &input_token);
  if (output_token.length > args.output_token.length) {
   gss_release_buffer(&junk, &output_token);
   return (EOVERFLOW);
  }
  res.output_token.length = output_token.length;
  res.output_token.value = args.output_token.value;
  error = copyout(output_token.value, res.output_token.value,
      output_token.length);
  gss_release_buffer(&junk, &output_token);
  if (error)
   return (error);

  return (copyout(&res, uap->a_res, sizeof(res)));

  break;
 }
 case 3:
  return (gsstest_3(td));
 case 4:
  return (gsstest_4(td));
 }

        return (EINVAL);
}
