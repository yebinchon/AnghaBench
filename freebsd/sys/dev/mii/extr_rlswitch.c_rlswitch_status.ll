; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_rlswitch.c_rlswitch_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_rlswitch.c_rlswitch_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { %struct.mii_data* }
%struct.mii_data = type { i32, i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @rlswitch_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rlswitch_status(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca %struct.mii_data*, align 8
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %4 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %5 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %4, i32 0, i32 0
  %6 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  store %struct.mii_data* %6, %struct.mii_data** %3, align 8
  %7 = load i32, i32* @IFM_AVALID, align 4
  %8 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %9 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @IFM_ETHER, align 4
  %11 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %12 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @IFM_ACTIVE, align 4
  %14 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %15 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @IFM_100_TX, align 4
  %19 = load i32, i32* @IFM_FDX, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %22 = call i32 @mii_phy_flowstatus(%struct.mii_softc* %21)
  %23 = or i32 %20, %22
  %24 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %25 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  ret void
}

declare dso_local i32 @mii_phy_flowstatus(%struct.mii_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
