; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffec_softc = type { i32 }

@FEC_IER_REG = common dso_local global i32 0, align 4
@FEC_IER_MII = common dso_local global i32 0, align 4
@FEC_MMFR_REG = common dso_local global i32 0, align 4
@FEC_MMFR_OP_READ = common dso_local global i32 0, align 4
@FEC_MMFR_ST_VALUE = common dso_local global i32 0, align 4
@FEC_MMFR_TA_VALUE = common dso_local global i32 0, align 4
@FEC_MMFR_PA_SHIFT = common dso_local global i32 0, align 4
@FEC_MMFR_PA_MASK = common dso_local global i32 0, align 4
@FEC_MMFR_RA_SHIFT = common dso_local global i32 0, align 4
@FEC_MMFR_RA_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"timeout waiting for mii read\0A\00", align 1
@FEC_MMFR_DATA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ffec_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffec_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ffec_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.ffec_softc* @device_get_softc(i32 %10)
  store %struct.ffec_softc* %11, %struct.ffec_softc** %8, align 8
  %12 = load %struct.ffec_softc*, %struct.ffec_softc** %8, align 8
  %13 = load i32, i32* @FEC_IER_REG, align 4
  %14 = load i32, i32* @FEC_IER_MII, align 4
  %15 = call i32 @WR4(%struct.ffec_softc* %12, i32 %13, i32 %14)
  %16 = load %struct.ffec_softc*, %struct.ffec_softc** %8, align 8
  %17 = load i32, i32* @FEC_MMFR_REG, align 4
  %18 = load i32, i32* @FEC_MMFR_OP_READ, align 4
  %19 = load i32, i32* @FEC_MMFR_ST_VALUE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @FEC_MMFR_TA_VALUE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @FEC_MMFR_PA_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* @FEC_MMFR_PA_MASK, align 4
  %27 = and i32 %25, %26
  %28 = or i32 %22, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @FEC_MMFR_RA_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* @FEC_MMFR_RA_MASK, align 4
  %33 = and i32 %31, %32
  %34 = or i32 %28, %33
  %35 = call i32 @WR4(%struct.ffec_softc* %16, i32 %17, i32 %34)
  %36 = load %struct.ffec_softc*, %struct.ffec_softc** %8, align 8
  %37 = call i32 @ffec_miibus_iowait(%struct.ffec_softc* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %3
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %49

42:                                               ; preds = %3
  %43 = load %struct.ffec_softc*, %struct.ffec_softc** %8, align 8
  %44 = load i32, i32* @FEC_MMFR_REG, align 4
  %45 = call i32 @RD4(%struct.ffec_softc* %43, i32 %44)
  %46 = load i32, i32* @FEC_MMFR_DATA_MASK, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %42, %39
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.ffec_softc* @device_get_softc(i32) #1

declare dso_local i32 @WR4(%struct.ffec_softc*, i32, i32) #1

declare dso_local i32 @ffec_miibus_iowait(%struct.ffec_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @RD4(%struct.ffec_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
