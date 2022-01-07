; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_atibl.c_atibl_pll_wreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_atibl.c_atibl_pll_wreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atibl_softc = type { i32 }

@RADEON_CLOCK_CNTL_INDEX = common dso_local global i32 0, align 4
@RADEON_PLL_WR_EN = common dso_local global i32 0, align 4
@RADEON_CLOCK_CNTL_DATA = common dso_local global i32 0, align 4
@RADEON_CRTC_GEN_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atibl_softc*, i32, i32)* @atibl_pll_wreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atibl_pll_wreg(%struct.atibl_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.atibl_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.atibl_softc* %0, %struct.atibl_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.atibl_softc*, %struct.atibl_softc** %4, align 8
  %10 = getelementptr inbounds %struct.atibl_softc, %struct.atibl_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @RADEON_CLOCK_CNTL_INDEX, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 63
  %15 = load i32, i32* @RADEON_PLL_WR_EN, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @bus_write_1(i32 %11, i32 %12, i32 %16)
  %18 = load %struct.atibl_softc*, %struct.atibl_softc** %4, align 8
  %19 = getelementptr inbounds %struct.atibl_softc, %struct.atibl_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RADEON_CLOCK_CNTL_DATA, align 4
  %22 = call i32 @bus_read_4(i32 %20, i32 %21)
  %23 = load %struct.atibl_softc*, %struct.atibl_softc** %4, align 8
  %24 = getelementptr inbounds %struct.atibl_softc, %struct.atibl_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RADEON_CRTC_GEN_CNTL, align 4
  %27 = call i32 @bus_read_4(i32 %25, i32 %26)
  %28 = load %struct.atibl_softc*, %struct.atibl_softc** %4, align 8
  %29 = getelementptr inbounds %struct.atibl_softc, %struct.atibl_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RADEON_CLOCK_CNTL_DATA, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @bus_write_4(i32 %30, i32 %31, i32 %32)
  %34 = call i32 @DELAY(i32 5000)
  %35 = load %struct.atibl_softc*, %struct.atibl_softc** %4, align 8
  %36 = getelementptr inbounds %struct.atibl_softc, %struct.atibl_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @RADEON_CLOCK_CNTL_INDEX, align 4
  %39 = call i32 @bus_read_4(i32 %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @RADEON_PLL_WR_EN, align 4
  %42 = or i32 -64, %41
  %43 = and i32 %40, %42
  store i32 %43, i32* %8, align 4
  %44 = load %struct.atibl_softc*, %struct.atibl_softc** %4, align 8
  %45 = getelementptr inbounds %struct.atibl_softc, %struct.atibl_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @RADEON_CLOCK_CNTL_INDEX, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @bus_write_4(i32 %46, i32 %47, i32 %48)
  %50 = load %struct.atibl_softc*, %struct.atibl_softc** %4, align 8
  %51 = getelementptr inbounds %struct.atibl_softc, %struct.atibl_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @RADEON_CLOCK_CNTL_DATA, align 4
  %54 = call i32 @bus_read_4(i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.atibl_softc*, %struct.atibl_softc** %4, align 8
  %56 = getelementptr inbounds %struct.atibl_softc, %struct.atibl_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @RADEON_CLOCK_CNTL_INDEX, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @bus_write_4(i32 %57, i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @bus_write_1(i32, i32, i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
