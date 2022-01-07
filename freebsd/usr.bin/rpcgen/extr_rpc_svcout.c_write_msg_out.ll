; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_write_msg_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_write_msg_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"static\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"void _msgout(const char* msg)\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"#ifdef RPC_SVC_FG\0A\00", align 1
@inetdflag = common dso_local global i64 0, align 8
@pmflag = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"\09if (_rpcpmstart)\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"\09\09syslog(LOG_ERR, \22%%s\22, msg);\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"\09else\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"\09\09(void) fprintf(stderr, \22%%s\\n\22, msg);\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"#else\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"\09syslog(LOG_ERR, \22%%s\22, msg);\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_msg_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_msg_out() #0 {
  %1 = load i32, i32* @fout, align 4
  %2 = call i32 @f_print(i32 %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @fout, align 4
  %4 = call i32 @f_print(i32 %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32, i32* @fout, align 4
  %6 = call i32 @f_print(i32 %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32, i32* @fout, align 4
  %8 = call i32 @f_print(i32 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %9 = load i32, i32* @fout, align 4
  %10 = call i32 @f_print(i32 %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %11 = load i64, i64* @inetdflag, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %0
  %14 = load i64, i64* @pmflag, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %0
  %17 = load i32, i32* @fout, align 4
  %18 = call i32 @f_print(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* @fout, align 4
  %21 = call i32 @f_print(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %22 = load i32, i32* @fout, align 4
  %23 = call i32 @f_print(i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %24 = load i32, i32* @fout, align 4
  %25 = call i32 @f_print(i32 %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %26 = load i32, i32* @fout, align 4
  %27 = call i32 @f_print(i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %28 = load i32, i32* @fout, align 4
  %29 = call i32 @f_print(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %30 = load i32, i32* @fout, align 4
  %31 = call i32 @f_print(i32 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %32 = load i32, i32* @fout, align 4
  %33 = call i32 @f_print(i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i32 @f_print(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
