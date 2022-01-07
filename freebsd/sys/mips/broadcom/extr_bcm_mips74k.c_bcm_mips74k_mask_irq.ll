; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_mips74k.c_bcm_mips74k_mask_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_mips74k.c_bcm_mips74k_mask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_mips74k_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"invalid MIPS IRQ %u\00", align 1
@BCM_MIPS74K_NUM_INTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"unsupported MIPS IRQ %u\00", align 1
@BCMA_OOB_NUM_BUSLINES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"invalid backplane ivec\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_mips74k_softc*, i64, i64)* @bcm_mips74k_mask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_mips74k_mask_irq(%struct.bcm_mips74k_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bcm_mips74k_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.bcm_mips74k_softc* %0, %struct.bcm_mips74k_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.bcm_mips74k_softc*, %struct.bcm_mips74k_softc** %4, align 8
  %10 = getelementptr inbounds %struct.bcm_mips74k_softc, %struct.bcm_mips74k_softc* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %8, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %5, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @KASSERT(i32 %14, i8* %16)
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @BCM_MIPS74K_NUM_INTR, align 8
  %20 = icmp slt i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %5, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @KASSERT(i32 %21, i8* %23)
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @BCMA_OOB_NUM_BUSLINES, align 8
  %27 = icmp slt i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @KASSERT(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.bcm_mips74k_softc*, %struct.bcm_mips74k_softc** %4, align 8
  %31 = getelementptr inbounds %struct.bcm_mips74k_softc, %struct.bcm_mips74k_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @BCM_MIPS74K_INTR_SEL(i64 %33)
  %35 = call i32 @bus_read_4(i32 %32, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @BCM_MIPS74K_INTR_SEL_FLAG(i64 %36)
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load %struct.bcm_mips74k_softc*, %struct.bcm_mips74k_softc** %4, align 8
  %42 = getelementptr inbounds %struct.bcm_mips74k_softc, %struct.bcm_mips74k_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @BCM_MIPS74K_INTR_SEL(i64 %44)
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @bus_write_4(i32 %43, i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @BCM_MIPS74K_INTR_SEL(i64) #1

declare dso_local i32 @BCM_MIPS74K_INTR_SEL_FLAG(i64) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
