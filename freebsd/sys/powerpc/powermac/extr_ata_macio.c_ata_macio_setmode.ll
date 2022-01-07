; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_ata_macio.c_ata_macio_setmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_ata_macio.c_ata_macio_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ata_macio_softc = type { i32, i32*, i32*, i32*, i32 }

@ATA_DMA_MASK = common dso_local global i32 0, align 4
@ATA_UDMA0 = common dso_local global i32 0, align 4
@udma_timings = common dso_local global %struct.TYPE_4__* null, align 8
@ATA_MODE_MASK = common dso_local global i32 0, align 4
@ATA_WDMA0 = common dso_local global i32 0, align 4
@dma_timings = common dso_local global %struct.TYPE_6__* null, align 8
@DMA_REC_OFFSET = common dso_local global i32 0, align 4
@DMA_REC_MIN = common dso_local global i32 0, align 4
@pio_timings = common dso_local global %struct.TYPE_5__* null, align 8
@ATA_PIO0 = common dso_local global i32 0, align 4
@PIO_ACT_MIN = common dso_local global i32 0, align 4
@PIO_REC_OFFSET = common dso_local global i32 0, align 4
@PIO_REC_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ata_macio_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_macio_setmode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_macio_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.ata_macio_softc* @device_get_softc(i32 %14)
  store %struct.ata_macio_softc* %15, %struct.ata_macio_softc** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %7, align 8
  %18 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @min(i32 %16, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @ATA_DMA_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @ATA_UDMA0, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %65

26:                                               ; preds = %3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @udma_timings, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ATA_MODE_MASK, align 4
  %30 = and i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @udma_timings, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @ATA_MODE_MASK, align 4
  %38 = and i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  %43 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %7, align 8
  %44 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @ATA_TIME_TO_TICK(i32 %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %7, align 8
  %49 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @ATA_TIME_TO_TICK(i32 %50, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = shl i32 %53, 21
  %55 = load i32, i32* %11, align 4
  %56 = shl i32 %55, 25
  %57 = or i32 %54, %56
  %58 = or i32 %57, 1048576
  %59 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %7, align 8
  %60 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  br label %223

65:                                               ; preds = %3
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @ATA_DMA_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @ATA_WDMA0, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %144

71:                                               ; preds = %65
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dma_timings, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @ATA_MODE_MASK, align 4
  %75 = and i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %8, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dma_timings, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @ATA_MODE_MASK, align 4
  %83 = and i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %9, align 4
  %88 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %7, align 8
  %89 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @ATA_TIME_TO_TICK(i32 %90, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %7, align 8
  %94 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @ATA_TIME_TO_TICK(i32 %95, i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %7, align 8
  %99 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 4
  br i1 %101, label %102, label %117

102:                                              ; preds = %71
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = sub nsw i32 %103, %104
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %11, align 4
  %107 = shl i32 %106, 10
  %108 = load i32, i32* %12, align 4
  %109 = shl i32 %108, 15
  %110 = or i32 %107, %109
  %111 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %7, align 8
  %112 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %110, i32* %116, align 4
  br label %143

117:                                              ; preds = %71
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %11, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load i32, i32* @DMA_REC_OFFSET, align 4
  %122 = sub nsw i32 %120, %121
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @DMA_REC_MIN, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %117
  %127 = load i32, i32* @DMA_REC_MIN, align 4
  store i32 %127, i32* %12, align 4
  br label %128

128:                                              ; preds = %126, %117
  store i32 0, i32* %13, align 4
  %129 = load i32, i32* %13, align 4
  %130 = shl i32 %129, 21
  %131 = load i32, i32* %12, align 4
  %132 = shl i32 %131, 16
  %133 = or i32 %130, %132
  %134 = load i32, i32* %11, align 4
  %135 = shl i32 %134, 11
  %136 = or i32 %133, %135
  %137 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %7, align 8
  %138 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %136, i32* %142, align 4
  br label %143

143:                                              ; preds = %128, %102
  br label %222

144:                                              ; preds = %65
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pio_timings, align 8
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @ATA_MODE_MASK, align 4
  %148 = and i32 %146, %147
  %149 = load i32, i32* @ATA_PIO0, align 4
  %150 = sub nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %8, align 4
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pio_timings, align 8
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @ATA_MODE_MASK, align 4
  %158 = and i32 %156, %157
  %159 = load i32, i32* @ATA_PIO0, align 4
  %160 = sub nsw i32 %158, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %9, align 4
  %165 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %7, align 8
  %166 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @ATA_TIME_TO_TICK(i32 %167, i32 %168)
  store i32 %169, i32* %10, align 4
  %170 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %7, align 8
  %171 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @ATA_TIME_TO_TICK(i32 %172, i32 %173)
  store i32 %174, i32* %11, align 4
  %175 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %7, align 8
  %176 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 4
  br i1 %178, label %179, label %193

179:                                              ; preds = %144
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* %11, align 4
  %182 = sub nsw i32 %180, %181
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* %12, align 4
  %184 = shl i32 %183, 5
  %185 = load i32, i32* %11, align 4
  %186 = or i32 %184, %185
  %187 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %7, align 8
  %188 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %187, i32 0, i32 3
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  store i32 %186, i32* %192, align 4
  br label %221

193:                                              ; preds = %144
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* @PIO_ACT_MIN, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = load i32, i32* @PIO_ACT_MIN, align 4
  store i32 %198, i32* %11, align 4
  br label %199

199:                                              ; preds = %197, %193
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* %11, align 4
  %202 = sub nsw i32 %200, %201
  %203 = load i32, i32* @PIO_REC_OFFSET, align 4
  %204 = sub nsw i32 %202, %203
  store i32 %204, i32* %12, align 4
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* @PIO_REC_MIN, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %199
  %209 = load i32, i32* @PIO_REC_MIN, align 4
  store i32 %209, i32* %12, align 4
  br label %210

210:                                              ; preds = %208, %199
  %211 = load i32, i32* %12, align 4
  %212 = shl i32 %211, 5
  %213 = load i32, i32* %11, align 4
  %214 = or i32 %212, %213
  %215 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %7, align 8
  %216 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %215, i32 0, i32 3
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %5, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  store i32 %214, i32* %220, align 4
  br label %221

221:                                              ; preds = %210, %179
  br label %222

222:                                              ; preds = %221, %143
  br label %223

223:                                              ; preds = %222, %26
  %224 = load i32, i32* %6, align 4
  ret i32 %224
}

declare dso_local %struct.ata_macio_softc* @device_get_softc(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ATA_TIME_TO_TICK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
