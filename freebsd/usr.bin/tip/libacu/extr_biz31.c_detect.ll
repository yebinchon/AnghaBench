; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_biz31.c_detect.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_biz31.c_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGALRM = common dso_local global i32 0, align 4
@sigALRM = common dso_local global i32 0, align 4
@timeout = common dso_local global i64 0, align 8
@timeoutbuf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"\07timeout waiting for reply\0A\00", align 1
@DIALTIMEOUT = common dso_local global i32 0, align 4
@FD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @SIGALRM, align 4
  %6 = load i32, i32* @sigALRM, align 4
  %7 = call i32 @signal(i32 %5, i32 %6)
  store i32 %7, i32* %3, align 4
  store i64 0, i64* @timeout, align 8
  br label %8

8:                                                ; preds = %35, %1
  %9 = load i8*, i8** %2, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %8
  %13 = load i32, i32* @timeoutbuf, align 4
  %14 = call i64 @setjmp(i32 %13) #3
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (...) @biz31_abort()
  br label %36

19:                                               ; preds = %12
  %20 = load i32, i32* @DIALTIMEOUT, align 4
  %21 = call i32 @value(i32 %20)
  %22 = call i32 @number(i32 %21)
  %23 = call i32 @alarm(i32 %22)
  %24 = load i32, i32* @FD, align 4
  %25 = call i32 @read(i32 %24, i8* %4, i32 1)
  %26 = call i32 @alarm(i32 0)
  %27 = load i8, i8* %4, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8*, i8** %2, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %2, align 8
  %31 = load i8, i8* %29, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %28, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  br label %36

35:                                               ; preds = %19
  br label %8

36:                                               ; preds = %34, %16, %8
  %37 = load i32, i32* @SIGALRM, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @signal(i32 %37, i32 %38)
  %40 = load i64, i64* @timeout, align 8
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  ret i32 %42
}

declare dso_local i32 @signal(i32, i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @biz31_abort(...) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @number(i32) #1

declare dso_local i32 @value(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
