; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_rt3050.c_mtkswitch_phy_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_rt3050.c_mtkswitch_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { i32 }

@MA_NOTOWNED = common dso_local global i32 0, align 4
@MTKSWITCH_PCR0 = common dso_local global i32 0, align 4
@PCR0_ACTIVE = common dso_local global i32 0, align 4
@PCR0_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @mtkswitch_phy_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtkswitch_phy_write(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtkswitch_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.mtkswitch_softc* @device_get_softc(i32 %10)
  store %struct.mtkswitch_softc* %11, %struct.mtkswitch_softc** %9, align 8
  %12 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %9, align 8
  %13 = load i32, i32* @MA_NOTOWNED, align 4
  %14 = call i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc* %12, i32 %13)
  %15 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %9, align 8
  %16 = call i32 @MTKSWITCH_LOCK(%struct.mtkswitch_softc* %15)
  br label %17

17:                                               ; preds = %24, %4
  %18 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %9, align 8
  %19 = load i32, i32* @MTKSWITCH_PCR0, align 4
  %20 = call i32 @MTKSWITCH_READ(%struct.mtkswitch_softc* %18, i32 %19)
  %21 = load i32, i32* @PCR0_ACTIVE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %17

25:                                               ; preds = %17
  %26 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %9, align 8
  %27 = load i32, i32* @MTKSWITCH_PCR0, align 4
  %28 = load i32, i32* @PCR0_WRITE, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @PCR0_REG(i32 %29)
  %31 = or i32 %28, %30
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @PCR0_PHY(i32 %32)
  %34 = or i32 %31, %33
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @PCR0_DATA(i32 %35)
  %37 = or i32 %34, %36
  %38 = call i32 @MTKSWITCH_WRITE(%struct.mtkswitch_softc* %26, i32 %27, i32 %37)
  br label %39

39:                                               ; preds = %46, %25
  %40 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %9, align 8
  %41 = load i32, i32* @MTKSWITCH_PCR0, align 4
  %42 = call i32 @MTKSWITCH_READ(%struct.mtkswitch_softc* %40, i32 %41)
  %43 = load i32, i32* @PCR0_ACTIVE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %39

47:                                               ; preds = %39
  %48 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %9, align 8
  %49 = call i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc* %48)
  ret i32 0
}

declare dso_local %struct.mtkswitch_softc* @device_get_softc(i32) #1

declare dso_local i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @MTKSWITCH_LOCK(%struct.mtkswitch_softc*) #1

declare dso_local i32 @MTKSWITCH_READ(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @MTKSWITCH_WRITE(%struct.mtkswitch_softc*, i32, i32) #1

declare dso_local i32 @PCR0_REG(i32) #1

declare dso_local i32 @PCR0_PHY(i32) #1

declare dso_local i32 @PCR0_DATA(i32) #1

declare dso_local i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
