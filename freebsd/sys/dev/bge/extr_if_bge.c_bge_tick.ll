; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.mii_data = type { i32 }

@BGE_FLAG_TBI = common dso_local global i32 0, align 4
@BGE_ASICREV_BCM5700 = common dso_local global i64 0, align 8
@BGE_FLAG_5788 = common dso_local global i32 0, align 4
@BGE_MISC_LOCAL_CTL = common dso_local global i32 0, align 4
@BGE_MLC_INTR_SET = common dso_local global i32 0, align 4
@BGE_HCC_MODE = common dso_local global i32 0, align 4
@BGE_HCCMODE_COAL_NOW = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bge_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bge_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.bge_softc*
  store %struct.bge_softc* %6, %struct.bge_softc** %3, align 8
  store %struct.mii_data* null, %struct.mii_data** %4, align 8
  %7 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %8 = call i32 @BGE_LOCK_ASSERT(%struct.bge_softc* %7)
  %9 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %10 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %9, i32 0, i32 2
  %11 = call i64 @callout_pending(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %15 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %14, i32 0, i32 2
  %16 = call i32 @callout_active(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %1
  br label %87

19:                                               ; preds = %13
  %20 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %21 = call i64 @BGE_IS_5705_PLUS(%struct.bge_softc* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %25 = call i32 @bge_stats_update_regs(%struct.bge_softc* %24)
  br label %29

26:                                               ; preds = %19
  %27 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %28 = call i32 @bge_stats_update(%struct.bge_softc* %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %31 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BGE_FLAG_TBI, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %38 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.mii_data* @device_get_softc(i32 %39)
  store %struct.mii_data* %40, %struct.mii_data** %4, align 8
  %41 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %42 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %47 = call i32 @mii_tick(%struct.mii_data* %46)
  br label %48

48:                                               ; preds = %45, %36
  br label %77

49:                                               ; preds = %29
  %50 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %51 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %55 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @BGE_ASICREV_BCM5700, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %66, label %59

59:                                               ; preds = %49
  %60 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %61 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @BGE_FLAG_5788, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %59, %49
  %67 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %68 = load i32, i32* @BGE_MISC_LOCAL_CTL, align 4
  %69 = load i32, i32* @BGE_MLC_INTR_SET, align 4
  %70 = call i32 @BGE_SETBIT(%struct.bge_softc* %67, i32 %68, i32 %69)
  br label %76

71:                                               ; preds = %59
  %72 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %73 = load i32, i32* @BGE_HCC_MODE, align 4
  %74 = load i32, i32* @BGE_HCCMODE_COAL_NOW, align 4
  %75 = call i32 @BGE_SETBIT(%struct.bge_softc* %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %66
  br label %77

77:                                               ; preds = %76, %48
  %78 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %79 = call i32 @bge_asf_driver_up(%struct.bge_softc* %78)
  %80 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %81 = call i32 @bge_watchdog(%struct.bge_softc* %80)
  %82 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %83 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %82, i32 0, i32 2
  %84 = load i32, i32* @hz, align 4
  %85 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %86 = call i32 @callout_reset(i32* %83, i32 %84, void (i8*)* @bge_tick, %struct.bge_softc* %85)
  br label %87

87:                                               ; preds = %77, %18
  ret void
}

declare dso_local i32 @BGE_LOCK_ASSERT(%struct.bge_softc*) #1

declare dso_local i64 @callout_pending(i32*) #1

declare dso_local i32 @callout_active(i32*) #1

declare dso_local i64 @BGE_IS_5705_PLUS(%struct.bge_softc*) #1

declare dso_local i32 @bge_stats_update_regs(%struct.bge_softc*) #1

declare dso_local i32 @bge_stats_update(%struct.bge_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @mii_tick(%struct.mii_data*) #1

declare dso_local i32 @BGE_SETBIT(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @bge_asf_driver_up(%struct.bge_softc*) #1

declare dso_local i32 @bge_watchdog(%struct.bge_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.bge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
