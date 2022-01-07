; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_smcphy.c_smcphy_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_smcphy.c_smcphy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"reset failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @smcphy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smcphy_reset(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %5 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %6 = load i32, i32* @MII_BMCR, align 4
  %7 = load i32, i32* @BMCR_RESET, align 4
  %8 = call i32 @PHY_WRITE(%struct.mii_softc* %5, i32 %6, i32 %7)
  store i32 2, i32* %4, align 4
  br label %9

9:                                                ; preds = %23, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = call i32 @DELAY(i32 50000)
  %14 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %15 = load i32, i32* @MII_BMCR, align 4
  %16 = call i32 @PHY_READ(%struct.mii_softc* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @BMCR_RESET, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %26

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %4, align 4
  br label %9

26:                                               ; preds = %21, %9
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @BMCR_RESET, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %33 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %38 = load i32, i32* @MII_BMCR, align 4
  %39 = call i32 @PHY_WRITE(%struct.mii_softc* %37, i32 %38, i32 12288)
  %40 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %41 = call i32 @PHY_WRITE(%struct.mii_softc* %40, i32 30, i32 65472)
  ret void
}

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
