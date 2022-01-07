; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_write_rest.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_write_rest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@inetdflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"\09if (%s == (SVCXPRT *)NULL) {\0A\00", align 1
@TRANSP = common dso_local global i32 0, align 4
@_errbuf = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"could not create a handle\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"\09\09exit(1);\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\09}\0A\00", align 1
@timerflag = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"\09if (_rpcpmstart) {\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"\09\09(void) signal(SIGALRM, closedown);\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"\09\09(void) alarm(_RPCSVC_CLOSEDOWN/2);\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"\09svc_run();\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"svc_run returned\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"\09exit(1);\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"\09/* NOTREACHED */\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_rest() #0 {
  %1 = load i32, i32* @fout, align 4
  %2 = call i32 (i32, i8*, ...) @f_print(i32 %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %3 = load i64, i64* @inetdflag, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %0
  %6 = load i32, i32* @fout, align 4
  %7 = load i32, i32* @TRANSP, align 4
  %8 = call i32 (i32, i8*, ...) @f_print(i32 %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @_errbuf, align 4
  %10 = call i32 @sprintf(i32 %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i32 @print_err_message(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %12 = load i32, i32* @fout, align 4
  %13 = call i32 (i32, i8*, ...) @f_print(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %14 = load i32, i32* @fout, align 4
  %15 = call i32 (i32, i8*, ...) @f_print(i32 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %16 = load i64, i64* @timerflag, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %5
  %19 = load i32, i32* @fout, align 4
  %20 = call i32 (i32, i8*, ...) @f_print(i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %21 = load i32, i32* @fout, align 4
  %22 = call i32 (i32, i8*, ...) @f_print(i32 %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %23 = load i32, i32* @fout, align 4
  %24 = call i32 (i32, i8*, ...) @f_print(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %25 = load i32, i32* @fout, align 4
  %26 = call i32 (i32, i8*, ...) @f_print(i32 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %27

27:                                               ; preds = %18, %5
  br label %28

28:                                               ; preds = %27, %0
  %29 = load i32, i32* @fout, align 4
  %30 = call i32 (i32, i8*, ...) @f_print(i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %31 = load i32, i32* @_errbuf, align 4
  %32 = call i32 @sprintf(i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %33 = call i32 @print_err_message(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %34 = load i32, i32* @fout, align 4
  %35 = call i32 (i32, i8*, ...) @f_print(i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %36 = load i32, i32* @fout, align 4
  %37 = call i32 (i32, i8*, ...) @f_print(i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %38 = load i32, i32* @fout, align 4
  %39 = call i32 (i32, i8*, ...) @f_print(i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @print_err_message(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
