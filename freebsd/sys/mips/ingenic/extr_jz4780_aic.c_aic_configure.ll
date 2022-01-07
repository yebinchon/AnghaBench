; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_aic.c_aic_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_aic.c_aic_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic_softc = type { i64 }

@AICFR = common dso_local global i32 0, align 4
@AICFR_RST = common dso_local global i32 0, align 4
@AICFR_ICDC = common dso_local global i32 0, align 4
@AICFR_SYNCD = common dso_local global i32 0, align 4
@AICFR_BCKD = common dso_local global i32 0, align 4
@AICFR_AUSEL = common dso_local global i32 0, align 4
@AICFR_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aic_softc*)* @aic_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic_configure(%struct.aic_softc* %0) #0 {
  %2 = alloca %struct.aic_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.aic_softc* %0, %struct.aic_softc** %2, align 8
  %4 = load %struct.aic_softc*, %struct.aic_softc** %2, align 8
  %5 = load i32, i32* @AICFR, align 4
  %6 = load i32, i32* @AICFR_RST, align 4
  %7 = call i32 @WRITE4(%struct.aic_softc* %4, i32 %5, i32 %6)
  store i32 0, i32* %3, align 4
  %8 = load %struct.aic_softc*, %struct.aic_softc** %2, align 8
  %9 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @AICFR_ICDC, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  br label %22

16:                                               ; preds = %1
  %17 = load i32, i32* @AICFR_SYNCD, align 4
  %18 = load i32, i32* @AICFR_BCKD, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %16, %12
  %23 = load i32, i32* @AICFR_AUSEL, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = call i32 @AICFR_TFTH(i32 8)
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = call i32 @AICFR_RFTH(i32 7)
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load %struct.aic_softc*, %struct.aic_softc** %2, align 8
  %33 = load i32, i32* @AICFR, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @WRITE4(%struct.aic_softc* %32, i32 %33, i32 %34)
  %36 = load %struct.aic_softc*, %struct.aic_softc** %2, align 8
  %37 = load i32, i32* @AICFR, align 4
  %38 = call i32 @READ4(%struct.aic_softc* %36, i32 %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* @AICFR_ENB, align 4
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  %42 = load %struct.aic_softc*, %struct.aic_softc** %2, align 8
  %43 = load i32, i32* @AICFR, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @WRITE4(%struct.aic_softc* %42, i32 %43, i32 %44)
  ret i32 0
}

declare dso_local i32 @WRITE4(%struct.aic_softc*, i32, i32) #1

declare dso_local i32 @AICFR_TFTH(i32) #1

declare dso_local i32 @AICFR_RFTH(i32) #1

declare dso_local i32 @READ4(%struct.aic_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
