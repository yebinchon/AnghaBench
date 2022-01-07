; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_start_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_start_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32 }

@MMC_RSP_BUSY = common dso_local global i32 0, align 4
@SDHCI_QUIRK_BROKEN_TIMEOUT_VAL = common dso_local global i32 0, align 4
@SDHCI_QUIRK_INCR_TIMEOUT_CONTROL = common dso_local global i32 0, align 4
@SDHCI_TIMEOUT_CONTROL = common dso_local global i32 0, align 4
@SDHCI_HAVE_DMA = common dso_local global i32 0, align 4
@SDHCI_USE_DMA = common dso_local global i32 0, align 4
@SDHCI_QUIRK_BROKEN_TIMINGS = common dso_local global i32 0, align 4
@SDHCI_QUIRK_32BIT_DMA_SIZE = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@SDHCI_DMA_ADDRESS = common dso_local global i32 0, align 4
@SDHCI_INT_DMA_END = common dso_local global i32 0, align 4
@SDHCI_SIGNAL_ENABLE = common dso_local global i32 0, align 4
@SDHCI_BLOCK_SIZE = common dso_local global i32 0, align 4
@SDHCI_BLOCK_COUNT = common dso_local global i32 0, align 4
@sdhci_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Blk size: 0x%08x | Blk cnt:  0x%08x\0A\00", align 1
@MMC_DATA_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_slot*, %struct.mmc_data*)* @sdhci_start_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_start_data(%struct.sdhci_slot* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.sdhci_slot*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sdhci_slot* %0, %struct.sdhci_slot** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %11 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %12 = icmp eq %struct.mmc_data* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %15 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %14, i32 0, i32 13
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MMC_RSP_BUSY, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %24 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  br label %240

25:                                               ; preds = %13, %2
  %26 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %27 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %29 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SDHCI_QUIRK_BROKEN_TIMEOUT_VAL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 14, i32* %10, align 4
  br label %68

35:                                               ; preds = %25
  store i32 1000000, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %36 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %37 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = sdiv i32 8192000, %38
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %49, %35
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 14
  br label %47

47:                                               ; preds = %44, %40
  %48 = phi i1 [ false, %40 ], [ %46, %44 ]
  br i1 %48, label %49, label %54

49:                                               ; preds = %47
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %7, align 4
  %53 = shl i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %40

54:                                               ; preds = %47
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 14
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %59 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SDHCI_QUIRK_INCR_TIMEOUT_CONTROL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %64, %57, %54
  br label %68

68:                                               ; preds = %67, %34
  %69 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %70 = load i32, i32* @SDHCI_TIMEOUT_CONTROL, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @WR1(%struct.sdhci_slot* %69, i32 %70, i32 %71)
  %73 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %74 = icmp eq %struct.mmc_data* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %240

76:                                               ; preds = %68
  %77 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %78 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @SDHCI_HAVE_DMA, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = load i32, i32* @SDHCI_USE_DMA, align 4
  %85 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %86 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %83, %76
  %90 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %91 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @SDHCI_QUIRK_BROKEN_TIMINGS, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %89
  %97 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %98 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp sle i32 %99, 512
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load i32, i32* @SDHCI_USE_DMA, align 4
  %103 = xor i32 %102, -1
  %104 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %105 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %101, %96, %89
  %109 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %110 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @SDHCI_QUIRK_32BIT_DMA_SIZE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %108
  %116 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %117 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 3
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = load i32, i32* @SDHCI_USE_DMA, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %125 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %121, %115, %108
  %129 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %130 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @SDHCI_USE_DMA, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %207

135:                                              ; preds = %128
  %136 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %137 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %8, align 4
  %139 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %140 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @MMC_DATA_READ, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %135
  %146 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %147 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %146, i32 0, i32 11
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %150 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %149, i32 0, i32 10
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %153 = call i32 @bus_dmamap_sync(i32 %148, i32 %151, i32 %152)
  br label %175

154:                                              ; preds = %135
  %155 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %156 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %155, i32 0, i32 12
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %159 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %162 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @ulmin(i32 %163, i32 %164)
  %166 = call i32 @memcpy(i32 %157, i32 %160, i32 %165)
  %167 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %168 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %167, i32 0, i32 11
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %171 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %170, i32 0, i32 10
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %174 = call i32 @bus_dmamap_sync(i32 %169, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %154, %145
  %176 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %177 = load i32, i32* @SDHCI_DMA_ADDRESS, align 4
  %178 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %179 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %178, i32 0, i32 9
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @WR4(%struct.sdhci_slot* %176, i32 %177, i32 %180)
  %182 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %183 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %8, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %194

187:                                              ; preds = %175
  %188 = load i32, i32* @SDHCI_INT_DMA_END, align 4
  %189 = xor i32 %188, -1
  %190 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %191 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %190, i32 0, i32 8
  %192 = load i32, i32* %191, align 8
  %193 = and i32 %192, %189
  store i32 %193, i32* %191, align 8
  br label %200

194:                                              ; preds = %175
  %195 = load i32, i32* @SDHCI_INT_DMA_END, align 4
  %196 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %197 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 8
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %194, %187
  %201 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %202 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %203 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %204 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %203, i32 0, i32 8
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @WR4(%struct.sdhci_slot* %201, i32 %202, i32 %205)
  br label %207

207:                                              ; preds = %200, %128
  %208 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %209 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %208, i32 0, i32 7
  store i64 0, i64* %209, align 8
  %210 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %211 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %214 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @ulmin(i32 %215, i32 512)
  %217 = call i32 @SDHCI_MAKE_BLKSZ(i32 %212, i32 %216)
  store i32 %217, i32* %6, align 4
  %218 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %219 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @howmany(i32 %220, i32 512)
  store i32 %221, i32* %5, align 4
  %222 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %223 = load i32, i32* @SDHCI_BLOCK_SIZE, align 4
  %224 = load i32, i32* %6, align 4
  %225 = call i32 @WR2(%struct.sdhci_slot* %222, i32 %223, i32 %224)
  %226 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %227 = load i32, i32* @SDHCI_BLOCK_COUNT, align 4
  %228 = load i32, i32* %5, align 4
  %229 = call i32 @WR2(%struct.sdhci_slot* %226, i32 %227, i32 %228)
  %230 = load i32, i32* @sdhci_debug, align 4
  %231 = icmp sgt i32 %230, 1
  %232 = zext i1 %231 to i32
  %233 = call i64 @__predict_false(i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %207
  %236 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* %5, align 4
  %239 = call i32 @slot_printf(%struct.sdhci_slot* %236, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %237, i32 %238)
  br label %240

240:                                              ; preds = %22, %75, %235, %207
  ret void
}

declare dso_local i32 @WR1(%struct.sdhci_slot*, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ulmin(i32, i32) #1

declare dso_local i32 @WR4(%struct.sdhci_slot*, i32, i32) #1

declare dso_local i32 @SDHCI_MAKE_BLKSZ(i32, i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @WR2(%struct.sdhci_slot*, i32, i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @slot_printf(%struct.sdhci_slot*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
