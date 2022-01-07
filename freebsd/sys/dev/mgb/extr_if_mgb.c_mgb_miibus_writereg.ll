; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgb_softc = type { i32 }

@MGB_MII_ACCESS = common dso_local global i32 0, align 4
@MGB_MII_BUSY = common dso_local global i32 0, align 4
@MGB_STS_TIMEOUT = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@MGB_MII_PHY_ADDR_MASK = common dso_local global i32 0, align 4
@MGB_MII_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@MGB_MII_REG_ADDR_MASK = common dso_local global i32 0, align 4
@MGB_MII_REG_ADDR_SHIFT = common dso_local global i32 0, align 4
@MGB_MII_WRITE = common dso_local global i32 0, align 4
@MGB_MII_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @mgb_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgb_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgb_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @device_get_softc(i32 %12)
  %14 = call %struct.mgb_softc* @iflib_get_softc(i32 %13)
  store %struct.mgb_softc* %14, %struct.mgb_softc** %10, align 8
  %15 = load %struct.mgb_softc*, %struct.mgb_softc** %10, align 8
  %16 = load i32, i32* @MGB_MII_ACCESS, align 4
  %17 = load i32, i32* @MGB_MII_BUSY, align 4
  %18 = call i64 @mgb_wait_for_bits(%struct.mgb_softc* %15, i32 %16, i32 0, i32 %17)
  %19 = load i64, i64* @MGB_STS_TIMEOUT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @EIO, align 4
  store i32 %22, i32* %5, align 4
  br label %58

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @MGB_MII_PHY_ADDR_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @MGB_MII_PHY_ADDR_SHIFT, align 4
  %28 = shl i32 %26, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @MGB_MII_REG_ADDR_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @MGB_MII_REG_ADDR_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %11, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* @MGB_MII_BUSY, align 4
  %37 = load i32, i32* @MGB_MII_WRITE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  %41 = load %struct.mgb_softc*, %struct.mgb_softc** %10, align 8
  %42 = load i32, i32* @MGB_MII_DATA, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %41, i32 %42, i32 %43)
  %45 = load %struct.mgb_softc*, %struct.mgb_softc** %10, align 8
  %46 = load i32, i32* @MGB_MII_ACCESS, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %45, i32 %46, i32 %47)
  %49 = load %struct.mgb_softc*, %struct.mgb_softc** %10, align 8
  %50 = load i32, i32* @MGB_MII_ACCESS, align 4
  %51 = load i32, i32* @MGB_MII_BUSY, align 4
  %52 = call i64 @mgb_wait_for_bits(%struct.mgb_softc* %49, i32 %50, i32 0, i32 %51)
  %53 = load i64, i64* @MGB_STS_TIMEOUT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %23
  %56 = load i32, i32* @EIO, align 4
  store i32 %56, i32* %5, align 4
  br label %58

57:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %55, %21
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.mgb_softc* @iflib_get_softc(i32) #1

declare dso_local i32 @device_get_softc(i32) #1

declare dso_local i64 @mgb_wait_for_bits(%struct.mgb_softc*, i32, i32, i32) #1

declare dso_local i32 @CSR_WRITE_REG(%struct.mgb_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
