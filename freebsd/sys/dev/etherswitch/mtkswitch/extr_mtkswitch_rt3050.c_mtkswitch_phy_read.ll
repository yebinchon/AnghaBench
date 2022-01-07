; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_rt3050.c_mtkswitch_phy_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_rt3050.c_mtkswitch_phy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { i32 }

@MA_NOTOWNED = common dso_local global i32 0, align 4
@MTKSWITCH_PCR0 = common dso_local global i32 0, align 4
@PCR0_ACTIVE = common dso_local global i32 0, align 4
@PCR0_READ = common dso_local global i32 0, align 4
@MTKSWITCH_PCR1 = common dso_local global i32 0, align 4
@PCR1_DATA_OFF = common dso_local global i32 0, align 4
@PCR1_DATA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @mtkswitch_phy_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtkswitch_phy_read(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtkswitch_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.mtkswitch_softc* @device_get_softc(i32 %9)
  store %struct.mtkswitch_softc* %10, %struct.mtkswitch_softc** %7, align 8
  %11 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %7, align 8
  %12 = load i32, i32* @MA_NOTOWNED, align 4
  %13 = call i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc* %11, i32 %12)
  %14 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %7, align 8
  %15 = call i32 @MTKSWITCH_LOCK(%struct.mtkswitch_softc* %14)
  br label %16

16:                                               ; preds = %23, %3
  %17 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %7, align 8
  %18 = load i32, i32* @MTKSWITCH_PCR0, align 4
  %19 = call i32 @MTKSWITCH_READ(%struct.mtkswitch_softc* %17, i32 %18)
  %20 = load i32, i32* @PCR0_ACTIVE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %16

24:                                               ; preds = %16
  %25 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %7, align 8
  %26 = load i32, i32* @MTKSWITCH_PCR0, align 4
  %27 = load i32, i32* @PCR0_READ, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @PCR0_REG(i32 %28)
  %30 = or i32 %27, %29
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @PCR0_PHY(i32 %31)
  %33 = or i32 %30, %32
  %34 = call i32 @MTKSWITCH_WRITE(%struct.mtkswitch_softc* %25, i32 %26, i32 %33)
  br label %35

35:                                               ; preds = %42, %24
  %36 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %7, align 8
  %37 = load i32, i32* @MTKSWITCH_PCR0, align 4
  %38 = call i32 @MTKSWITCH_READ(%struct.mtkswitch_softc* %36, i32 %37)
  %39 = load i32, i32* @PCR0_ACTIVE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %35

43:                                               ; preds = %35
  %44 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %7, align 8
  %45 = load i32, i32* @MTKSWITCH_PCR1, align 4
  %46 = call i32 @MTKSWITCH_READ(%struct.mtkswitch_softc* %44, i32 %45)
  %47 = load i32, i32* @PCR1_DATA_OFF, align 4
  %48 = ashr i32 %46, %47
  %49 = load i32, i32* @PCR1_DATA_MASK, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %8, align 4
  %51 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %7, align 8
  %52 = call i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc* %51)
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local %struct.mtkswitch_softc* @device_get_softc(i32) #1

declare dso_local i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @MTKSWITCH_LOCK(%struct.mtkswitch_softc*) #1

declare dso_local i32 @MTKSWITCH_READ(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @MTKSWITCH_WRITE(%struct.mtkswitch_softc*, i32, i32) #1

declare dso_local i32 @PCR0_REG(i32) #1

declare dso_local i32 @PCR0_PHY(i32) #1

declare dso_local i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
