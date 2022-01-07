; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_intrs_ctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_intrs_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsec_softc = type { i32 }

@TSEC_REG_IMASK = common dso_local global i32 0, align 4
@TSEC_IMASK_BREN = common dso_local global i32 0, align 4
@TSEC_IMASK_RXCEN = common dso_local global i32 0, align 4
@TSEC_IMASK_BSYEN = common dso_local global i32 0, align 4
@TSEC_IMASK_EBERREN = common dso_local global i32 0, align 4
@TSEC_IMASK_BTEN = common dso_local global i32 0, align 4
@TSEC_IMASK_TXEEN = common dso_local global i32 0, align 4
@TSEC_IMASK_TXBEN = common dso_local global i32 0, align 4
@TSEC_IMASK_TXFEN = common dso_local global i32 0, align 4
@TSEC_IMASK_XFUNEN = common dso_local global i32 0, align 4
@TSEC_IMASK_RXFEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"tsec_intrs_ctl(): unknown state value: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsec_softc*, i32)* @tsec_intrs_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsec_intrs_ctl(%struct.tsec_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.tsec_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tsec_softc* %0, %struct.tsec_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %7 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %37 [
    i32 0, label %10
    i32 1, label %14
  ]

10:                                               ; preds = %2
  %11 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %12 = load i32, i32* @TSEC_REG_IMASK, align 4
  %13 = call i32 @TSEC_WRITE(%struct.tsec_softc* %11, i32 %12, i32 0)
  br label %41

14:                                               ; preds = %2
  %15 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %16 = load i32, i32* @TSEC_REG_IMASK, align 4
  %17 = load i32, i32* @TSEC_IMASK_BREN, align 4
  %18 = load i32, i32* @TSEC_IMASK_RXCEN, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @TSEC_IMASK_BSYEN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @TSEC_IMASK_EBERREN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @TSEC_IMASK_BTEN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @TSEC_IMASK_TXEEN, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @TSEC_IMASK_TXBEN, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @TSEC_IMASK_TXFEN, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @TSEC_IMASK_XFUNEN, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @TSEC_IMASK_RXFEN, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @TSEC_WRITE(%struct.tsec_softc* %15, i32 %16, i32 %35)
  br label %41

37:                                               ; preds = %2
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %14, %10
  ret void
}

declare dso_local i32 @TSEC_WRITE(%struct.tsec_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
