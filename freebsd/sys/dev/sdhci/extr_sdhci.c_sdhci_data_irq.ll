; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_data_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_data_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64, i64, %struct.mmc_data* }
%struct.mmc_data = type { i64, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"Got data interrupt 0x%08x, but there is no active command.\0A\00", align 1
@MMC_RSP_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"Got data interrupt 0x%08x, but there is no active data operation.\0A\00", align 1
@SDHCI_INT_DATA_TIMEOUT = common dso_local global i32 0, align 4
@MMC_ERR_TIMEOUT = common dso_local global i64 0, align 8
@SDHCI_INT_DATA_CRC = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_END_BIT = common dso_local global i32 0, align 4
@MMC_ERR_BADCRC = common dso_local global i64 0, align 8
@SDHCI_INT_DATA_AVAIL = common dso_local global i32 0, align 4
@SDHCI_INT_SPACE_AVAIL = common dso_local global i32 0, align 4
@SDHCI_INT_DMA_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"Got data interrupt 0x%08x, but there is busy-only command.\0A\00", align 1
@MMC_ERR_INVALID = common dso_local global i64 0, align 8
@MMC_SEND_TUNING_BLOCK = common dso_local global i64 0, align 8
@MMC_SEND_TUNING_BLOCK_HS200 = common dso_local global i64 0, align 8
@MMC_TUNE_DONE = common dso_local global i32 0, align 4
@SDHCI_PLATFORM_TRANSFER = common dso_local global i32 0, align 4
@PLATFORM_DATA_STARTED = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@SDHCI_SIGNAL_ENABLE = common dso_local global i32 0, align 4
@SDHCI_DMA_ADDRESS = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_slot*, i32)* @sdhci_data_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_data_irq(%struct.sdhci_slot* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.sdhci_slot* %0, %struct.sdhci_slot** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %9 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %8, i32 0, i32 7
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @slot_printf(%struct.sdhci_slot* %13, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %17 = call i32 @sdhci_dumpregs(%struct.sdhci_slot* %16)
  br label %378

18:                                               ; preds = %2
  %19 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %20 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %19, i32 0, i32 7
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load %struct.mmc_data*, %struct.mmc_data** %22, align 8
  %24 = icmp eq %struct.mmc_data* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %27 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %26, i32 0, i32 7
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MMC_RSP_BUSY, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @slot_printf(%struct.sdhci_slot* %35, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %39 = call i32 @sdhci_dumpregs(%struct.sdhci_slot* %38)
  br label %378

40:                                               ; preds = %25, %18
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @SDHCI_INT_DATA_TIMEOUT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i64, i64* @MMC_ERR_TIMEOUT, align 8
  %47 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %48 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %47, i32 0, i32 7
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i64 %46, i64* %50, align 8
  br label %65

51:                                               ; preds = %40
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @SDHCI_INT_DATA_CRC, align 4
  %54 = load i32, i32* @SDHCI_INT_DATA_END_BIT, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load i64, i64* @MMC_ERR_BADCRC, align 8
  %60 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %61 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %60, i32 0, i32 7
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i64 %59, i64* %63, align 8
  br label %64

64:                                               ; preds = %58, %51
  br label %65

65:                                               ; preds = %64, %45
  %66 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %67 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %66, i32 0, i32 7
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = load %struct.mmc_data*, %struct.mmc_data** %69, align 8
  %71 = icmp eq %struct.mmc_data* %70, null
  br i1 %71, label %72, label %92

72:                                               ; preds = %65
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @SDHCI_INT_DATA_AVAIL, align 4
  %75 = load i32, i32* @SDHCI_INT_SPACE_AVAIL, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @SDHCI_INT_DMA_END, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %73, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %72
  %82 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @slot_printf(%struct.sdhci_slot* %82, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %86 = call i32 @sdhci_dumpregs(%struct.sdhci_slot* %85)
  %87 = load i64, i64* @MMC_ERR_INVALID, align 8
  %88 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %89 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %88, i32 0, i32 7
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i64 %87, i64* %91, align 8
  br label %92

92:                                               ; preds = %81, %72, %65
  %93 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %94 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %93, i32 0, i32 7
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %343

100:                                              ; preds = %92
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @SDHCI_INT_DATA_AVAIL, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %100
  %106 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %107 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %106, i32 0, i32 7
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @MMC_SEND_TUNING_BLOCK, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %121, label %113

113:                                              ; preds = %105
  %114 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %115 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %114, i32 0, i32 7
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @MMC_SEND_TUNING_BLOCK_HS200, align 8
  %120 = icmp eq i64 %118, %119
  br label %121

121:                                              ; preds = %113, %105
  %122 = phi i1 [ true, %105 ], [ %120, %113 ]
  br label %123

123:                                              ; preds = %121, %100
  %124 = phi i1 [ false, %100 ], [ %122, %121 ]
  %125 = zext i1 %124 to i32
  %126 = call i64 @__predict_false(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %123
  %129 = load i32, i32* @MMC_TUNE_DONE, align 4
  %130 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %131 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %130, i32 0, i32 11
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %129
  store i32 %135, i32* %133, align 4
  %136 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %137 = call i32 @sdhci_finish_command(%struct.sdhci_slot* %136)
  %138 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %139 = call i32 @sdhci_finish_data(%struct.sdhci_slot* %138)
  br label %378

140:                                              ; preds = %123
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* @SDHCI_INT_DATA_AVAIL, align 4
  %143 = load i32, i32* @SDHCI_INT_SPACE_AVAIL, align 4
  %144 = or i32 %142, %143
  %145 = and i32 %141, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %176

147:                                              ; preds = %140
  %148 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %149 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @SDHCI_PLATFORM_TRANSFER, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %172

154:                                              ; preds = %147
  %155 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %156 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %159 = call i64 @SDHCI_PLATFORM_WILL_HANDLE(i32 %157, %struct.sdhci_slot* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %154
  %162 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %163 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %166 = call i32 @SDHCI_PLATFORM_START_TRANSFER(i32 %164, %struct.sdhci_slot* %165, i32* %4)
  %167 = load i32, i32* @PLATFORM_DATA_STARTED, align 4
  %168 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %169 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %175

172:                                              ; preds = %154, %147
  %173 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %174 = call i32 @sdhci_transfer_pio(%struct.sdhci_slot* %173)
  br label %175

175:                                              ; preds = %172, %161
  br label %176

176:                                              ; preds = %175, %140
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* @SDHCI_INT_DMA_END, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %314

181:                                              ; preds = %176
  %182 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %183 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %182, i32 0, i32 7
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 3
  %186 = load %struct.mmc_data*, %struct.mmc_data** %185, align 8
  store %struct.mmc_data* %186, %struct.mmc_data** %5, align 8
  %187 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %188 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  store i32 %189, i32* %7, align 4
  %190 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %191 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %194 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = sub i64 %192, %195
  store i64 %196, i64* %6, align 8
  %197 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %198 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @MMC_DATA_READ, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %227

203:                                              ; preds = %181
  %204 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %205 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %204, i32 0, i32 9
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %208 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %207, i32 0, i32 8
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %211 = call i32 @bus_dmamap_sync(i32 %206, i32 %209, i32 %210)
  %212 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %213 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = inttoptr i64 %214 to i32*
  %216 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %217 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds i32, i32* %215, i64 %218
  %220 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %221 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %220, i32 0, i32 10
  %222 = load i32*, i32** %221, align 8
  %223 = load i64, i64* %6, align 8
  %224 = load i32, i32* %7, align 4
  %225 = call i32 @ulmin(i64 %223, i32 %224)
  %226 = call i32 @memcpy(i32* %219, i32* %222, i32 %225)
  br label %236

227:                                              ; preds = %181
  %228 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %229 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %228, i32 0, i32 9
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %232 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %231, i32 0, i32 8
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %235 = call i32 @bus_dmamap_sync(i32 %230, i32 %233, i32 %234)
  br label %236

236:                                              ; preds = %227, %203
  %237 = load i32, i32* %7, align 4
  %238 = sext i32 %237 to i64
  %239 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %240 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = add i64 %241, %238
  store i64 %242, i64* %240, align 8
  %243 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %244 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %247 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %246, i32 0, i32 3
  %248 = load i64, i64* %247, align 8
  %249 = sub i64 %245, %248
  store i64 %249, i64* %6, align 8
  %250 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %251 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @MMC_DATA_READ, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %236
  %257 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %258 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %257, i32 0, i32 9
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %261 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %260, i32 0, i32 8
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %264 = call i32 @bus_dmamap_sync(i32 %259, i32 %262, i32 %263)
  br label %289

265:                                              ; preds = %236
  %266 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %267 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %266, i32 0, i32 10
  %268 = load i32*, i32** %267, align 8
  %269 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %270 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = inttoptr i64 %271 to i32*
  %273 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %274 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %273, i32 0, i32 3
  %275 = load i64, i64* %274, align 8
  %276 = getelementptr inbounds i32, i32* %272, i64 %275
  %277 = load i64, i64* %6, align 8
  %278 = load i32, i32* %7, align 4
  %279 = call i32 @ulmin(i64 %277, i32 %278)
  %280 = call i32 @memcpy(i32* %268, i32* %276, i32 %279)
  %281 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %282 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %281, i32 0, i32 9
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %285 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %284, i32 0, i32 8
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %288 = call i32 @bus_dmamap_sync(i32 %283, i32 %286, i32 %287)
  br label %289

289:                                              ; preds = %265, %256
  %290 = load i64, i64* %6, align 8
  %291 = load i32, i32* %7, align 4
  %292 = sext i32 %291 to i64
  %293 = icmp eq i64 %290, %292
  br i1 %293, label %294, label %307

294:                                              ; preds = %289
  %295 = load i32, i32* @SDHCI_INT_DMA_END, align 4
  %296 = xor i32 %295, -1
  %297 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %298 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 8
  %300 = and i32 %299, %296
  store i32 %300, i32* %298, align 8
  %301 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %302 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %303 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %304 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @WR4(%struct.sdhci_slot* %301, i32 %302, i32 %305)
  br label %307

307:                                              ; preds = %294, %289
  %308 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %309 = load i32, i32* @SDHCI_DMA_ADDRESS, align 4
  %310 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %311 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %310, i32 0, i32 5
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @WR4(%struct.sdhci_slot* %308, i32 %309, i32 %312)
  br label %314

314:                                              ; preds = %307, %176
  %315 = load i32, i32* %4, align 4
  %316 = load i32, i32* @SDHCI_INT_DATA_END, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %342

319:                                              ; preds = %314
  %320 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %321 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @PLATFORM_DATA_STARTED, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %338

326:                                              ; preds = %319
  %327 = load i32, i32* @PLATFORM_DATA_STARTED, align 4
  %328 = xor i32 %327, -1
  %329 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %330 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = and i32 %331, %328
  store i32 %332, i32* %330, align 4
  %333 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %334 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %333, i32 0, i32 6
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %337 = call i32 @SDHCI_PLATFORM_FINISH_TRANSFER(i32 %335, %struct.sdhci_slot* %336)
  br label %341

338:                                              ; preds = %319
  %339 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %340 = call i32 @sdhci_finish_data(%struct.sdhci_slot* %339)
  br label %341

341:                                              ; preds = %338, %326
  br label %342

342:                                              ; preds = %341, %314
  br label %343

343:                                              ; preds = %342, %99
  %344 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %345 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %344, i32 0, i32 7
  %346 = load %struct.TYPE_4__*, %struct.TYPE_4__** %345, align 8
  %347 = icmp ne %struct.TYPE_4__* %346, null
  br i1 %347, label %348, label %378

348:                                              ; preds = %343
  %349 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %350 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %349, i32 0, i32 7
  %351 = load %struct.TYPE_4__*, %struct.TYPE_4__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 1
  %353 = load i64, i64* %352, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %378

355:                                              ; preds = %348
  %356 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %357 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* @PLATFORM_DATA_STARTED, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %374

362:                                              ; preds = %355
  %363 = load i32, i32* @PLATFORM_DATA_STARTED, align 4
  %364 = xor i32 %363, -1
  %365 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %366 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = and i32 %367, %364
  store i32 %368, i32* %366, align 4
  %369 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %370 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %369, i32 0, i32 6
  %371 = load i32, i32* %370, align 8
  %372 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %373 = call i32 @SDHCI_PLATFORM_FINISH_TRANSFER(i32 %371, %struct.sdhci_slot* %372)
  br label %377

374:                                              ; preds = %355
  %375 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %376 = call i32 @sdhci_finish_data(%struct.sdhci_slot* %375)
  br label %377

377:                                              ; preds = %374, %362
  br label %378

378:                                              ; preds = %12, %34, %128, %377, %348, %343
  ret void
}

declare dso_local i32 @slot_printf(%struct.sdhci_slot*, i8*, i32) #1

declare dso_local i32 @sdhci_dumpregs(%struct.sdhci_slot*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @sdhci_finish_command(%struct.sdhci_slot*) #1

declare dso_local i32 @sdhci_finish_data(%struct.sdhci_slot*) #1

declare dso_local i64 @SDHCI_PLATFORM_WILL_HANDLE(i32, %struct.sdhci_slot*) #1

declare dso_local i32 @SDHCI_PLATFORM_START_TRANSFER(i32, %struct.sdhci_slot*, i32*) #1

declare dso_local i32 @sdhci_transfer_pio(%struct.sdhci_slot*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ulmin(i64, i32) #1

declare dso_local i32 @WR4(%struct.sdhci_slot*, i32, i32) #1

declare dso_local i32 @SDHCI_PLATFORM_FINISH_TRANSFER(i32, %struct.sdhci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
