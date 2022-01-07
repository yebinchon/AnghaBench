; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/udp_pingpong/extr_udp_pingpong.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/udp_pingpong/extr_udp_pingpong.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"send()/recv()\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@TT_TIMESTAMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"send()/recvmsg(), setsockopt(SO_TIMESTAMP, 1)\00", align 1
@TT_BINTIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"send()/recvmsg(), setsockopt(SO_BINTIME, 1)\00", align 1
@TT_REALTIME_MICRO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [64 x i8] c"send()/recvmsg(), setsockopt(SO_TS_CLOCK, SO_TS_REALTIME_MICRO)\00", align 1
@TT_TS_BINTIME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"send()/recvmsg(), setsockopt(SO_TS_CLOCK, SO_TS_BINTIME)\00", align 1
@TT_REALTIME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [58 x i8] c"send()/recvmsg(), setsockopt(SO_TS_CLOCK, SO_TS_REALTIME)\00", align 1
@TT_MONOTONIC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [59 x i8] c"send()/recvmsg(), setsockopt(SO_TS_CLOCK, SO_TS_MONOTONIC)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 (...) @srandomdev()
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %39, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 2
  br i1 %6, label %7, label %42

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @test_run(i32 0, i32 %8, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @TT_TIMESTAMP, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @test_run(i32 %11, i32 %12, i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* %2, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %7
  %18 = load i32, i32* @TT_BINTIME, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @test_run(i32 %18, i32 %19, i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %21 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %17, %7
  %23 = load i32, i32* @TT_REALTIME_MICRO, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @test_run(i32 %23, i32 %24, i32 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  %26 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @TT_TS_BINTIME, align 4
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @test_run(i32 %27, i32 %28, i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  %30 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @TT_REALTIME, align 4
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @test_run(i32 %31, i32 %32, i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  %34 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @TT_MONOTONIC, align 4
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @test_run(i32 %35, i32 %36, i32 1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0))
  %38 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %22
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  br label %4

42:                                               ; preds = %4
  %43 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @srandomdev(...) #1

declare dso_local i32 @test_run(i32, i32, i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
