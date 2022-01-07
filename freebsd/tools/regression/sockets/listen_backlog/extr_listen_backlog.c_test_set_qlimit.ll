; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/listen_backlog/extr_listen_backlog.c_test_set_qlimit.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/listen_backlog/extr_listen_backlog.c_test_set_qlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"test_set_qlimit: socket(PF_INET, SOCK_STREAM)\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_LISTENQLIMIT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOPROTOOPT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [78 x i8] c"test_set_qlimit: setsockopt(SOL_SOCKET, SO_LISTENQLIMIT, 0): unexpected error\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"test_set_qlimit: setsockopt(SOL_SOCKET, SO_LISTENQLIMIT, 0) succeeded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_set_qlimit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_set_qlimit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @PF_INET, align 4
  %5 = load i32, i32* @SOCK_STREAM, align 4
  %6 = call i32 @socket(i32 %4, i32 %5, i32 0)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @err(i32 -1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %0
  store i32 0, i32* %1, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SOL_SOCKET, align 4
  %14 = load i32, i32* @SO_LISTENQLIMIT, align 4
  %15 = call i32 @setsockopt(i32 %12, i32 %13, i32 %14, i32* %1, i32 4)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load i64, i64* @errno, align 8
  %20 = load i64, i64* @ENOPROTOOPT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = call i32 @warn(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @close(i32 %24)
  br label %26

26:                                               ; preds = %22, %18, %11
  %27 = load i32, i32* %2, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = call i32 @warnx(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @close(i32 %31)
  %33 = call i32 @exit(i32 -1) #3
  unreachable

34:                                               ; preds = %26
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @close(i32 %35)
  ret void
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @warnx(i8*) #1

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
