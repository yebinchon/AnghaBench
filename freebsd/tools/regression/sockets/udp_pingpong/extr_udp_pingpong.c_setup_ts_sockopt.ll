; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/udp_pingpong/extr_udp_pingpong.c_setup_ts_sockopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/udp_pingpong/extr_udp_pingpong.c_setup_ts_sockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_ctx = type { i32, i32 }

@SO_TIMESTAMP = common dso_local global i32 0, align 4
@SO_TS_CLOCK = common dso_local global i32 0, align 4
@SO_BINTIME = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: setup_udp: setsockopt(%d, %d, 1)\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: setup_udp: setsockopt(%d, %d, %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.test_ctx*, i32)* @setup_ts_sockopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_ts_sockopt(%struct.test_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.test_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.test_ctx* %0, %struct.test_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @SO_TIMESTAMP, align 4
  store i32 %10, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %9, align 4
  %11 = load %struct.test_ctx*, %struct.test_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %22 [
    i32 130, label %14
    i32 128, label %14
    i32 131, label %14
    i32 132, label %14
    i32 129, label %19
    i32 133, label %20
  ]

14:                                               ; preds = %2, %2, %2, %2
  %15 = load i32, i32* @SO_TS_CLOCK, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.test_ctx*, %struct.test_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  br label %24

19:                                               ; preds = %2
  br label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @SO_BINTIME, align 4
  store i32 %21, i32* %6, align 4
  br label %24

22:                                               ; preds = %2
  %23 = call i32 (...) @abort() #3
  unreachable

24:                                               ; preds = %20, %19, %14
  store i32 1, i32* %8, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @SOL_SOCKET, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @setsockopt(i32 %25, i32 %26, i32 %27, i32* %8, i32 4)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.test_ctx*, %struct.test_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (i32, i8*, i32, i32, i32, ...) @err(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %31, %24
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %57

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @SOL_SOCKET, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @setsockopt(i32 %43, i32 %44, i32 %45, i32* %9, i32 4)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load %struct.test_ctx*, %struct.test_ctx** %3, align 8
  %51 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (i32, i8*, i32, i32, i32, ...) @err(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %41, %49, %42
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #2

declare dso_local i32 @err(i32, i8*, i32, i32, i32, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
