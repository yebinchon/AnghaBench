; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_clrwol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_clrwol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vr_softc = type { i64 }

@REV_ID_VT6102_A = common dso_local global i64 0, align 8
@VR_STICKHW = common dso_local global i32 0, align 4
@VR_STICKHW_DS0 = common dso_local global i32 0, align 4
@VR_STICKHW_DS1 = common dso_local global i32 0, align 4
@VR_STICKHW_WOL_ENB = common dso_local global i32 0, align 4
@VR_WOLCR_CLR = common dso_local global i32 0, align 4
@VR_WOLCFG_CLR = common dso_local global i32 0, align 4
@VR_WOLCFG_SAB = common dso_local global i32 0, align 4
@VR_WOLCFG_SAM = common dso_local global i32 0, align 4
@VR_WOLCFG_PMEOVR = common dso_local global i32 0, align 4
@VR_PWRCSR_CLR = common dso_local global i32 0, align 4
@VR_PWRCFG_CLR = common dso_local global i32 0, align 4
@VR_PWRCFG_WOLEN = common dso_local global i32 0, align 4
@REV_ID_VT6105_B0 = common dso_local global i64 0, align 8
@VR_WOLCFG_PATTERN_PAGE = common dso_local global i32 0, align 4
@VR_TESTREG_CLR = common dso_local global i32 0, align 4
@VR_PWRCSR1_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vr_softc*)* @vr_clrwol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vr_clrwol(%struct.vr_softc* %0) #0 {
  %2 = alloca %struct.vr_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.vr_softc* %0, %struct.vr_softc** %2, align 8
  %4 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %5 = call i32 @VR_LOCK_ASSERT(%struct.vr_softc* %4)
  %6 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %7 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @REV_ID_VT6102_A, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %62

12:                                               ; preds = %1
  %13 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %14 = load i32, i32* @VR_STICKHW, align 4
  %15 = call i32 @CSR_READ_1(%struct.vr_softc* %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @VR_STICKHW_DS0, align 4
  %17 = load i32, i32* @VR_STICKHW_DS1, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @VR_STICKHW_WOL_ENB, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %25 = load i32, i32* @VR_STICKHW, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @CSR_WRITE_1(%struct.vr_softc* %24, i32 %25, i32 %26)
  %28 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %29 = load i32, i32* @VR_WOLCR_CLR, align 4
  %30 = call i32 @CSR_WRITE_1(%struct.vr_softc* %28, i32 %29, i32 255)
  %31 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %32 = load i32, i32* @VR_WOLCFG_CLR, align 4
  %33 = load i32, i32* @VR_WOLCFG_SAB, align 4
  %34 = load i32, i32* @VR_WOLCFG_SAM, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @VR_WOLCFG_PMEOVR, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @CSR_WRITE_1(%struct.vr_softc* %31, i32 %32, i32 %37)
  %39 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %40 = load i32, i32* @VR_PWRCSR_CLR, align 4
  %41 = call i32 @CSR_WRITE_1(%struct.vr_softc* %39, i32 %40, i32 255)
  %42 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %43 = load i32, i32* @VR_PWRCFG_CLR, align 4
  %44 = load i32, i32* @VR_PWRCFG_WOLEN, align 4
  %45 = call i32 @CSR_WRITE_1(%struct.vr_softc* %42, i32 %43, i32 %44)
  %46 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %47 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @REV_ID_VT6105_B0, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %12
  %52 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %53 = load i32, i32* @VR_WOLCFG_CLR, align 4
  %54 = load i32, i32* @VR_WOLCFG_PATTERN_PAGE, align 4
  %55 = call i32 @CSR_WRITE_1(%struct.vr_softc* %52, i32 %53, i32 %54)
  %56 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %57 = load i32, i32* @VR_TESTREG_CLR, align 4
  %58 = call i32 @CSR_WRITE_1(%struct.vr_softc* %56, i32 %57, i32 3)
  %59 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %60 = load i32, i32* @VR_PWRCSR1_CLR, align 4
  %61 = call i32 @CSR_WRITE_1(%struct.vr_softc* %59, i32 %60, i32 3)
  br label %62

62:                                               ; preds = %11, %51, %12
  ret void
}

declare dso_local i32 @VR_LOCK_ASSERT(%struct.vr_softc*) #1

declare dso_local i32 @CSR_READ_1(%struct.vr_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.vr_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
