; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_print_err_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_print_err_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@logflag = common dso_local global i64 0, align 8
@fout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%ssyslog(LOG_ERR, \22%s\22);\0A\00", align 1
@_errbuf = common dso_local global i32 0, align 4
@inetdflag = common dso_local global i64 0, align 8
@pmflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"%s_msgout(\22%s\22);\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%sfprintf(stderr, \22%s\22);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @print_err_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_err_message(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @logflag, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i32, i32* @fout, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = load i32, i32* @_errbuf, align 4
  %9 = call i32 @f_print(i32 %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %7, i32 %8)
  br label %27

10:                                               ; preds = %1
  %11 = load i64, i64* @inetdflag, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i64, i64* @pmflag, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13, %10
  %17 = load i32, i32* @fout, align 4
  %18 = load i8*, i8** %2, align 8
  %19 = load i32, i32* @_errbuf, align 4
  %20 = call i32 @f_print(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %18, i32 %19)
  br label %26

21:                                               ; preds = %13
  %22 = load i32, i32* @fout, align 4
  %23 = load i8*, i8** %2, align 8
  %24 = load i32, i32* @_errbuf, align 4
  %25 = call i32 @f_print(i32 %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %16
  br label %27

27:                                               ; preds = %26, %5
  ret void
}

declare dso_local i32 @f_print(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
