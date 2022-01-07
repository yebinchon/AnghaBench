; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_phy_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @mtkswitch_phy_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtkswitch_phy_write(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtkswitch_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.mtkswitch_softc* @device_get_softc(i32 %12)
  store %struct.mtkswitch_softc* %13, %struct.mtkswitch_softc** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sge i32 %17, 32
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = icmp sge i32 %23, 32
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %19, %16, %4
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %5, align 4
  br label %41

27:                                               ; preds = %22
  %28 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %10, align 8
  %29 = load i32, i32* @MA_NOTOWNED, align 4
  %30 = call i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc* %28, i32 %29)
  %31 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %10, align 8
  %32 = call i32 @MTKSWITCH_LOCK(%struct.mtkswitch_softc* %31)
  %33 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %10, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @mtkswitch_phy_write_locked(%struct.mtkswitch_softc* %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %10, align 8
  %39 = call i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc* %38)
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %27, %25
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local %struct.mtkswitch_softc* @device_get_softc(i32) #1

declare dso_local i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @MTKSWITCH_LOCK(%struct.mtkswitch_softc*) #1

declare dso_local i32 @mtkswitch_phy_write_locked(%struct.mtkswitch_softc*, i32, i32, i32) #1

declare dso_local i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
