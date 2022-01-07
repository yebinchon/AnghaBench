; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsec_softc = type { i32 }

@TSEC_REG_MIIMADD = common dso_local global i32 0, align 4
@TSEC_REG_MIIMCOM = common dso_local global i32 0, align 4
@TSEC_MIIMCOM_READCYCLE = common dso_local global i32 0, align 4
@TSEC_MIIMIND_NOTVALID = common dso_local global i32 0, align 4
@TSEC_MIIMIND_BUSY = common dso_local global i32 0, align 4
@TSEC_REG_MIIMSTAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Timeout while reading from PHY!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsec_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tsec_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.tsec_softc* @device_get_softc(i32 %10)
  store %struct.tsec_softc* %11, %struct.tsec_softc** %7, align 8
  %12 = call i32 (...) @TSEC_PHY_LOCK()
  %13 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %14 = load i32, i32* @TSEC_REG_MIIMADD, align 4
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 %15, 8
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @TSEC_PHY_WRITE(%struct.tsec_softc* %13, i32 %14, i32 %18)
  %20 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %21 = load i32, i32* @TSEC_REG_MIIMCOM, align 4
  %22 = call i32 @TSEC_PHY_WRITE(%struct.tsec_softc* %20, i32 %21, i32 0)
  %23 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %24 = load i32, i32* @TSEC_REG_MIIMCOM, align 4
  %25 = load i32, i32* @TSEC_MIIMCOM_READCYCLE, align 4
  %26 = call i32 @TSEC_PHY_WRITE(%struct.tsec_softc* %23, i32 %24, i32 %25)
  %27 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %28 = load i32, i32* @TSEC_MIIMIND_NOTVALID, align 4
  %29 = load i32, i32* @TSEC_MIIMIND_BUSY, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @tsec_mii_wait(%struct.tsec_softc* %27, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %33 = load i32, i32* @TSEC_REG_MIIMSTAT, align 4
  %34 = call i32 @TSEC_PHY_READ(%struct.tsec_softc* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = call i32 (...) @TSEC_PHY_UNLOCK()
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %3
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

declare dso_local %struct.tsec_softc* @device_get_softc(i32) #1

declare dso_local i32 @TSEC_PHY_LOCK(...) #1

declare dso_local i32 @TSEC_PHY_WRITE(%struct.tsec_softc*, i32, i32) #1

declare dso_local i32 @tsec_mii_wait(%struct.tsec_softc*, i32) #1

declare dso_local i32 @TSEC_PHY_READ(%struct.tsec_softc*, i32) #1

declare dso_local i32 @TSEC_PHY_UNLOCK(...) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
