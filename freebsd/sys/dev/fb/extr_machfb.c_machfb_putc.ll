; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_putc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.machfb_softc = type { i64, i32, i32, i32, i32* }

@MACHFB_DRAW_CHAR = common dso_local global i64 0, align 8
@DP_WRITE_MASK = common dso_local global i64 0, align 8
@DP_PIX_WIDTH = common dso_local global i64 0, align 8
@DST_8BPP = common dso_local global i32 0, align 4
@SRC_1BPP = common dso_local global i32 0, align 4
@HOST_1BPP = common dso_local global i32 0, align 4
@DP_SRC = common dso_local global i64 0, align 8
@MONO_SRC_HOST = common dso_local global i32 0, align 4
@BKGD_SRC_BKGD_CLR = common dso_local global i32 0, align 4
@FRGD_SRC_FRGD_CLR = common dso_local global i32 0, align 4
@DP_MIX = common dso_local global i64 0, align 8
@MIX_SRC = common dso_local global i32 0, align 4
@CLR_CMP_CNTL = common dso_local global i64 0, align 8
@SRC_CNTL = common dso_local global i64 0, align 8
@SRC_LINE_X_LEFT_TO_RIGHT = common dso_local global i32 0, align 4
@DST_CNTL = common dso_local global i64 0, align 8
@DST_Y_TOP_TO_BOTTOM = common dso_local global i32 0, align 4
@DST_X_LEFT_TO_RIGHT = common dso_local global i32 0, align 4
@HOST_CNTL = common dso_local global i64 0, align 8
@HOST_BYTE_ALIGN = common dso_local global i32 0, align 4
@SRC_Y_X = common dso_local global i64 0, align 8
@SRC_WIDTH1 = common dso_local global i64 0, align 8
@DST_Y_X = common dso_local global i64 0, align 8
@DST_HEIGHT_WIDTH = common dso_local global i64 0, align 8
@HOST_DATA0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i32)* @machfb_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machfb_putc(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.machfb_softc*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = bitcast %struct.TYPE_5__* %12 to %struct.machfb_softc*
  store %struct.machfb_softc* %13, %struct.machfb_softc** %9, align 8
  %14 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %15 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MACHFB_DRAW_CHAR, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %69

19:                                               ; preds = %4
  %20 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %21 = call i32 @wait_for_fifo(%struct.machfb_softc* %20, i32 8)
  %22 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %23 = load i64, i64* @DP_WRITE_MASK, align 8
  %24 = call i32 @regw(%struct.machfb_softc* %22, i64 %23, i32 255)
  %25 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %26 = load i64, i64* @DP_PIX_WIDTH, align 8
  %27 = load i32, i32* @DST_8BPP, align 4
  %28 = load i32, i32* @SRC_1BPP, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @HOST_1BPP, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @regw(%struct.machfb_softc* %25, i64 %26, i32 %31)
  %33 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %34 = load i64, i64* @DP_SRC, align 8
  %35 = load i32, i32* @MONO_SRC_HOST, align 4
  %36 = load i32, i32* @BKGD_SRC_BKGD_CLR, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @FRGD_SRC_FRGD_CLR, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @regw(%struct.machfb_softc* %33, i64 %34, i32 %39)
  %41 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %42 = load i64, i64* @DP_MIX, align 8
  %43 = load i32, i32* @MIX_SRC, align 4
  %44 = and i32 %43, 65535
  %45 = shl i32 %44, 16
  %46 = load i32, i32* @MIX_SRC, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @regw(%struct.machfb_softc* %41, i64 %42, i32 %47)
  %49 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %50 = load i64, i64* @CLR_CMP_CNTL, align 8
  %51 = call i32 @regw(%struct.machfb_softc* %49, i64 %50, i32 0)
  %52 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %53 = load i64, i64* @SRC_CNTL, align 8
  %54 = load i32, i32* @SRC_LINE_X_LEFT_TO_RIGHT, align 4
  %55 = call i32 @regw(%struct.machfb_softc* %52, i64 %53, i32 %54)
  %56 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %57 = load i64, i64* @DST_CNTL, align 8
  %58 = load i32, i32* @DST_Y_TOP_TO_BOTTOM, align 4
  %59 = load i32, i32* @DST_X_LEFT_TO_RIGHT, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @regw(%struct.machfb_softc* %56, i64 %57, i32 %60)
  %62 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %63 = load i64, i64* @HOST_CNTL, align 8
  %64 = load i32, i32* @HOST_BYTE_ALIGN, align 4
  %65 = call i32 @regw(%struct.machfb_softc* %62, i64 %63, i32 %64)
  %66 = load i64, i64* @MACHFB_DRAW_CHAR, align 8
  %67 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %68 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %19, %4
  %70 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %71 = load i32, i32* %8, align 4
  %72 = ashr i32 %71, 4
  %73 = and i32 %72, 15
  %74 = call i32 @machfb_setbg(%struct.machfb_softc* %70, i32 %73)
  %75 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, 15
  %78 = call i32 @machfb_setfg(%struct.machfb_softc* %75, i32 %77)
  %79 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %85 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = sdiv i32 %83, %86
  %88 = add nsw i32 4, %87
  %89 = call i32 @wait_for_fifo(%struct.machfb_softc* %79, i32 %88)
  %90 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %91 = load i64, i64* @SRC_Y_X, align 8
  %92 = call i32 @regw(%struct.machfb_softc* %90, i64 %91, i32 0)
  %93 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %94 = load i64, i64* @SRC_WIDTH1, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @regw(%struct.machfb_softc* %93, i64 %94, i32 %98)
  %100 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %101 = load i64, i64* @DST_Y_X, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = srem i32 %102, %106
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %107, %111
  %113 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %114 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %112, %115
  %117 = shl i32 %116, 16
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = sdiv i32 %118, %122
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %123, %127
  %129 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %130 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %128, %131
  %133 = or i32 %117, %132
  %134 = call i32 @regw(%struct.machfb_softc* %100, i64 %101, i32 %133)
  %135 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %136 = load i64, i64* @DST_HEIGHT_WIDTH, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = shl i32 %140, 16
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %141, %145
  %147 = call i32 @regw(%struct.machfb_softc* %135, i64 %136, i32 %146)
  %148 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %149 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 %151, %155
  %157 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %158 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = mul nsw i32 %156, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %150, i64 %161
  store i32* %162, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %163

163:                                              ; preds = %210, %69
  %164 = load i32, i32* %11, align 4
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %170 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = mul nsw i32 %168, %171
  %173 = icmp slt i32 %164, %172
  br i1 %173, label %174, label %213

174:                                              ; preds = %163
  %175 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %176 = load i64, i64* @HOST_DATA0, align 8
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %176, %178
  %180 = load i32*, i32** %10, align 8
  %181 = load i32, i32* %11, align 4
  %182 = add nsw i32 %181, 3
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = shl i32 %185, 24
  %187 = load i32*, i32** %10, align 8
  %188 = load i32, i32* %11, align 4
  %189 = add nsw i32 %188, 2
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = shl i32 %192, 16
  %194 = or i32 %186, %193
  %195 = load i32*, i32** %10, align 8
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %195, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = shl i32 %200, 8
  %202 = or i32 %194, %201
  %203 = load i32*, i32** %10, align 8
  %204 = load i32, i32* %11, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %202, %207
  %209 = call i32 @regw(%struct.machfb_softc* %175, i64 %179, i32 %208)
  br label %210

210:                                              ; preds = %174
  %211 = load i32, i32* %11, align 4
  %212 = add nsw i32 %211, 4
  store i32 %212, i32* %11, align 4
  br label %163

213:                                              ; preds = %163
  ret i32 0
}

declare dso_local i32 @wait_for_fifo(%struct.machfb_softc*, i32) #1

declare dso_local i32 @regw(%struct.machfb_softc*, i64, i32) #1

declare dso_local i32 @machfb_setbg(%struct.machfb_softc*, i32) #1

declare dso_local i32 @machfb_setfg(%struct.machfb_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
