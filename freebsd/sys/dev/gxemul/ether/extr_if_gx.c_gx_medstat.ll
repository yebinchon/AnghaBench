; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gxemul/ether/extr_if_gx.c_gx_medstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gxemul/ether/extr_if_gx.c_gx_medstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.gx_softc* }
%struct.gx_softc = type { i32 }
%struct.ifmediareq = type { i32, i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq*)* @gx_medstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gx_medstat(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.gx_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 0
  %8 = load %struct.gx_softc*, %struct.gx_softc** %7, align 8
  store %struct.gx_softc* %8, %struct.gx_softc** %5, align 8
  %9 = load i32, i32* @IFM_AVALID, align 4
  %10 = load i32, i32* @IFM_ACTIVE, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %13 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @IFT_ETHER, align 4
  %15 = load i32, i32* @IFM_1000_T, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @IFM_FDX, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %20 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
