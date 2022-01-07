; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_if_cp.c_cp_modem_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_if_cp.c_cp_modem_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }

@TIOCM_LE = common dso_local global i32 0, align 4
@TIOCM_CD = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @cp_modem_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_modem_status(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %3, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %4, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @TIOCM_LE, align 4
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  store i32 %23, i32* %5, align 4
  %24 = call i32 (...) @splimp()
  store i32 %24, i32* %6, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @CP_LOCK(i32* %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = call i64 @cp_get_cd(%struct.TYPE_10__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i32, i32* @TIOCM_CD, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %30, %22
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %36 = call i64 @cp_get_cts(%struct.TYPE_10__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @TIOCM_CTS, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = call i64 @cp_get_dsr(%struct.TYPE_10__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* @TIOCM_DSR, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @TIOCM_DTR, align 4
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %50
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @TIOCM_RTS, align 4
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %64, %59
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @CP_UNLOCK(i32* %69)
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @splx(i32 %71)
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @splimp(...) #1

declare dso_local i32 @CP_LOCK(i32*) #1

declare dso_local i64 @cp_get_cd(%struct.TYPE_10__*) #1

declare dso_local i64 @cp_get_cts(%struct.TYPE_10__*) #1

declare dso_local i64 @cp_get_dsr(%struct.TYPE_10__*) #1

declare dso_local i32 @CP_UNLOCK(i32*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
