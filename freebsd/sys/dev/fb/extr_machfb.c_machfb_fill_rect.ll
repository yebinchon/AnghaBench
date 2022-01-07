; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_fill_rect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_fill_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machfb_softc = type { i64 }

@MACHFB_DRAW_FILLRECT = common dso_local global i64 0, align 8
@DP_WRITE_MASK = common dso_local global i32 0, align 4
@DP_PIX_WIDTH = common dso_local global i32 0, align 4
@DST_8BPP = common dso_local global i32 0, align 4
@SRC_8BPP = common dso_local global i32 0, align 4
@HOST_8BPP = common dso_local global i32 0, align 4
@DP_SRC = common dso_local global i32 0, align 4
@FRGD_SRC_FRGD_CLR = common dso_local global i32 0, align 4
@DP_MIX = common dso_local global i32 0, align 4
@MIX_SRC = common dso_local global i32 0, align 4
@CLR_CMP_CNTL = common dso_local global i32 0, align 4
@SRC_CNTL = common dso_local global i32 0, align 4
@SRC_LINE_X_LEFT_TO_RIGHT = common dso_local global i32 0, align 4
@DST_CNTL = common dso_local global i32 0, align 4
@DST_X_LEFT_TO_RIGHT = common dso_local global i32 0, align 4
@DST_Y_TOP_TO_BOTTOM = common dso_local global i32 0, align 4
@SRC_Y_X = common dso_local global i32 0, align 4
@SRC_WIDTH1 = common dso_local global i32 0, align 4
@DST_Y_X = common dso_local global i32 0, align 4
@DST_HEIGHT_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32, i32)* @machfb_fill_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machfb_fill_rect(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.machfb_softc*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = bitcast i32* %14 to %struct.machfb_softc*
  store %struct.machfb_softc* %15, %struct.machfb_softc** %13, align 8
  %16 = load %struct.machfb_softc*, %struct.machfb_softc** %13, align 8
  %17 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MACHFB_DRAW_FILLRECT, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %60

21:                                               ; preds = %6
  %22 = load %struct.machfb_softc*, %struct.machfb_softc** %13, align 8
  %23 = call i32 @wait_for_fifo(%struct.machfb_softc* %22, i32 7)
  %24 = load %struct.machfb_softc*, %struct.machfb_softc** %13, align 8
  %25 = load i32, i32* @DP_WRITE_MASK, align 4
  %26 = call i32 @regw(%struct.machfb_softc* %24, i32 %25, i32 255)
  %27 = load %struct.machfb_softc*, %struct.machfb_softc** %13, align 8
  %28 = load i32, i32* @DP_PIX_WIDTH, align 4
  %29 = load i32, i32* @DST_8BPP, align 4
  %30 = load i32, i32* @SRC_8BPP, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @HOST_8BPP, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @regw(%struct.machfb_softc* %27, i32 %28, i32 %33)
  %35 = load %struct.machfb_softc*, %struct.machfb_softc** %13, align 8
  %36 = load i32, i32* @DP_SRC, align 4
  %37 = load i32, i32* @FRGD_SRC_FRGD_CLR, align 4
  %38 = call i32 @regw(%struct.machfb_softc* %35, i32 %36, i32 %37)
  %39 = load %struct.machfb_softc*, %struct.machfb_softc** %13, align 8
  %40 = load i32, i32* @DP_MIX, align 4
  %41 = load i32, i32* @MIX_SRC, align 4
  %42 = shl i32 %41, 16
  %43 = call i32 @regw(%struct.machfb_softc* %39, i32 %40, i32 %42)
  %44 = load %struct.machfb_softc*, %struct.machfb_softc** %13, align 8
  %45 = load i32, i32* @CLR_CMP_CNTL, align 4
  %46 = call i32 @regw(%struct.machfb_softc* %44, i32 %45, i32 0)
  %47 = load %struct.machfb_softc*, %struct.machfb_softc** %13, align 8
  %48 = load i32, i32* @SRC_CNTL, align 4
  %49 = load i32, i32* @SRC_LINE_X_LEFT_TO_RIGHT, align 4
  %50 = call i32 @regw(%struct.machfb_softc* %47, i32 %48, i32 %49)
  %51 = load %struct.machfb_softc*, %struct.machfb_softc** %13, align 8
  %52 = load i32, i32* @DST_CNTL, align 4
  %53 = load i32, i32* @DST_X_LEFT_TO_RIGHT, align 4
  %54 = load i32, i32* @DST_Y_TOP_TO_BOTTOM, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @regw(%struct.machfb_softc* %51, i32 %52, i32 %55)
  %57 = load i64, i64* @MACHFB_DRAW_FILLRECT, align 8
  %58 = load %struct.machfb_softc*, %struct.machfb_softc** %13, align 8
  %59 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %21, %6
  %61 = load %struct.machfb_softc*, %struct.machfb_softc** %13, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @machfb_setfg(%struct.machfb_softc* %61, i32 %62)
  %64 = load %struct.machfb_softc*, %struct.machfb_softc** %13, align 8
  %65 = call i32 @wait_for_fifo(%struct.machfb_softc* %64, i32 4)
  %66 = load %struct.machfb_softc*, %struct.machfb_softc** %13, align 8
  %67 = load i32, i32* @SRC_Y_X, align 4
  %68 = load i32, i32* %9, align 4
  %69 = shl i32 %68, 16
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @regw(%struct.machfb_softc* %66, i32 %67, i32 %71)
  %73 = load %struct.machfb_softc*, %struct.machfb_softc** %13, align 8
  %74 = load i32, i32* @SRC_WIDTH1, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @regw(%struct.machfb_softc* %73, i32 %74, i32 %75)
  %77 = load %struct.machfb_softc*, %struct.machfb_softc** %13, align 8
  %78 = load i32, i32* @DST_Y_X, align 4
  %79 = load i32, i32* %9, align 4
  %80 = shl i32 %79, 16
  %81 = load i32, i32* %10, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @regw(%struct.machfb_softc* %77, i32 %78, i32 %82)
  %84 = load %struct.machfb_softc*, %struct.machfb_softc** %13, align 8
  %85 = load i32, i32* @DST_HEIGHT_WIDTH, align 4
  %86 = load i32, i32* %11, align 4
  %87 = shl i32 %86, 16
  %88 = load i32, i32* %12, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @regw(%struct.machfb_softc* %84, i32 %85, i32 %89)
  ret i32 0
}

declare dso_local i32 @wait_for_fifo(%struct.machfb_softc*, i32) #1

declare dso_local i32 @regw(%struct.machfb_softc*, i32, i32) #1

declare dso_local i32 @machfb_setfg(%struct.machfb_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
