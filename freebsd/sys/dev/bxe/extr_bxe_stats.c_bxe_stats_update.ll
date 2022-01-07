; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_stats_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@DMAE_COMP_VAL = common dso_local global i64 0, align 8
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Storm stats not updated for 3 times, resetting\0A\00", align 1
@BXE_ERR_STATS_TO = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@stats_comp = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_stats_update(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i64*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %4 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %5 = load i64*, i64** %3, align 8
  %6 = ptrtoint i64* %5 to i32
  %7 = call i64* @BXE_SP(%struct.bxe_softc* %4, i32 %6)
  store i64* %7, i64** %3, align 8
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %9 = call i64 @bxe_edebug_stats_stopped(%struct.bxe_softc* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %81

12:                                               ; preds = %1
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %14 = call i64 @IS_PF(%struct.bxe_softc* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %64

16:                                               ; preds = %12
  %17 = load i64*, i64** %3, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DMAE_COMP_VAL, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %81

22:                                               ; preds = %16
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %24 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %30 = call i32 @bxe_hw_stats_update(%struct.bxe_softc* %29)
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %33 = call i64 @bxe_storm_stats_update(%struct.bxe_softc* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %31
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %37 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = icmp eq i32 %38, 3
  br i1 %40, label %41, label %62

41:                                               ; preds = %35
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %43 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @if_getdrvflags(i32 %44)
  %46 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %41
  %50 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %51 = call i32 @BLOGE(%struct.bxe_softc* %50, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %53 = load i32, i32* @BXE_ERR_STATS_TO, align 4
  %54 = call i32 @BXE_SET_ERROR_BIT(%struct.bxe_softc* %52, i32 %53)
  %55 = load i32, i32* @taskqueue_thread, align 4
  %56 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %57 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %56, i32 0, i32 0
  %58 = load i32, i32* @hz, align 4
  %59 = sdiv i32 %58, 10
  %60 = call i32 @taskqueue_enqueue_timeout(i32 %55, i32* %57, i32 %59)
  br label %61

61:                                               ; preds = %49, %41
  br label %62

62:                                               ; preds = %61, %35
  br label %81

63:                                               ; preds = %31
  br label %67

64:                                               ; preds = %12
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %66 = call i64 @bxe_storm_stats_update(%struct.bxe_softc* %65)
  br label %67

67:                                               ; preds = %64, %63
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %69 = call i32 @bxe_net_stats_update(%struct.bxe_softc* %68)
  %70 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %71 = call i32 @bxe_drv_stats_update(%struct.bxe_softc* %70)
  %72 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %73 = call i64 @IS_VF(%struct.bxe_softc* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %81

76:                                               ; preds = %67
  %77 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %78 = call i32 @bxe_hw_stats_post(%struct.bxe_softc* %77)
  %79 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %80 = call i32 @bxe_storm_stats_post(%struct.bxe_softc* %79)
  br label %81

81:                                               ; preds = %76, %75, %62, %21, %11
  ret void
}

declare dso_local i64* @BXE_SP(%struct.bxe_softc*, i32) #1

declare dso_local i64 @bxe_edebug_stats_stopped(%struct.bxe_softc*) #1

declare dso_local i64 @IS_PF(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_hw_stats_update(%struct.bxe_softc*) #1

declare dso_local i64 @bxe_storm_stats_update(%struct.bxe_softc*) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @BXE_SET_ERROR_BIT(%struct.bxe_softc*, i32) #1

declare dso_local i32 @taskqueue_enqueue_timeout(i32, i32*, i32) #1

declare dso_local i32 @bxe_net_stats_update(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_drv_stats_update(%struct.bxe_softc*) #1

declare dso_local i64 @IS_VF(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_hw_stats_post(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_storm_stats_post(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
