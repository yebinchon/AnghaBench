; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/tcpsockclosebeforeaccept/extr_tcpsockclosebeforeaccept.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/tcpsockclosebeforeaccept/extr_tcpsockclosebeforeaccept.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGCHLD = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@SIGTERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @SIGCHLD, align 4
  %9 = load i32, i32* @SIG_IGN, align 4
  %10 = call i64 @signal(i32 %8, i32 %9)
  %11 = load i64, i64* @SIG_ERR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = call i64 (...) @getpid()
  store i64 %16, i64* %7, align 8
  %17 = call i64 (...) @fork()
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 @err(i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %15
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = call i64 (...) @getpid()
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @tcp_server(i64 %27)
  store i32 0, i32* %3, align 4
  br label %57

29:                                               ; preds = %22
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @tcp_client(i64 %30, i32 0)
  br label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* @SIGTERM, align 4
  %35 = call i32 @kill(i64 %33, i32 %34)
  %36 = call i32 @sleep(i32 5)
  %37 = call i64 (...) @getpid()
  store i64 %37, i64* %7, align 8
  %38 = call i64 (...) @fork()
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = call i32 @err(i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %32
  %44 = load i64, i64* %6, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = call i64 (...) @getpid()
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @tcp_server(i64 %48)
  store i32 0, i32* %3, align 4
  br label %57

50:                                               ; preds = %43
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @tcp_client(i64 %51, i32 1)
  br label %53

53:                                               ; preds = %50
  %54 = load i64, i64* %6, align 8
  %55 = load i32, i32* @SIGTERM, align 4
  %56 = call i32 @kill(i64 %54, i32 %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %46, %25
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @tcp_server(i64) #1

declare dso_local i32 @tcp_client(i64, i32) #1

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
