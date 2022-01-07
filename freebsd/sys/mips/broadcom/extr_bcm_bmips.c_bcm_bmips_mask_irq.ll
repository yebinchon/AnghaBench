; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_bmips.c_bcm_bmips_mask_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_bmips.c_bcm_bmips_mask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_bmips_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SIBA_MAX_INTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"invalid sbflag# ivec\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid MIPS IRQ %u\00", align 1
@SIBA_CFG0_INTVEC = common dso_local global i32 0, align 4
@SIBA_IPS_INT1_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"cannot route high sbflag# ivec %u\00", align 1
@SIBA_CFG0_IPSFLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_bmips_softc*, i64, i64)* @bcm_bmips_mask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_bmips_mask_irq(%struct.bcm_bmips_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bcm_bmips_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bcm_bmips_softc* %0, %struct.bcm_bmips_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @SIBA_MAX_INTR, align 8
  %11 = icmp slt i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %16 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %14, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %5, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @KASSERT(i32 %20, i8* %22)
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %3
  %27 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %28 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SIBA_CFG0_INTVEC, align 4
  %31 = call i32 @bus_read_4(i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i64, i64* %6, align 8
  %33 = trunc i64 %32 to i32
  %34 = shl i32 1, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %39 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SIBA_CFG0_INTVEC, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @bus_write_4(i32 %40, i32 %41, i32 %42)
  br label %78

44:                                               ; preds = %3
  %45 = load i64, i64* %6, align 8
  %46 = trunc i64 %45 to i32
  %47 = shl i32 1, %46
  %48 = load i32, i32* @SIBA_IPS_INT1_MASK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %6, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @KASSERT(i32 %51, i8* %53)
  %55 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %56 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SIBA_CFG0_IPSFLAG, align 4
  %59 = call i32 @bus_read_4(i32 %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i64, i64* %6, align 8
  %61 = trunc i64 %60 to i32
  %62 = shl i32 1, %61
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @SIBA_IPS_INT_SHIFT(i64 %63)
  %65 = shl i32 %62, %64
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @SIBA_IPS_INT_MASK(i64 %66)
  %68 = and i32 %65, %67
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %8, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %73 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @SIBA_CFG0_IPSFLAG, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @bus_write_4(i32 %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %44, %26
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @SIBA_IPS_INT_SHIFT(i64) #1

declare dso_local i32 @SIBA_IPS_INT_MASK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
