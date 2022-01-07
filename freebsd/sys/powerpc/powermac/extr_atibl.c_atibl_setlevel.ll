; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_atibl.c_atibl_setlevel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_atibl.c_atibl_setlevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atibl_softc = type { i32 }

@RADEON_LVDS_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_DISP_PWR_MAN = common dso_local global i32 0, align 4
@RADEON_AUTO_PWRUP_EN = common dso_local global i32 0, align 4
@RADEON_LVDS_PLL_CNTL = common dso_local global i32 0, align 4
@RADEON_LVDS_PLL_EN = common dso_local global i32 0, align 4
@RADEON_LVDS_PLL_RESET = common dso_local global i32 0, align 4
@RADEON_LVDS_DISPLAY_DIS = common dso_local global i32 0, align 4
@RADEON_LVDS_BL_MOD_LEVEL_MASK = common dso_local global i32 0, align 4
@RADEON_LVDS_ON = common dso_local global i32 0, align 4
@RADEON_LVDS_EN = common dso_local global i32 0, align 4
@RADEON_LVDS_DIGON = common dso_local global i32 0, align 4
@RADEON_LVDS_BLON = common dso_local global i32 0, align 4
@RADEON_LVDS_BL_MOD_LEVEL_SHIFT = common dso_local global i32 0, align 4
@RADEON_LVDS_BL_MOD_EN = common dso_local global i32 0, align 4
@RADEON_PIXCLKS_CNTL = common dso_local global i32 0, align 4
@RADEON_PIXCLK_LVDS_ALWAYS_ONb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atibl_softc*, i32)* @atibl_setlevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atibl_setlevel(%struct.atibl_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.atibl_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.atibl_softc* %0, %struct.atibl_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 100
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 100, i32* %4, align 4
  br label %12

12:                                               ; preds = %11, %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = load %struct.atibl_softc*, %struct.atibl_softc** %3, align 8
  %18 = getelementptr inbounds %struct.atibl_softc, %struct.atibl_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RADEON_LVDS_GEN_CNTL, align 4
  %21 = call i32 @bus_read_4(i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %100

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 %25, 5
  %27 = sdiv i32 %26, 2
  %28 = add nsw i32 %27, 5
  store i32 %28, i32* %4, align 4
  %29 = load %struct.atibl_softc*, %struct.atibl_softc** %3, align 8
  %30 = getelementptr inbounds %struct.atibl_softc, %struct.atibl_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @RADEON_DISP_PWR_MAN, align 4
  %33 = call i32 @bus_read_4(i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @RADEON_AUTO_PWRUP_EN, align 4
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load %struct.atibl_softc*, %struct.atibl_softc** %3, align 8
  %38 = getelementptr inbounds %struct.atibl_softc, %struct.atibl_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @RADEON_DISP_PWR_MAN, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @bus_write_4(i32 %39, i32 %40, i32 %41)
  %43 = load %struct.atibl_softc*, %struct.atibl_softc** %3, align 8
  %44 = getelementptr inbounds %struct.atibl_softc, %struct.atibl_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @RADEON_LVDS_PLL_CNTL, align 4
  %47 = call i32 @bus_read_4(i32 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @RADEON_LVDS_PLL_EN, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load %struct.atibl_softc*, %struct.atibl_softc** %3, align 8
  %52 = getelementptr inbounds %struct.atibl_softc, %struct.atibl_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @RADEON_LVDS_PLL_CNTL, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @bus_write_4(i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* @RADEON_LVDS_PLL_RESET, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load %struct.atibl_softc*, %struct.atibl_softc** %3, align 8
  %62 = getelementptr inbounds %struct.atibl_softc, %struct.atibl_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @RADEON_LVDS_PLL_CNTL, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @bus_write_4(i32 %63, i32 %64, i32 %65)
  %67 = call i32 @DELAY(i32 1000)
  %68 = load i32, i32* @RADEON_LVDS_DISPLAY_DIS, align 4
  %69 = load i32, i32* @RADEON_LVDS_BL_MOD_LEVEL_MASK, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* @RADEON_LVDS_ON, align 4
  %75 = load i32, i32* @RADEON_LVDS_EN, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @RADEON_LVDS_DIGON, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @RADEON_LVDS_BLON, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @RADEON_LVDS_BL_MOD_LEVEL_SHIFT, align 4
  %85 = shl i32 %83, %84
  %86 = load i32, i32* @RADEON_LVDS_BL_MOD_LEVEL_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* @RADEON_LVDS_BL_MOD_EN, align 4
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  %93 = call i32 @DELAY(i32 200000)
  %94 = load %struct.atibl_softc*, %struct.atibl_softc** %3, align 8
  %95 = getelementptr inbounds %struct.atibl_softc, %struct.atibl_softc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @RADEON_LVDS_GEN_CNTL, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @bus_write_4(i32 %96, i32 %97, i32 %98)
  br label %144

100:                                              ; preds = %16
  %101 = load %struct.atibl_softc*, %struct.atibl_softc** %3, align 8
  %102 = load i32, i32* @RADEON_PIXCLKS_CNTL, align 4
  %103 = call i32 @atibl_pll_rreg(%struct.atibl_softc* %101, i32 %102)
  store i32 %103, i32* %7, align 4
  %104 = load %struct.atibl_softc*, %struct.atibl_softc** %3, align 8
  %105 = load i32, i32* @RADEON_PIXCLKS_CNTL, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @RADEON_PIXCLK_LVDS_ALWAYS_ONb, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %106, %108
  %110 = call i32 @atibl_pll_wreg(%struct.atibl_softc* %104, i32 %105, i32 %109)
  %111 = load i32, i32* @RADEON_LVDS_DISPLAY_DIS, align 4
  %112 = load i32, i32* %5, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* @RADEON_LVDS_BL_MOD_EN, align 4
  %115 = load i32, i32* @RADEON_LVDS_BL_MOD_LEVEL_MASK, align 4
  %116 = or i32 %114, %115
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %5, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %5, align 4
  %120 = load %struct.atibl_softc*, %struct.atibl_softc** %3, align 8
  %121 = getelementptr inbounds %struct.atibl_softc, %struct.atibl_softc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @RADEON_LVDS_GEN_CNTL, align 4
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @bus_write_4(i32 %122, i32 %123, i32 %124)
  %126 = load i32, i32* @RADEON_LVDS_ON, align 4
  %127 = load i32, i32* @RADEON_LVDS_EN, align 4
  %128 = or i32 %126, %127
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %5, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %5, align 4
  %132 = call i32 @DELAY(i32 200000)
  %133 = load %struct.atibl_softc*, %struct.atibl_softc** %3, align 8
  %134 = getelementptr inbounds %struct.atibl_softc, %struct.atibl_softc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @RADEON_LVDS_GEN_CNTL, align 4
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @bus_write_4(i32 %135, i32 %136, i32 %137)
  %139 = load %struct.atibl_softc*, %struct.atibl_softc** %3, align 8
  %140 = load i32, i32* @RADEON_PIXCLKS_CNTL, align 4
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @atibl_pll_wreg(%struct.atibl_softc* %139, i32 %140, i32 %141)
  %143 = call i32 @DELAY(i32 200000)
  br label %144

144:                                              ; preds = %100, %24
  ret i32 0
}

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @atibl_pll_rreg(%struct.atibl_softc*, i32) #1

declare dso_local i32 @atibl_pll_wreg(%struct.atibl_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
