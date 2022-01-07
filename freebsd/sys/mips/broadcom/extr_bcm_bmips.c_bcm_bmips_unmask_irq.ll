; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_bmips.c_bcm_bmips_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_bmips.c_bcm_bmips_unmask_irq.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_bmips_softc*, i64, i64)* @bcm_bmips_unmask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_bmips_unmask_irq(%struct.bcm_bmips_softc* %0, i64 %1, i64 %2) #0 {
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
  br i1 %25, label %26, label %43

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
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %38 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SIBA_CFG0_INTVEC, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @bus_write_4(i32 %39, i32 %40, i32 %41)
  br label %76

43:                                               ; preds = %3
  %44 = load i64, i64* %6, align 8
  %45 = trunc i64 %44 to i32
  %46 = shl i32 1, %45
  %47 = load i32, i32* @SIBA_IPS_INT1_MASK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %6, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @KASSERT(i32 %50, i8* %52)
  %54 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %55 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SIBA_CFG0_IPSFLAG, align 4
  %58 = call i32 @bus_read_4(i32 %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i64 @SIBA_IPS_INT_SHIFT(i64 %60)
  %62 = shl i64 %59, %61
  %63 = load i64, i64* %5, align 8
  %64 = call i64 @SIBA_IPS_INT_MASK(i64 %63)
  %65 = and i64 %62, %64
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = or i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %8, align 4
  %70 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %4, align 8
  %71 = getelementptr inbounds %struct.bcm_bmips_softc, %struct.bcm_bmips_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SIBA_CFG0_IPSFLAG, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @bus_write_4(i32 %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %43, %26
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i64 @SIBA_IPS_INT_SHIFT(i64) #1

declare dso_local i64 @SIBA_IPS_INT_MASK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
