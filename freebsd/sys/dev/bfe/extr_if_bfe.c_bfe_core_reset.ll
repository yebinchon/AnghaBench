; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_core_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_core_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { i32 }

@BFE_SBTMSLOW = common dso_local global i32 0, align 4
@BFE_RESET = common dso_local global i32 0, align 4
@BFE_CLOCK = common dso_local global i32 0, align 4
@BFE_FGC = common dso_local global i32 0, align 4
@BFE_SBTMSHIGH = common dso_local global i32 0, align 4
@BFE_SERR = common dso_local global i32 0, align 4
@BFE_SBIMSTATE = common dso_local global i32 0, align 4
@BFE_IBE = common dso_local global i32 0, align 4
@BFE_TO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfe_softc*)* @bfe_core_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfe_core_reset(%struct.bfe_softc* %0) #0 {
  %2 = alloca %struct.bfe_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bfe_softc* %0, %struct.bfe_softc** %2, align 8
  %4 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %5 = call i32 @bfe_core_disable(%struct.bfe_softc* %4)
  %6 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %7 = load i32, i32* @BFE_SBTMSLOW, align 4
  %8 = load i32, i32* @BFE_RESET, align 4
  %9 = load i32, i32* @BFE_CLOCK, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @BFE_FGC, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %6, i32 %7, i32 %12)
  %14 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %15 = load i32, i32* @BFE_SBTMSLOW, align 4
  %16 = call i32 @CSR_READ_4(%struct.bfe_softc* %14, i32 %15)
  %17 = call i32 @DELAY(i32 10)
  %18 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %19 = load i32, i32* @BFE_SBTMSHIGH, align 4
  %20 = call i32 @CSR_READ_4(%struct.bfe_softc* %18, i32 %19)
  %21 = load i32, i32* @BFE_SERR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %26 = load i32, i32* @BFE_SBTMSHIGH, align 4
  %27 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %25, i32 %26, i32 0)
  br label %28

28:                                               ; preds = %24, %1
  %29 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %30 = load i32, i32* @BFE_SBIMSTATE, align 4
  %31 = call i32 @CSR_READ_4(%struct.bfe_softc* %29, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @BFE_IBE, align 4
  %34 = load i32, i32* @BFE_TO, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %28
  %39 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %40 = load i32, i32* @BFE_SBIMSTATE, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @BFE_IBE, align 4
  %43 = load i32, i32* @BFE_TO, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = and i32 %41, %45
  %47 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %39, i32 %40, i32 %46)
  br label %48

48:                                               ; preds = %38, %28
  %49 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %50 = load i32, i32* @BFE_SBTMSLOW, align 4
  %51 = load i32, i32* @BFE_CLOCK, align 4
  %52 = load i32, i32* @BFE_FGC, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %49, i32 %50, i32 %53)
  %55 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %56 = load i32, i32* @BFE_SBTMSLOW, align 4
  %57 = call i32 @CSR_READ_4(%struct.bfe_softc* %55, i32 %56)
  %58 = call i32 @DELAY(i32 10)
  %59 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %60 = load i32, i32* @BFE_SBTMSLOW, align 4
  %61 = load i32, i32* @BFE_CLOCK, align 4
  %62 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %59, i32 %60, i32 %61)
  %63 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %64 = load i32, i32* @BFE_SBTMSLOW, align 4
  %65 = call i32 @CSR_READ_4(%struct.bfe_softc* %63, i32 %64)
  %66 = call i32 @DELAY(i32 10)
  ret void
}

declare dso_local i32 @bfe_core_disable(%struct.bfe_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bfe_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.bfe_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
