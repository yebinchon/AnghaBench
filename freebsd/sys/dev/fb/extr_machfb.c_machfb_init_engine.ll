; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_init_engine.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_init_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machfb_softc = type { i32, i32, i32 }

@CONTEXT_MASK = common dso_local global i32 0, align 4
@DST_OFF_PITCH = common dso_local global i32 0, align 4
@DST_Y_X = common dso_local global i32 0, align 4
@DST_HEIGHT = common dso_local global i32 0, align 4
@DST_BRES_ERR = common dso_local global i32 0, align 4
@DST_BRES_INC = common dso_local global i32 0, align 4
@DST_BRES_DEC = common dso_local global i32 0, align 4
@DST_CNTL = common dso_local global i32 0, align 4
@DST_LAST_PEL = common dso_local global i32 0, align 4
@DST_X_LEFT_TO_RIGHT = common dso_local global i32 0, align 4
@DST_Y_TOP_TO_BOTTOM = common dso_local global i32 0, align 4
@SRC_OFF_PITCH = common dso_local global i32 0, align 4
@SRC_Y_X = common dso_local global i32 0, align 4
@SRC_HEIGHT1_WIDTH1 = common dso_local global i32 0, align 4
@SRC_Y_X_START = common dso_local global i32 0, align 4
@SRC_HEIGHT2_WIDTH2 = common dso_local global i32 0, align 4
@SRC_CNTL = common dso_local global i32 0, align 4
@SRC_LINE_X_LEFT_TO_RIGHT = common dso_local global i32 0, align 4
@HOST_CNTL = common dso_local global i32 0, align 4
@PAT_REG0 = common dso_local global i32 0, align 4
@PAT_REG1 = common dso_local global i32 0, align 4
@PAT_CNTL = common dso_local global i32 0, align 4
@SC_LEFT = common dso_local global i32 0, align 4
@SC_TOP = common dso_local global i32 0, align 4
@SC_BOTTOM = common dso_local global i32 0, align 4
@SC_RIGHT = common dso_local global i32 0, align 4
@DP_BKGD_CLR = common dso_local global i32 0, align 4
@DP_FRGD_CLR = common dso_local global i32 0, align 4
@DP_WRITE_MASK = common dso_local global i32 0, align 4
@DP_MIX = common dso_local global i32 0, align 4
@MIX_SRC = common dso_local global i32 0, align 4
@MIX_DST = common dso_local global i32 0, align 4
@DP_SRC = common dso_local global i32 0, align 4
@FRGD_SRC_FRGD_CLR = common dso_local global i32 0, align 4
@CLR_CMP_CLR = common dso_local global i32 0, align 4
@CLR_CMP_MASK = common dso_local global i32 0, align 4
@CLR_CMP_CNTL = common dso_local global i32 0, align 4
@DP_PIX_WIDTH = common dso_local global i32 0, align 4
@HOST_8BPP = common dso_local global i32 0, align 4
@SRC_8BPP = common dso_local global i32 0, align 4
@DST_8BPP = common dso_local global i32 0, align 4
@DP_CHAIN_MASK = common dso_local global i32 0, align 4
@DP_CHAIN_8BPP = common dso_local global i32 0, align 4
@DAC_CNTL = common dso_local global i32 0, align 4
@DAC_8BIT_EN = common dso_local global i32 0, align 4
@CRTC_INT_CNTL = common dso_local global i32 0, align 4
@GUI_TRAJ_CNTL = common dso_local global i32 0, align 4
@DP_CHAIN_32BPP = common dso_local global i32 0, align 4
@DST_32BPP = common dso_local global i32 0, align 4
@HOST_32BPP = common dso_local global i32 0, align 4
@SRC_32BPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.machfb_softc*)* @machfb_init_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @machfb_init_engine(%struct.machfb_softc* %0) #0 {
  %2 = alloca %struct.machfb_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.machfb_softc* %0, %struct.machfb_softc** %2, align 8
  %4 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %5 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %8 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 24
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = mul nsw i32 %12, 3
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %16 = call i32 @machfb_reset_engine(%struct.machfb_softc* %15)
  %17 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %18 = call i32 @wait_for_fifo(%struct.machfb_softc* %17, i32 14)
  %19 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %20 = load i32, i32* @CONTEXT_MASK, align 4
  %21 = call i32 @regw(%struct.machfb_softc* %19, i32 %20, i32 -1)
  %22 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %23 = load i32, i32* @DST_OFF_PITCH, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sdiv i32 %24, 8
  %26 = shl i32 %25, 22
  %27 = call i32 @regw(%struct.machfb_softc* %22, i32 %23, i32 %26)
  %28 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %29 = load i32, i32* @DST_Y_X, align 4
  %30 = call i32 @regw(%struct.machfb_softc* %28, i32 %29, i32 0)
  %31 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %32 = load i32, i32* @DST_HEIGHT, align 4
  %33 = call i32 @regw(%struct.machfb_softc* %31, i32 %32, i32 0)
  %34 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %35 = load i32, i32* @DST_BRES_ERR, align 4
  %36 = call i32 @regw(%struct.machfb_softc* %34, i32 %35, i32 0)
  %37 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %38 = load i32, i32* @DST_BRES_INC, align 4
  %39 = call i32 @regw(%struct.machfb_softc* %37, i32 %38, i32 0)
  %40 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %41 = load i32, i32* @DST_BRES_DEC, align 4
  %42 = call i32 @regw(%struct.machfb_softc* %40, i32 %41, i32 0)
  %43 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %44 = load i32, i32* @DST_CNTL, align 4
  %45 = load i32, i32* @DST_LAST_PEL, align 4
  %46 = load i32, i32* @DST_X_LEFT_TO_RIGHT, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @DST_Y_TOP_TO_BOTTOM, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @regw(%struct.machfb_softc* %43, i32 %44, i32 %49)
  %51 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %52 = load i32, i32* @SRC_OFF_PITCH, align 4
  %53 = load i32, i32* %3, align 4
  %54 = sdiv i32 %53, 8
  %55 = shl i32 %54, 22
  %56 = call i32 @regw(%struct.machfb_softc* %51, i32 %52, i32 %55)
  %57 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %58 = load i32, i32* @SRC_Y_X, align 4
  %59 = call i32 @regw(%struct.machfb_softc* %57, i32 %58, i32 0)
  %60 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %61 = load i32, i32* @SRC_HEIGHT1_WIDTH1, align 4
  %62 = call i32 @regw(%struct.machfb_softc* %60, i32 %61, i32 1)
  %63 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %64 = load i32, i32* @SRC_Y_X_START, align 4
  %65 = call i32 @regw(%struct.machfb_softc* %63, i32 %64, i32 0)
  %66 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %67 = load i32, i32* @SRC_HEIGHT2_WIDTH2, align 4
  %68 = call i32 @regw(%struct.machfb_softc* %66, i32 %67, i32 1)
  %69 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %70 = load i32, i32* @SRC_CNTL, align 4
  %71 = load i32, i32* @SRC_LINE_X_LEFT_TO_RIGHT, align 4
  %72 = call i32 @regw(%struct.machfb_softc* %69, i32 %70, i32 %71)
  %73 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %74 = call i32 @wait_for_fifo(%struct.machfb_softc* %73, i32 13)
  %75 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %76 = load i32, i32* @HOST_CNTL, align 4
  %77 = call i32 @regw(%struct.machfb_softc* %75, i32 %76, i32 0)
  %78 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %79 = load i32, i32* @PAT_REG0, align 4
  %80 = call i32 @regw(%struct.machfb_softc* %78, i32 %79, i32 0)
  %81 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %82 = load i32, i32* @PAT_REG1, align 4
  %83 = call i32 @regw(%struct.machfb_softc* %81, i32 %82, i32 0)
  %84 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %85 = load i32, i32* @PAT_CNTL, align 4
  %86 = call i32 @regw(%struct.machfb_softc* %84, i32 %85, i32 0)
  %87 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %88 = load i32, i32* @SC_LEFT, align 4
  %89 = call i32 @regw(%struct.machfb_softc* %87, i32 %88, i32 0)
  %90 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %91 = load i32, i32* @SC_TOP, align 4
  %92 = call i32 @regw(%struct.machfb_softc* %90, i32 %91, i32 0)
  %93 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %94 = load i32, i32* @SC_BOTTOM, align 4
  %95 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %96 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, 1
  %99 = call i32 @regw(%struct.machfb_softc* %93, i32 %94, i32 %98)
  %100 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %101 = load i32, i32* @SC_RIGHT, align 4
  %102 = load i32, i32* %3, align 4
  %103 = sub nsw i32 %102, 1
  %104 = call i32 @regw(%struct.machfb_softc* %100, i32 %101, i32 %103)
  %105 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %106 = load i32, i32* @DP_BKGD_CLR, align 4
  %107 = call i32 @regw(%struct.machfb_softc* %105, i32 %106, i32 0)
  %108 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %109 = load i32, i32* @DP_FRGD_CLR, align 4
  %110 = call i32 @regw(%struct.machfb_softc* %108, i32 %109, i32 -1)
  %111 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %112 = load i32, i32* @DP_WRITE_MASK, align 4
  %113 = call i32 @regw(%struct.machfb_softc* %111, i32 %112, i32 -1)
  %114 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %115 = load i32, i32* @DP_MIX, align 4
  %116 = load i32, i32* @MIX_SRC, align 4
  %117 = shl i32 %116, 16
  %118 = load i32, i32* @MIX_DST, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @regw(%struct.machfb_softc* %114, i32 %115, i32 %119)
  %121 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %122 = load i32, i32* @DP_SRC, align 4
  %123 = load i32, i32* @FRGD_SRC_FRGD_CLR, align 4
  %124 = call i32 @regw(%struct.machfb_softc* %121, i32 %122, i32 %123)
  %125 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %126 = call i32 @wait_for_fifo(%struct.machfb_softc* %125, i32 3)
  %127 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %128 = load i32, i32* @CLR_CMP_CLR, align 4
  %129 = call i32 @regw(%struct.machfb_softc* %127, i32 %128, i32 0)
  %130 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %131 = load i32, i32* @CLR_CMP_MASK, align 4
  %132 = call i32 @regw(%struct.machfb_softc* %130, i32 %131, i32 -1)
  %133 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %134 = load i32, i32* @CLR_CMP_CNTL, align 4
  %135 = call i32 @regw(%struct.machfb_softc* %133, i32 %134, i32 0)
  %136 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %137 = call i32 @wait_for_fifo(%struct.machfb_softc* %136, i32 2)
  %138 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %139 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  switch i32 %140, label %162 [
    i32 8, label %141
  ]

141:                                              ; preds = %14
  %142 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %143 = load i32, i32* @DP_PIX_WIDTH, align 4
  %144 = load i32, i32* @HOST_8BPP, align 4
  %145 = load i32, i32* @SRC_8BPP, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @DST_8BPP, align 4
  %148 = or i32 %146, %147
  %149 = call i32 @regw(%struct.machfb_softc* %142, i32 %143, i32 %148)
  %150 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %151 = load i32, i32* @DP_CHAIN_MASK, align 4
  %152 = load i32, i32* @DP_CHAIN_8BPP, align 4
  %153 = call i32 @regw(%struct.machfb_softc* %150, i32 %151, i32 %152)
  %154 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %155 = load i32, i32* @DAC_CNTL, align 4
  %156 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %157 = load i32, i32* @DAC_CNTL, align 4
  %158 = call i32 @regr(%struct.machfb_softc* %156, i32 %157)
  %159 = load i32, i32* @DAC_8BIT_EN, align 4
  %160 = or i32 %158, %159
  %161 = call i32 @regw(%struct.machfb_softc* %154, i32 %155, i32 %160)
  br label %162

162:                                              ; preds = %14, %141
  %163 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %164 = call i32 @wait_for_fifo(%struct.machfb_softc* %163, i32 2)
  %165 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %166 = load i32, i32* @CRTC_INT_CNTL, align 4
  %167 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %168 = load i32, i32* @CRTC_INT_CNTL, align 4
  %169 = call i32 @regr(%struct.machfb_softc* %167, i32 %168)
  %170 = and i32 %169, -33
  %171 = call i32 @regw(%struct.machfb_softc* %165, i32 %166, i32 %170)
  %172 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %173 = load i32, i32* @GUI_TRAJ_CNTL, align 4
  %174 = load i32, i32* @DST_X_LEFT_TO_RIGHT, align 4
  %175 = load i32, i32* @DST_Y_TOP_TO_BOTTOM, align 4
  %176 = or i32 %174, %175
  %177 = call i32 @regw(%struct.machfb_softc* %172, i32 %173, i32 %176)
  %178 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %179 = call i32 @wait_for_idle(%struct.machfb_softc* %178)
  ret void
}

declare dso_local i32 @machfb_reset_engine(%struct.machfb_softc*) #1

declare dso_local i32 @wait_for_fifo(%struct.machfb_softc*, i32) #1

declare dso_local i32 @regw(%struct.machfb_softc*, i32, i32) #1

declare dso_local i32 @regr(%struct.machfb_softc*, i32) #1

declare dso_local i32 @wait_for_idle(%struct.machfb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
