; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_regwin_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_regwin_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32 }
%struct.bwi_regwin = type { i32 }

@BWI_STATE_LO_RESET = common dso_local global i32 0, align 4
@BWI_STATE_LO_CLOCK = common dso_local global i32 0, align 4
@BWI_STATE_LO_GATED_CLOCK = common dso_local global i32 0, align 4
@BWI_STATE_LO_FLAGS_MASK = common dso_local global i32 0, align 4
@BWI_STATE_LO = common dso_local global i32 0, align 4
@BWI_STATE_HI = common dso_local global i32 0, align 4
@BWI_STATE_HI_SERROR = common dso_local global i32 0, align 4
@BWI_IMSTATE = common dso_local global i32 0, align 4
@BWI_IMSTATE_INBAND_ERR = common dso_local global i32 0, align 4
@BWI_IMSTATE_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwi_regwin_enable(%struct.bwi_softc* %0, %struct.bwi_regwin* %1, i32 %2) #0 {
  %4 = alloca %struct.bwi_softc*, align 8
  %5 = alloca %struct.bwi_regwin*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %4, align 8
  store %struct.bwi_regwin* %1, %struct.bwi_regwin** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %11 = load %struct.bwi_regwin*, %struct.bwi_regwin** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @bwi_regwin_disable(%struct.bwi_softc* %10, %struct.bwi_regwin* %11, i32 %12)
  %14 = load i32, i32* @BWI_STATE_LO_RESET, align 4
  %15 = load i32, i32* @BWI_STATE_LO_CLOCK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @BWI_STATE_LO_GATED_CLOCK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @BWI_STATE_LO_FLAGS_MASK, align 4
  %21 = call i32 @__SHIFTIN(i32 %19, i32 %20)
  %22 = or i32 %18, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %24 = load i32, i32* @BWI_STATE_LO, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %23, i32 %24, i32 %25)
  %27 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %28 = load i32, i32* @BWI_STATE_LO, align 4
  %29 = call i32 @CSR_READ_4(%struct.bwi_softc* %27, i32 %28)
  %30 = call i32 @DELAY(i32 1)
  %31 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %32 = load i32, i32* @BWI_STATE_HI, align 4
  %33 = call i32 @CSR_READ_4(%struct.bwi_softc* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @BWI_STATE_HI_SERROR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %3
  %39 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %40 = load i32, i32* @BWI_STATE_HI, align 4
  %41 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %39, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %38, %3
  %43 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %44 = load i32, i32* @BWI_IMSTATE, align 4
  %45 = call i32 @CSR_READ_4(%struct.bwi_softc* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @BWI_IMSTATE_INBAND_ERR, align 4
  %48 = load i32, i32* @BWI_IMSTATE_TIMEOUT, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %42
  %53 = load i32, i32* @BWI_IMSTATE_INBAND_ERR, align 4
  %54 = load i32, i32* @BWI_IMSTATE_TIMEOUT, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %60 = load i32, i32* @BWI_IMSTATE, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %52, %42
  %64 = load i32, i32* @BWI_STATE_LO_CLOCK, align 4
  %65 = load i32, i32* @BWI_STATE_LO_GATED_CLOCK, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @BWI_STATE_LO_FLAGS_MASK, align 4
  %69 = call i32 @__SHIFTIN(i32 %67, i32 %68)
  %70 = or i32 %66, %69
  store i32 %70, i32* %7, align 4
  %71 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %72 = load i32, i32* @BWI_STATE_LO, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %71, i32 %72, i32 %73)
  %75 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %76 = load i32, i32* @BWI_STATE_LO, align 4
  %77 = call i32 @CSR_READ_4(%struct.bwi_softc* %75, i32 %76)
  %78 = call i32 @DELAY(i32 1)
  %79 = load i32, i32* @BWI_STATE_LO_CLOCK, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @BWI_STATE_LO_FLAGS_MASK, align 4
  %82 = call i32 @__SHIFTIN(i32 %80, i32 %81)
  %83 = or i32 %79, %82
  store i32 %83, i32* %7, align 4
  %84 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %85 = load i32, i32* @BWI_STATE_LO, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %84, i32 %85, i32 %86)
  %88 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %89 = load i32, i32* @BWI_STATE_LO, align 4
  %90 = call i32 @CSR_READ_4(%struct.bwi_softc* %88, i32 %89)
  %91 = call i32 @DELAY(i32 1)
  ret void
}

declare dso_local i32 @bwi_regwin_disable(%struct.bwi_softc*, %struct.bwi_regwin*, i32) #1

declare dso_local i32 @__SHIFTIN(i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.bwi_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
