; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_miibus_readreg.c"
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
@MGB_MII_READ = common dso_local global i32 0, align 4
@MGB_MII_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @mgb_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgb_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mgb_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @device_get_softc(i32 %10)
  %12 = call %struct.mgb_softc* @iflib_get_softc(i32 %11)
  store %struct.mgb_softc* %12, %struct.mgb_softc** %8, align 8
  %13 = load %struct.mgb_softc*, %struct.mgb_softc** %8, align 8
  %14 = load i32, i32* @MGB_MII_ACCESS, align 4
  %15 = load i32, i32* @MGB_MII_BUSY, align 4
  %16 = call i64 @mgb_wait_for_bits(%struct.mgb_softc* %13, i32 %14, i32 0, i32 %15)
  %17 = load i64, i64* @MGB_STS_TIMEOUT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @EIO, align 4
  store i32 %20, i32* %4, align 4
  br label %55

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @MGB_MII_PHY_ADDR_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @MGB_MII_PHY_ADDR_SHIFT, align 4
  %26 = shl i32 %24, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @MGB_MII_REG_ADDR_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @MGB_MII_REG_ADDR_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @MGB_MII_BUSY, align 4
  %35 = load i32, i32* @MGB_MII_READ, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load %struct.mgb_softc*, %struct.mgb_softc** %8, align 8
  %40 = load i32, i32* @MGB_MII_ACCESS, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %39, i32 %40, i32 %41)
  %43 = load %struct.mgb_softc*, %struct.mgb_softc** %8, align 8
  %44 = load i32, i32* @MGB_MII_ACCESS, align 4
  %45 = load i32, i32* @MGB_MII_BUSY, align 4
  %46 = call i64 @mgb_wait_for_bits(%struct.mgb_softc* %43, i32 %44, i32 0, i32 %45)
  %47 = load i64, i64* @MGB_STS_TIMEOUT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %21
  %50 = load i32, i32* @EIO, align 4
  store i32 %50, i32* %4, align 4
  br label %55

51:                                               ; preds = %21
  %52 = load %struct.mgb_softc*, %struct.mgb_softc** %8, align 8
  %53 = load i32, i32* @MGB_MII_DATA, align 4
  %54 = call i32 @CSR_READ_2_BYTES(%struct.mgb_softc* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %51, %49, %19
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.mgb_softc* @iflib_get_softc(i32) #1

declare dso_local i32 @device_get_softc(i32) #1

declare dso_local i64 @mgb_wait_for_bits(%struct.mgb_softc*, i32, i32, i32) #1

declare dso_local i32 @CSR_WRITE_REG(%struct.mgb_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_2_BYTES(%struct.mgb_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
