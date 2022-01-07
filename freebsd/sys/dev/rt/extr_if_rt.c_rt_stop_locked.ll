; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_stop_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_stop_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_softc = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, %struct.ifnet* }
%struct.ifnet = type { i32 }

@RT_DEBUG_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"stopping\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@RT_CHIPID_RT5350 = common dso_local global i64 0, align 8
@RT_CHIPID_MT7620 = common dso_local global i64 0, align 8
@RT_CHIPID_MT7621 = common dso_local global i64 0, align 8
@GE_PORT_BASE = common dso_local global i64 0, align 8
@FE_RST_GLO = common dso_local global i64 0, align 8
@PSE_RESET = common dso_local global i32 0, align 4
@GDMA_FWD_CFG = common dso_local global i64 0, align 8
@GDM_ICS_EN = common dso_local global i32 0, align 4
@GDM_TCS_EN = common dso_local global i32 0, align 4
@GDM_UCS_EN = common dso_local global i32 0, align 4
@GDM_STRPCRC = common dso_local global i32 0, align 4
@GDM_DST_PORT_CPU = common dso_local global i32 0, align 4
@GDM_UFRC_P_SHIFT = common dso_local global i32 0, align 4
@GDM_BFRC_P_SHIFT = common dso_local global i32 0, align 4
@GDM_MFRC_P_SHIFT = common dso_local global i32 0, align 4
@GDM_OFRC_P_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rt_stop_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt_stop_locked(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rt_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.rt_softc*
  store %struct.rt_softc* %6, %struct.rt_softc** %3, align 8
  %7 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %8 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %7, i32 0, i32 10
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %11 = load i32, i32* @RT_DEBUG_ANY, align 4
  %12 = call i32 @RT_DPRINTF(%struct.rt_softc* %10, i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %14 = call i32 @RT_SOFTC_ASSERT_LOCKED(%struct.rt_softc* %13)
  %15 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %16 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %15, i32 0, i32 9
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %18 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %26 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %25, i32 0, i32 8
  %27 = call i32 @callout_stop(i32* %26)
  %28 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %29 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %28, i32 0, i32 7
  %30 = call i32 @callout_stop(i32* %29)
  %31 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %32 = call i32 @RT_SOFTC_UNLOCK(%struct.rt_softc* %31)
  %33 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %34 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @taskqueue_block(i32 %35)
  %37 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %38 = call i32 @RT_SOFTC_LOCK(%struct.rt_softc* %37)
  %39 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %40 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %41 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @RT_WRITE(%struct.rt_softc* %39, i64 %42, i32 0)
  %44 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %45 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RT_CHIPID_RT5350, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %1
  %50 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %51 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @RT_CHIPID_MT7620, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %57 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @RT_CHIPID_MT7621, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %63 = load i64, i64* @GE_PORT_BASE, align 8
  %64 = load i64, i64* @FE_RST_GLO, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i32, i32* @PSE_RESET, align 4
  %67 = call i32 @RT_WRITE(%struct.rt_softc* %62, i64 %65, i32 %66)
  br label %68

68:                                               ; preds = %61, %55, %49, %1
  %69 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %70 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %104

73:                                               ; preds = %68
  %74 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %75 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %76 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @GDMA_FWD_CFG, align 8
  %79 = add nsw i64 %77, %78
  %80 = load i32, i32* @GDM_ICS_EN, align 4
  %81 = load i32, i32* @GDM_TCS_EN, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @GDM_UCS_EN, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @GDM_STRPCRC, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @GDM_DST_PORT_CPU, align 4
  %88 = load i32, i32* @GDM_UFRC_P_SHIFT, align 4
  %89 = shl i32 %87, %88
  %90 = or i32 %86, %89
  %91 = load i32, i32* @GDM_DST_PORT_CPU, align 4
  %92 = load i32, i32* @GDM_BFRC_P_SHIFT, align 4
  %93 = shl i32 %91, %92
  %94 = or i32 %90, %93
  %95 = load i32, i32* @GDM_DST_PORT_CPU, align 4
  %96 = load i32, i32* @GDM_MFRC_P_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = or i32 %94, %97
  %99 = load i32, i32* @GDM_DST_PORT_CPU, align 4
  %100 = load i32, i32* @GDM_OFRC_P_SHIFT, align 4
  %101 = shl i32 %99, %100
  %102 = or i32 %98, %101
  %103 = call i32 @RT_WRITE(%struct.rt_softc* %74, i64 %79, i32 %102)
  br label %104

104:                                              ; preds = %73, %68
  ret void
}

declare dso_local i32 @RT_DPRINTF(%struct.rt_softc*, i32, i8*) #1

declare dso_local i32 @RT_SOFTC_ASSERT_LOCKED(%struct.rt_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @RT_SOFTC_UNLOCK(%struct.rt_softc*) #1

declare dso_local i32 @taskqueue_block(i32) #1

declare dso_local i32 @RT_SOFTC_LOCK(%struct.rt_softc*) #1

declare dso_local i32 @RT_WRITE(%struct.rt_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
