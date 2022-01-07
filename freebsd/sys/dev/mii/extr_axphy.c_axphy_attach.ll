; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_axphy.c_axphy_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_axphy.c_axphy_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }

@MIIF_NOISOLATE = common dso_local global i32 0, align 4
@MIIF_NOMANPAUSE = common dso_local global i32 0, align 4
@axphy_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @axphy_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axphy_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mii_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.mii_softc* @device_get_softc(i32 %4)
  store %struct.mii_softc* %5, %struct.mii_softc** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @MIIF_NOISOLATE, align 4
  %8 = load i32, i32* @MIIF_NOMANPAUSE, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @mii_phy_dev_attach(i32 %6, i32 %9, i32* @axphy_funcs, i32 1)
  %11 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %12 = call i32 @mii_phy_setmedia(%struct.mii_softc* %11)
  ret i32 0
}

declare dso_local %struct.mii_softc* @device_get_softc(i32) #1

declare dso_local i32 @mii_phy_dev_attach(i32, i32, i32*, i32) #1

declare dso_local i32 @mii_phy_setmedia(%struct.mii_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
