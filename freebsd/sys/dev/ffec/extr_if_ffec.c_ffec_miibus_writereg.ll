; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffec_softc = type { i32 }

@FEC_IER_REG = common dso_local global i32 0, align 4
@FEC_IER_MII = common dso_local global i32 0, align 4
@FEC_MMFR_REG = common dso_local global i32 0, align 4
@FEC_MMFR_OP_WRITE = common dso_local global i32 0, align 4
@FEC_MMFR_ST_VALUE = common dso_local global i32 0, align 4
@FEC_MMFR_TA_VALUE = common dso_local global i32 0, align 4
@FEC_MMFR_PA_SHIFT = common dso_local global i32 0, align 4
@FEC_MMFR_PA_MASK = common dso_local global i32 0, align 4
@FEC_MMFR_RA_SHIFT = common dso_local global i32 0, align 4
@FEC_MMFR_RA_MASK = common dso_local global i32 0, align 4
@FEC_MMFR_DATA_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"timeout waiting for mii write\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @ffec_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffec_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ffec_softc*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.ffec_softc* @device_get_softc(i32 %11)
  store %struct.ffec_softc* %12, %struct.ffec_softc** %10, align 8
  %13 = load %struct.ffec_softc*, %struct.ffec_softc** %10, align 8
  %14 = load i32, i32* @FEC_IER_REG, align 4
  %15 = load i32, i32* @FEC_IER_MII, align 4
  %16 = call i32 @WR4(%struct.ffec_softc* %13, i32 %14, i32 %15)
  %17 = load %struct.ffec_softc*, %struct.ffec_softc** %10, align 8
  %18 = load i32, i32* @FEC_MMFR_REG, align 4
  %19 = load i32, i32* @FEC_MMFR_OP_WRITE, align 4
  %20 = load i32, i32* @FEC_MMFR_ST_VALUE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @FEC_MMFR_TA_VALUE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @FEC_MMFR_PA_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = load i32, i32* @FEC_MMFR_PA_MASK, align 4
  %28 = and i32 %26, %27
  %29 = or i32 %23, %28
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @FEC_MMFR_RA_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* @FEC_MMFR_RA_MASK, align 4
  %34 = and i32 %32, %33
  %35 = or i32 %29, %34
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @FEC_MMFR_DATA_MASK, align 4
  %38 = and i32 %36, %37
  %39 = or i32 %35, %38
  %40 = call i32 @WR4(%struct.ffec_softc* %17, i32 %18, i32 %39)
  %41 = load %struct.ffec_softc*, %struct.ffec_softc** %10, align 8
  %42 = call i32 @ffec_miibus_iowait(%struct.ffec_softc* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %48

47:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.ffec_softc* @device_get_softc(i32) #1

declare dso_local i32 @WR4(%struct.ffec_softc*, i32, i32) #1

declare dso_local i32 @ffec_miibus_iowait(%struct.ffec_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
