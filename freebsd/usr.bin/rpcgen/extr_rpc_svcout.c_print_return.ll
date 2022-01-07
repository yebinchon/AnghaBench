; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_print_return.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_print_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exitnow = common dso_local global i64 0, align 8
@fout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%sexit(0);\0A\00", align 1
@timerflag = common dso_local global i64 0, align 8
@mtflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"%spthread_mutex_lock(&_svcstate_lock);\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s_rpcsvcstate = _SERVED;\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"%spthread_mutex_unlock(&_svcstate_lock);\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%sreturn;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @print_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_return(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @exitnow, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, i32* @fout, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @f_print(i32 %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %7)
  br label %34

9:                                                ; preds = %1
  %10 = load i64, i64* @timerflag, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = load i64, i64* @mtflag, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* @fout, align 4
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @f_print(i32 %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %15, %12
  %20 = load i32, i32* @fout, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @f_print(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  %23 = load i64, i64* @mtflag, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @fout, align 4
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 @f_print(i32 %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %25, %19
  br label %30

30:                                               ; preds = %29, %9
  %31 = load i32, i32* @fout, align 4
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 @f_print(i32 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %30, %5
  ret void
}

declare dso_local i32 @f_print(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
