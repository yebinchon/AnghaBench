; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_core_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_core_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { i32 }

@BFE_SBTMSLOW = common dso_local global i32 0, align 4
@BFE_RESET = common dso_local global i32 0, align 4
@BFE_REJECT = common dso_local global i32 0, align 4
@BFE_CLOCK = common dso_local global i32 0, align 4
@BFE_SBTMSHIGH = common dso_local global i32 0, align 4
@BFE_BUSY = common dso_local global i32 0, align 4
@BFE_FGC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfe_softc*)* @bfe_core_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfe_core_disable(%struct.bfe_softc* %0) #0 {
  %2 = alloca %struct.bfe_softc*, align 8
  store %struct.bfe_softc* %0, %struct.bfe_softc** %2, align 8
  %3 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %4 = load i32, i32* @BFE_SBTMSLOW, align 4
  %5 = call i32 @CSR_READ_4(%struct.bfe_softc* %3, i32 %4)
  %6 = load i32, i32* @BFE_RESET, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %46

10:                                               ; preds = %1
  %11 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %12 = load i32, i32* @BFE_SBTMSLOW, align 4
  %13 = load i32, i32* @BFE_REJECT, align 4
  %14 = load i32, i32* @BFE_CLOCK, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %11, i32 %12, i32 %15)
  %17 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %18 = load i32, i32* @BFE_SBTMSLOW, align 4
  %19 = load i32, i32* @BFE_REJECT, align 4
  %20 = call i32 @bfe_wait_bit(%struct.bfe_softc* %17, i32 %18, i32 %19, i32 1000, i32 0)
  %21 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %22 = load i32, i32* @BFE_SBTMSHIGH, align 4
  %23 = load i32, i32* @BFE_BUSY, align 4
  %24 = call i32 @bfe_wait_bit(%struct.bfe_softc* %21, i32 %22, i32 %23, i32 1000, i32 1)
  %25 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %26 = load i32, i32* @BFE_SBTMSLOW, align 4
  %27 = load i32, i32* @BFE_FGC, align 4
  %28 = load i32, i32* @BFE_CLOCK, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @BFE_REJECT, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @BFE_RESET, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %25, i32 %26, i32 %33)
  %35 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %36 = load i32, i32* @BFE_SBTMSLOW, align 4
  %37 = call i32 @CSR_READ_4(%struct.bfe_softc* %35, i32 %36)
  %38 = call i32 @DELAY(i32 10)
  %39 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %40 = load i32, i32* @BFE_SBTMSLOW, align 4
  %41 = load i32, i32* @BFE_REJECT, align 4
  %42 = load i32, i32* @BFE_RESET, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %39, i32 %40, i32 %43)
  %45 = call i32 @DELAY(i32 10)
  br label %46

46:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.bfe_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bfe_softc*, i32, i32) #1

declare dso_local i32 @bfe_wait_bit(%struct.bfe_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
