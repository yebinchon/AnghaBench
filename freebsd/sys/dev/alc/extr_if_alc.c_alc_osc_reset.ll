; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_osc_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_osc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32 }

@ALC_MISC3 = common dso_local global i32 0, align 4
@MISC3_25M_BY_SW = common dso_local global i32 0, align 4
@MISC3_25M_NOTO_INTNL = common dso_local global i32 0, align 4
@ALC_MISC = common dso_local global i32 0, align 4
@AR816X_REV_B0 = common dso_local global i64 0, align 8
@MISC_PSW_OCP_MASK = common dso_local global i32 0, align 4
@MISC_PSW_OCP_DEFAULT = common dso_local global i32 0, align 4
@MISC_PSW_OCP_SHIFT = common dso_local global i32 0, align 4
@MISC_INTNLOSC_OPEN = common dso_local global i32 0, align 4
@ALC_MISC2 = common dso_local global i32 0, align 4
@MISC2_CALB_START = common dso_local global i32 0, align 4
@AR816X_REV_A1 = common dso_local global i64 0, align 8
@MISC_ISO_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_osc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_osc_reset(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  %4 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %5 = load i32, i32* @ALC_MISC3, align 4
  %6 = call i32 @CSR_READ_4(%struct.alc_softc* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @MISC3_25M_BY_SW, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @MISC3_25M_NOTO_INTNL, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %15 = load i32, i32* @ALC_MISC3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @CSR_WRITE_4(%struct.alc_softc* %14, i32 %15, i32 %16)
  %18 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %19 = load i32, i32* @ALC_MISC, align 4
  %20 = call i32 @CSR_READ_4(%struct.alc_softc* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %22 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @AR816X_REV(i32 %23)
  %25 = load i64, i64* @AR816X_REV_B0, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %68

27:                                               ; preds = %1
  %28 = load i32, i32* @MISC_PSW_OCP_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @MISC_PSW_OCP_DEFAULT, align 4
  %33 = load i32, i32* @MISC_PSW_OCP_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @MISC_INTNLOSC_OPEN, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %42 = load i32, i32* @ALC_MISC, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @CSR_WRITE_4(%struct.alc_softc* %41, i32 %42, i32 %43)
  %45 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %46 = load i32, i32* @ALC_MISC, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @MISC_INTNLOSC_OPEN, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @CSR_WRITE_4(%struct.alc_softc* %45, i32 %46, i32 %49)
  %51 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %52 = load i32, i32* @ALC_MISC2, align 4
  %53 = call i32 @CSR_READ_4(%struct.alc_softc* %51, i32 %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* @MISC2_CALB_START, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %3, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %3, align 4
  %58 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %59 = load i32, i32* @ALC_MISC2, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @CSR_WRITE_4(%struct.alc_softc* %58, i32 %59, i32 %60)
  %62 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %63 = load i32, i32* @ALC_MISC2, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @MISC2_CALB_START, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @CSR_WRITE_4(%struct.alc_softc* %62, i32 %63, i32 %66)
  br label %95

68:                                               ; preds = %1
  %69 = load i32, i32* @MISC_INTNLOSC_OPEN, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %3, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %3, align 4
  %73 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %74 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @AR816X_REV(i32 %75)
  %77 = load i64, i64* @AR816X_REV_A1, align 8
  %78 = icmp sle i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %68
  %80 = load i32, i32* @MISC_ISO_ENB, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %3, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %79, %68
  %85 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %86 = load i32, i32* @ALC_MISC, align 4
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @MISC_INTNLOSC_OPEN, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @CSR_WRITE_4(%struct.alc_softc* %85, i32 %86, i32 %89)
  %91 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %92 = load i32, i32* @ALC_MISC, align 4
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @CSR_WRITE_4(%struct.alc_softc* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %84, %27
  %96 = call i32 @DELAY(i32 20)
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.alc_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.alc_softc*, i32, i32) #1

declare dso_local i64 @AR816X_REV(i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
