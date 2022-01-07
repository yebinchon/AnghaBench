; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_lcd.c_jzlcd_setup_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_lcd.c_jzlcd_setup_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jzlcd_softc = type { i32, i64, %struct.lcd_frame_descriptor* }
%struct.lcd_frame_descriptor = type { i32, i32, i32, i32, i64, i64, i32, i64 }
%struct.videomode = type { i32, i32 }

@FB_BPP = common dso_local global i32 0, align 4
@LCDCMD_FRM_EN = common dso_local global i32 0, align 4
@LCDPOS_BPP01_18_24 = common dso_local global i32 0, align 4
@LCDPOS_PREMULTI01 = common dso_local global i32 0, align 4
@LCDPOS_COEF_BLE01_1 = common dso_local global i32 0, align 4
@LCDPOS_COEF_SLE01 = common dso_local global i32 0, align 4
@LCDDESSIZE_ALPHA = common dso_local global i32 0, align 4
@LCDDESSIZE_HEIGHT_SHIFT = common dso_local global i32 0, align 4
@LCDDESSIZE_WIDTH_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jzlcd_softc*, %struct.videomode*, i32)* @jzlcd_setup_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jzlcd_setup_descriptor(%struct.jzlcd_softc* %0, %struct.videomode* %1, i32 %2) #0 {
  %4 = alloca %struct.jzlcd_softc*, align 8
  %5 = alloca %struct.videomode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lcd_frame_descriptor*, align 8
  %8 = alloca i32, align 4
  store %struct.jzlcd_softc* %0, %struct.jzlcd_softc** %4, align 8
  store %struct.videomode* %1, %struct.videomode** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.videomode*, %struct.videomode** %5, align 8
  %10 = getelementptr inbounds %struct.videomode, %struct.videomode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @FB_BPP, align 4
  %13 = mul nsw i32 %11, %12
  %14 = ashr i32 %13, 3
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = add nsw i32 %15, 3
  %17 = and i32 %16, -4
  %18 = sdiv i32 %17, 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %20 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %19, i32 0, i32 2
  %21 = load %struct.lcd_frame_descriptor*, %struct.lcd_frame_descriptor** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.lcd_frame_descriptor, %struct.lcd_frame_descriptor* %21, i64 %23
  store %struct.lcd_frame_descriptor* %24, %struct.lcd_frame_descriptor** %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %29 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, 48
  %32 = load %struct.lcd_frame_descriptor*, %struct.lcd_frame_descriptor** %7, align 8
  %33 = getelementptr inbounds %struct.lcd_frame_descriptor, %struct.lcd_frame_descriptor* %32, i32 0, i32 7
  store i64 %31, i64* %33, align 8
  br label %40

34:                                               ; preds = %3
  %35 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %36 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.lcd_frame_descriptor*, %struct.lcd_frame_descriptor** %7, align 8
  %39 = getelementptr inbounds %struct.lcd_frame_descriptor, %struct.lcd_frame_descriptor* %38, i32 0, i32 7
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %34, %27
  %41 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %42 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.lcd_frame_descriptor*, %struct.lcd_frame_descriptor** %7, align 8
  %45 = getelementptr inbounds %struct.lcd_frame_descriptor, %struct.lcd_frame_descriptor* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.lcd_frame_descriptor*, %struct.lcd_frame_descriptor** %7, align 8
  %48 = getelementptr inbounds %struct.lcd_frame_descriptor, %struct.lcd_frame_descriptor* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @LCDCMD_FRM_EN, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.videomode*, %struct.videomode** %5, align 8
  %52 = getelementptr inbounds %struct.videomode, %struct.videomode* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %50, %53
  %55 = or i32 %49, %54
  %56 = load %struct.lcd_frame_descriptor*, %struct.lcd_frame_descriptor** %7, align 8
  %57 = getelementptr inbounds %struct.lcd_frame_descriptor, %struct.lcd_frame_descriptor* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.lcd_frame_descriptor*, %struct.lcd_frame_descriptor** %7, align 8
  %59 = getelementptr inbounds %struct.lcd_frame_descriptor, %struct.lcd_frame_descriptor* %58, i32 0, i32 5
  store i64 0, i64* %59, align 8
  %60 = load %struct.lcd_frame_descriptor*, %struct.lcd_frame_descriptor** %7, align 8
  %61 = getelementptr inbounds %struct.lcd_frame_descriptor, %struct.lcd_frame_descriptor* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* @LCDPOS_BPP01_18_24, align 4
  %63 = load i32, i32* @LCDPOS_PREMULTI01, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %40
  %68 = load i32, i32* @LCDPOS_COEF_BLE01_1, align 4
  br label %71

69:                                               ; preds = %40
  %70 = load i32, i32* @LCDPOS_COEF_SLE01, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = or i32 %64, %72
  %74 = load %struct.lcd_frame_descriptor*, %struct.lcd_frame_descriptor** %7, align 8
  %75 = getelementptr inbounds %struct.lcd_frame_descriptor, %struct.lcd_frame_descriptor* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @LCDDESSIZE_ALPHA, align 4
  %77 = load %struct.videomode*, %struct.videomode** %5, align 8
  %78 = getelementptr inbounds %struct.videomode, %struct.videomode* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = load i32, i32* @LCDDESSIZE_HEIGHT_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = or i32 %76, %82
  %84 = load %struct.videomode*, %struct.videomode** %5, align 8
  %85 = getelementptr inbounds %struct.videomode, %struct.videomode* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* @LCDDESSIZE_WIDTH_SHIFT, align 4
  %89 = shl i32 %87, %88
  %90 = or i32 %83, %89
  %91 = load %struct.lcd_frame_descriptor*, %struct.lcd_frame_descriptor** %7, align 8
  %92 = getelementptr inbounds %struct.lcd_frame_descriptor, %struct.lcd_frame_descriptor* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
