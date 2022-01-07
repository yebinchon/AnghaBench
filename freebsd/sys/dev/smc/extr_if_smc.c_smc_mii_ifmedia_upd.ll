; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smc/extr_if_smc.c_smc_mii_ifmedia_upd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smc/extr_if_smc.c_smc_mii_ifmedia_upd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.smc_softc* }
%struct.smc_softc = type { i32* }
%struct.mii_data = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @smc_mii_ifmedia_upd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_mii_ifmedia_upd(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.smc_softc*, align 8
  %5 = alloca %struct.mii_data*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 0
  %8 = load %struct.smc_softc*, %struct.smc_softc** %7, align 8
  store %struct.smc_softc* %8, %struct.smc_softc** %4, align 8
  %9 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %10 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %2, align 4
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %17 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call %struct.mii_data* @device_get_softc(i32* %18)
  store %struct.mii_data* %19, %struct.mii_data** %5, align 8
  %20 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  %21 = call i32 @mii_mediachg(%struct.mii_data* %20)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %15, %13
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.mii_data* @device_get_softc(i32*) #1

declare dso_local i32 @mii_mediachg(%struct.mii_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
