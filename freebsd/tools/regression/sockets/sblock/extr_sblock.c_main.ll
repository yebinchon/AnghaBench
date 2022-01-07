; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/sblock/extr_sblock.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/sblock/extr_sblock.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32 }

@SIGHUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"FAIL: sigaction(SIGHUP, NULL, &sa)\00", align 1
@signal_handler = common dso_local global i32 0, align 4
@SA_RESTART = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"SIGHUP restartable by default (cleared)\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"FAIL: sigaction(SIGHUP, &sa, NULL)\00", align 1
@PF_LOCAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"FAIL: socketpair(PF_LOCAL, SOGK_STREAM, 0)\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"FAIL: fork\00", align 1
@errno = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sigaction, align 4
  store i32 0, i32* %1, align 4
  %9 = load i32, i32* @SIGHUP, align 4
  %10 = call i64 @sigaction(i32 %9, %struct.sigaction* null, %struct.sigaction* %8)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 @err(i32 -1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %0
  %15 = load i32, i32* @signal_handler, align 4
  %16 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %8, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %8, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SA_RESTART, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %14
  %25 = load i32, i32* @SA_RESTART, align 4
  %26 = xor i32 %25, -1
  %27 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %8, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %26
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @SIGHUP, align 4
  %31 = call i64 @sigaction(i32 %30, %struct.sigaction* %8, %struct.sigaction* null)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = call i32 @err(i32 -1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %24
  %36 = load i32, i32* @PF_LOCAL, align 4
  %37 = load i32, i32* @SOCK_STREAM, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %39 = call i64 @socketpair(i32 %36, i32 %37, i32 0, i32* %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 @err(i32 -1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %35
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %5, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %4, align 4
  %48 = call i64 (...) @fork()
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = call i32 @err(i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %43
  %54 = load i64, i64* %6, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @close(i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @blocking_recver(i32 %59)
  %61 = call i32 @exit(i32 0) #3
  unreachable

62:                                               ; preds = %53
  %63 = call i64 (...) @fork()
  store i64 %63, i64* %7, align 8
  %64 = load i64, i64* %7, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, i32* @errno, align 4
  store i32 %67, i32* %2, align 4
  %68 = load i64, i64* %6, align 8
  %69 = load i32, i32* @SIGKILL, align 4
  %70 = call i32 @kill(i64 %68, i32 %69)
  %71 = load i32, i32* %2, align 4
  store i32 %71, i32* @errno, align 4
  %72 = call i32 @err(i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %73

73:                                               ; preds = %66, %62
  %74 = load i64, i64* %7, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @close(i32 %77)
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @locking_recver(i32 %79)
  %81 = call i32 @exit(i32 0) #3
  unreachable

82:                                               ; preds = %73
  %83 = load i64, i64* %7, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @signaller(i64 %83, i32 %84)
  %86 = load i64, i64* %6, align 8
  %87 = load i32, i32* @SIGKILL, align 4
  %88 = call i32 @kill(i64 %86, i32 %87)
  %89 = load i64, i64* %7, align 8
  %90 = load i32, i32* @SIGKILL, align 4
  %91 = call i32 @kill(i64 %89, i32 %90)
  %92 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i64 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @blocking_recver(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i32 @locking_recver(i32) #1

declare dso_local i32 @signaller(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
