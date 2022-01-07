; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_switch_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_switch_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_journal_softc = type { i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.bintime = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@g_journal_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%d requests flushing.\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%d requests copying.\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%d requests to flush.\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%d requests delayed.\00", align 1
@g_journal_stats_switches = common dso_local global i32 0, align 4
@g_journal_stats_wait_for_copy = common dso_local global i32 0, align 4
@GJF_DEVICE_BEFORE_SWITCH = common dso_local global i32 0, align 4
@GJF_DEVICE_SWITCH = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"gj:switch\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Switch time of %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_journal_softc*)* @g_journal_switch_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_journal_switch_wait(%struct.g_journal_softc* %0) #0 {
  %2 = alloca %struct.g_journal_softc*, align 8
  %3 = alloca %struct.bintime, align 4
  store %struct.g_journal_softc* %0, %struct.g_journal_softc** %2, align 8
  %4 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %5 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %4, i32 0, i32 6
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @mtx_assert(i32* %5, i32 %6)
  %8 = load i32, i32* @g_journal_debug, align 4
  %9 = icmp sge i32 %8, 2
  br i1 %9, label %10, label %51

10:                                               ; preds = %1
  %11 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %12 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %17 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @GJ_DEBUG(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %22 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %27 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @GJ_DEBUG(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %32 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %37 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @GJ_DEBUG(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %42 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %47 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @GJ_DEBUG(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  br label %50

50:                                               ; preds = %45, %40
  br label %51

51:                                               ; preds = %50, %1
  %52 = load i32, i32* @g_journal_stats_switches, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @g_journal_stats_switches, align 4
  %54 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %55 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @g_journal_stats_wait_for_copy, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @g_journal_stats_wait_for_copy, align 4
  br label %61

61:                                               ; preds = %58, %51
  %62 = call i32 @GJ_TIMER_START(i32 1, %struct.bintime* %3)
  %63 = load i32, i32* @GJF_DEVICE_BEFORE_SWITCH, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %66 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load i32, i32* @GJF_DEVICE_SWITCH, align 4
  %70 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %71 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %75 = call i32 @wakeup(%struct.g_journal_softc* %74)
  br label %76

76:                                               ; preds = %83, %61
  %77 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %78 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @GJF_DEVICE_SWITCH, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %76
  %84 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %85 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %84, i32 0, i32 7
  %86 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %87 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %86, i32 0, i32 6
  %88 = load i32, i32* @PRIBIO, align 4
  %89 = call i32 @msleep(i32* %85, i32* %87, i32 %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 0)
  br label %76

90:                                               ; preds = %76
  %91 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %92 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @GJ_TIMER_STOP(i32 1, %struct.bintime* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @GJ_DEBUG(i32, i8*, i64) #1

declare dso_local i32 @GJ_TIMER_START(i32, %struct.bintime*) #1

declare dso_local i32 @wakeup(%struct.g_journal_softc*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @GJ_TIMER_STOP(i32, %struct.bintime*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
