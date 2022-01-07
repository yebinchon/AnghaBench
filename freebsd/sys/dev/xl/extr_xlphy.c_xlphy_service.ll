; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_xlphy.c_xlphy_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_xlphy.c_xlphy_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }
%struct.mii_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*, %struct.mii_data*, i32)* @xlphy_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlphy_service(%struct.mii_softc* %0, %struct.mii_data* %1, i32 %2) #0 {
  %4 = alloca %struct.mii_softc*, align 8
  %5 = alloca %struct.mii_data*, align 8
  %6 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %4, align 8
  store %struct.mii_data* %1, %struct.mii_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %13 [
    i32 129, label %8
    i32 130, label %9
    i32 128, label %12
  ]

8:                                                ; preds = %3
  br label %13

9:                                                ; preds = %3
  %10 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %11 = call i32 @mii_phy_setmedia(%struct.mii_softc* %10)
  br label %13

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %3, %12, %9, %8
  %14 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %15 = call i32 @PHY_STATUS(%struct.mii_softc* %14)
  %16 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @mii_phy_update(%struct.mii_softc* %16, i32 %17)
  ret i32 0
}

declare dso_local i32 @mii_phy_setmedia(%struct.mii_softc*) #1

declare dso_local i32 @PHY_STATUS(%struct.mii_softc*) #1

declare dso_local i32 @mii_phy_update(%struct.mii_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
