; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_igb_configure_queues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_igb_configure_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, i32, i32, %struct.em_rx_queue*, %struct.em_tx_queue*, %struct.e1000_hw }
%struct.em_rx_queue = type { i32, i32 }
%struct.em_tx_queue = type { i32, i32 }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@E1000_GPIE = common dso_local global i32 0, align 4
@E1000_GPIE_MSIX_MODE = common dso_local global i32 0, align 4
@E1000_GPIE_EIAME = common dso_local global i32 0, align 4
@E1000_GPIE_PBA = common dso_local global i32 0, align 4
@E1000_GPIE_NSICR = common dso_local global i32 0, align 4
@E1000_IVAR0 = common dso_local global i32 0, align 4
@E1000_IVAR_VALID = common dso_local global i32 0, align 4
@E1000_IVAR_MISC = common dso_local global i32 0, align 4
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_PBA_CLR = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_EIAME = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_IRCA = common dso_local global i32 0, align 4
@E1000_EICR_RX_QUEUE0 = common dso_local global i32 0, align 4
@E1000_EICR_TX_QUEUE0 = common dso_local global i32 0, align 4
@E1000_EIMS_OTHER = common dso_local global i32 0, align 4
@em_max_interrupt_rate = common dso_local global i32 0, align 4
@E1000_EITR_CNT_IGNR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @igb_configure_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_configure_queues(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.em_rx_queue*, align 8
  %5 = alloca %struct.em_tx_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %19 = load %struct.adapter*, %struct.adapter** %2, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 7
  store %struct.e1000_hw* %20, %struct.e1000_hw** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %21 = load %struct.adapter*, %struct.adapter** %2, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 136
  br i1 %26, label %27, label %38

27:                                               ; preds = %1
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %29 = load i32, i32* @E1000_GPIE, align 4
  %30 = load i32, i32* @E1000_GPIE_MSIX_MODE, align 4
  %31 = load i32, i32* @E1000_GPIE_EIAME, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @E1000_GPIE_PBA, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @E1000_GPIE_NSICR, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %28, i32 %29, i32 %36)
  br label %38

38:                                               ; preds = %27, %1
  %39 = load %struct.adapter*, %struct.adapter** %2, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %382 [
    i32 134, label %44
    i32 131, label %44
    i32 130, label %44
    i32 133, label %44
    i32 132, label %44
    i32 129, label %44
    i32 128, label %44
    i32 135, label %175
    i32 136, label %311
  ]

44:                                               ; preds = %38, %38, %38, %38, %38, %38, %38
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %94, %44
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.adapter*, %struct.adapter** %2, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %97

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  %53 = ashr i32 %52, 1
  store i32 %53, i32* %10, align 4
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %55 = load i32, i32* @E1000_IVAR0, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @E1000_READ_REG_ARRAY(%struct.e1000_hw* %54, i32 %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load %struct.adapter*, %struct.adapter** %2, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 5
  %60 = load %struct.em_rx_queue*, %struct.em_rx_queue** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %60, i64 %62
  store %struct.em_rx_queue* %63, %struct.em_rx_queue** %4, align 8
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %64, 1
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %51
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, -16711681
  store i32 %69, i32* %7, align 4
  %70 = load %struct.em_rx_queue*, %struct.em_rx_queue** %4, align 8
  %71 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @E1000_IVAR_VALID, align 4
  %74 = or i32 %72, %73
  %75 = shl i32 %74, 16
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  br label %88

78:                                               ; preds = %51
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, -256
  store i32 %80, i32* %7, align 4
  %81 = load %struct.em_rx_queue*, %struct.em_rx_queue** %4, align 8
  %82 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @E1000_IVAR_VALID, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %78, %67
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %90 = load i32, i32* @E1000_IVAR0, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %89, i32 %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %88
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %45

97:                                               ; preds = %45
  store i32 0, i32* %11, align 4
  br label %98

98:                                               ; preds = %155, %97
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.adapter*, %struct.adapter** %2, align 8
  %101 = getelementptr inbounds %struct.adapter, %struct.adapter* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %158

104:                                              ; preds = %98
  %105 = load i32, i32* %11, align 4
  %106 = ashr i32 %105, 1
  store i32 %106, i32* %12, align 4
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %108 = load i32, i32* @E1000_IVAR0, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @E1000_READ_REG_ARRAY(%struct.e1000_hw* %107, i32 %108, i32 %109)
  store i32 %110, i32* %7, align 4
  %111 = load %struct.adapter*, %struct.adapter** %2, align 8
  %112 = getelementptr inbounds %struct.adapter, %struct.adapter* %111, i32 0, i32 6
  %113 = load %struct.em_tx_queue*, %struct.em_tx_queue** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %113, i64 %115
  store %struct.em_tx_queue* %116, %struct.em_tx_queue** %5, align 8
  %117 = load i32, i32* %11, align 4
  %118 = and i32 %117, 1
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %104
  %121 = load i32, i32* %7, align 4
  %122 = and i32 %121, 16777215
  store i32 %122, i32* %7, align 4
  %123 = load %struct.em_tx_queue*, %struct.em_tx_queue** %5, align 8
  %124 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @E1000_IVAR_VALID, align 4
  %127 = or i32 %125, %126
  %128 = shl i32 %127, 24
  %129 = load i32, i32* %7, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %7, align 4
  br label %142

131:                                              ; preds = %104
  %132 = load i32, i32* %7, align 4
  %133 = and i32 %132, -65281
  store i32 %133, i32* %7, align 4
  %134 = load %struct.em_tx_queue*, %struct.em_tx_queue** %5, align 8
  %135 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @E1000_IVAR_VALID, align 4
  %138 = or i32 %136, %137
  %139 = shl i32 %138, 8
  %140 = load i32, i32* %7, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %131, %120
  %143 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %144 = load i32, i32* @E1000_IVAR0, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %143, i32 %144, i32 %145, i32 %146)
  %148 = load %struct.em_tx_queue*, %struct.em_tx_queue** %5, align 8
  %149 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.adapter*, %struct.adapter** %2, align 8
  %152 = getelementptr inbounds %struct.adapter, %struct.adapter* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %142
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %11, align 4
  br label %98

158:                                              ; preds = %98
  %159 = load %struct.adapter*, %struct.adapter** %2, align 8
  %160 = getelementptr inbounds %struct.adapter, %struct.adapter* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @E1000_IVAR_VALID, align 4
  %163 = or i32 %161, %162
  %164 = shl i32 %163, 8
  store i32 %164, i32* %7, align 4
  %165 = load %struct.adapter*, %struct.adapter** %2, align 8
  %166 = getelementptr inbounds %struct.adapter, %struct.adapter* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = shl i32 1, %167
  %169 = load %struct.adapter*, %struct.adapter** %2, align 8
  %170 = getelementptr inbounds %struct.adapter, %struct.adapter* %169, i32 0, i32 4
  store i32 %168, i32* %170, align 8
  %171 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %172 = load i32, i32* @E1000_IVAR_MISC, align 4
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %171, i32 %172, i32 %173)
  br label %383

175:                                              ; preds = %38
  store i32 0, i32* %13, align 4
  br label %176

176:                                              ; preds = %231, %175
  %177 = load i32, i32* %13, align 4
  %178 = load %struct.adapter*, %struct.adapter** %2, align 8
  %179 = getelementptr inbounds %struct.adapter, %struct.adapter* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %177, %180
  br i1 %181, label %182, label %234

182:                                              ; preds = %176
  %183 = load i32, i32* %13, align 4
  %184 = and i32 %183, 7
  store i32 %184, i32* %14, align 4
  %185 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %186 = load i32, i32* @E1000_IVAR0, align 4
  %187 = load i32, i32* %14, align 4
  %188 = call i32 @E1000_READ_REG_ARRAY(%struct.e1000_hw* %185, i32 %186, i32 %187)
  store i32 %188, i32* %7, align 4
  %189 = load %struct.adapter*, %struct.adapter** %2, align 8
  %190 = getelementptr inbounds %struct.adapter, %struct.adapter* %189, i32 0, i32 5
  %191 = load %struct.em_rx_queue*, %struct.em_rx_queue** %190, align 8
  %192 = load i32, i32* %13, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %191, i64 %193
  store %struct.em_rx_queue* %194, %struct.em_rx_queue** %4, align 8
  %195 = load i32, i32* %13, align 4
  %196 = icmp slt i32 %195, 8
  br i1 %196, label %197, label %207

197:                                              ; preds = %182
  %198 = load i32, i32* %7, align 4
  %199 = and i32 %198, -256
  store i32 %199, i32* %7, align 4
  %200 = load %struct.em_rx_queue*, %struct.em_rx_queue** %4, align 8
  %201 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @E1000_IVAR_VALID, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* %7, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %7, align 4
  br label %218

207:                                              ; preds = %182
  %208 = load i32, i32* %7, align 4
  %209 = and i32 %208, -16711681
  store i32 %209, i32* %7, align 4
  %210 = load %struct.em_rx_queue*, %struct.em_rx_queue** %4, align 8
  %211 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @E1000_IVAR_VALID, align 4
  %214 = or i32 %212, %213
  %215 = shl i32 %214, 16
  %216 = load i32, i32* %7, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %7, align 4
  br label %218

218:                                              ; preds = %207, %197
  %219 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %220 = load i32, i32* @E1000_IVAR0, align 4
  %221 = load i32, i32* %14, align 4
  %222 = load i32, i32* %7, align 4
  %223 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %219, i32 %220, i32 %221, i32 %222)
  %224 = load %struct.em_rx_queue*, %struct.em_rx_queue** %4, align 8
  %225 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.adapter*, %struct.adapter** %2, align 8
  %228 = getelementptr inbounds %struct.adapter, %struct.adapter* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 8
  br label %231

231:                                              ; preds = %218
  %232 = load i32, i32* %13, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %13, align 4
  br label %176

234:                                              ; preds = %176
  store i32 0, i32* %15, align 4
  br label %235

235:                                              ; preds = %291, %234
  %236 = load i32, i32* %15, align 4
  %237 = load %struct.adapter*, %struct.adapter** %2, align 8
  %238 = getelementptr inbounds %struct.adapter, %struct.adapter* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = icmp slt i32 %236, %239
  br i1 %240, label %241, label %294

241:                                              ; preds = %235
  %242 = load i32, i32* %15, align 4
  %243 = and i32 %242, 7
  store i32 %243, i32* %16, align 4
  %244 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %245 = load i32, i32* @E1000_IVAR0, align 4
  %246 = load i32, i32* %16, align 4
  %247 = call i32 @E1000_READ_REG_ARRAY(%struct.e1000_hw* %244, i32 %245, i32 %246)
  store i32 %247, i32* %7, align 4
  %248 = load %struct.adapter*, %struct.adapter** %2, align 8
  %249 = getelementptr inbounds %struct.adapter, %struct.adapter* %248, i32 0, i32 6
  %250 = load %struct.em_tx_queue*, %struct.em_tx_queue** %249, align 8
  %251 = load i32, i32* %15, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %250, i64 %252
  store %struct.em_tx_queue* %253, %struct.em_tx_queue** %5, align 8
  %254 = load i32, i32* %15, align 4
  %255 = icmp slt i32 %254, 8
  br i1 %255, label %256, label %267

256:                                              ; preds = %241
  %257 = load i32, i32* %7, align 4
  %258 = and i32 %257, -65281
  store i32 %258, i32* %7, align 4
  %259 = load %struct.em_tx_queue*, %struct.em_tx_queue** %5, align 8
  %260 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @E1000_IVAR_VALID, align 4
  %263 = or i32 %261, %262
  %264 = shl i32 %263, 8
  %265 = load i32, i32* %7, align 4
  %266 = or i32 %265, %264
  store i32 %266, i32* %7, align 4
  br label %278

267:                                              ; preds = %241
  %268 = load i32, i32* %7, align 4
  %269 = and i32 %268, 16777215
  store i32 %269, i32* %7, align 4
  %270 = load %struct.em_tx_queue*, %struct.em_tx_queue** %5, align 8
  %271 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @E1000_IVAR_VALID, align 4
  %274 = or i32 %272, %273
  %275 = shl i32 %274, 24
  %276 = load i32, i32* %7, align 4
  %277 = or i32 %276, %275
  store i32 %277, i32* %7, align 4
  br label %278

278:                                              ; preds = %267, %256
  %279 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %280 = load i32, i32* @E1000_IVAR0, align 4
  %281 = load i32, i32* %16, align 4
  %282 = load i32, i32* %7, align 4
  %283 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %279, i32 %280, i32 %281, i32 %282)
  %284 = load %struct.em_tx_queue*, %struct.em_tx_queue** %5, align 8
  %285 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.adapter*, %struct.adapter** %2, align 8
  %288 = getelementptr inbounds %struct.adapter, %struct.adapter* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = or i32 %289, %286
  store i32 %290, i32* %288, align 8
  br label %291

291:                                              ; preds = %278
  %292 = load i32, i32* %15, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %15, align 4
  br label %235

294:                                              ; preds = %235
  %295 = load %struct.adapter*, %struct.adapter** %2, align 8
  %296 = getelementptr inbounds %struct.adapter, %struct.adapter* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @E1000_IVAR_VALID, align 4
  %299 = or i32 %297, %298
  %300 = shl i32 %299, 8
  store i32 %300, i32* %7, align 4
  %301 = load %struct.adapter*, %struct.adapter** %2, align 8
  %302 = getelementptr inbounds %struct.adapter, %struct.adapter* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = shl i32 1, %303
  %305 = load %struct.adapter*, %struct.adapter** %2, align 8
  %306 = getelementptr inbounds %struct.adapter, %struct.adapter* %305, i32 0, i32 4
  store i32 %304, i32* %306, align 8
  %307 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %308 = load i32, i32* @E1000_IVAR_MISC, align 4
  %309 = load i32, i32* %7, align 4
  %310 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %307, i32 %308, i32 %309)
  br label %383

311:                                              ; preds = %38
  %312 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %313 = load i32, i32* @E1000_CTRL_EXT, align 4
  %314 = call i32 @E1000_READ_REG(%struct.e1000_hw* %312, i32 %313)
  store i32 %314, i32* %6, align 4
  %315 = load i32, i32* @E1000_CTRL_EXT_PBA_CLR, align 4
  %316 = load i32, i32* %6, align 4
  %317 = or i32 %316, %315
  store i32 %317, i32* %6, align 4
  %318 = load i32, i32* @E1000_CTRL_EXT_EIAME, align 4
  %319 = load i32, i32* %6, align 4
  %320 = or i32 %319, %318
  store i32 %320, i32* %6, align 4
  %321 = load i32, i32* @E1000_CTRL_EXT_IRCA, align 4
  %322 = load i32, i32* %6, align 4
  %323 = or i32 %322, %321
  store i32 %323, i32* %6, align 4
  %324 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %325 = load i32, i32* @E1000_CTRL_EXT, align 4
  %326 = load i32, i32* %6, align 4
  %327 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %324, i32 %325, i32 %326)
  store i32 0, i32* %17, align 4
  br label %328

328:                                              ; preds = %366, %311
  %329 = load i32, i32* %17, align 4
  %330 = load %struct.adapter*, %struct.adapter** %2, align 8
  %331 = getelementptr inbounds %struct.adapter, %struct.adapter* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = icmp slt i32 %329, %332
  br i1 %333, label %334, label %369

334:                                              ; preds = %328
  %335 = load %struct.adapter*, %struct.adapter** %2, align 8
  %336 = getelementptr inbounds %struct.adapter, %struct.adapter* %335, i32 0, i32 5
  %337 = load %struct.em_rx_queue*, %struct.em_rx_queue** %336, align 8
  %338 = load i32, i32* %17, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %337, i64 %339
  store %struct.em_rx_queue* %340, %struct.em_rx_queue** %4, align 8
  %341 = load i32, i32* @E1000_EICR_RX_QUEUE0, align 4
  %342 = load i32, i32* %17, align 4
  %343 = shl i32 %341, %342
  store i32 %343, i32* %6, align 4
  %344 = load i32, i32* @E1000_EICR_TX_QUEUE0, align 4
  %345 = load i32, i32* %17, align 4
  %346 = shl i32 %344, %345
  %347 = load i32, i32* %6, align 4
  %348 = or i32 %347, %346
  store i32 %348, i32* %6, align 4
  %349 = load i32, i32* %6, align 4
  %350 = load %struct.em_rx_queue*, %struct.em_rx_queue** %4, align 8
  %351 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %350, i32 0, i32 1
  store i32 %349, i32* %351, align 4
  %352 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %353 = call i32 @E1000_MSIXBM(i32 0)
  %354 = load i32, i32* %17, align 4
  %355 = load %struct.em_rx_queue*, %struct.em_rx_queue** %4, align 8
  %356 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %352, i32 %353, i32 %354, i32 %357)
  %359 = load %struct.em_rx_queue*, %struct.em_rx_queue** %4, align 8
  %360 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = load %struct.adapter*, %struct.adapter** %2, align 8
  %363 = getelementptr inbounds %struct.adapter, %struct.adapter* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = or i32 %364, %361
  store i32 %365, i32* %363, align 8
  br label %366

366:                                              ; preds = %334
  %367 = load i32, i32* %17, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %17, align 4
  br label %328

369:                                              ; preds = %328
  %370 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %371 = load %struct.adapter*, %struct.adapter** %2, align 8
  %372 = getelementptr inbounds %struct.adapter, %struct.adapter* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @E1000_MSIXBM(i32 %373)
  %375 = load i32, i32* @E1000_EIMS_OTHER, align 4
  %376 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %370, i32 %374, i32 %375)
  %377 = load i32, i32* @E1000_EIMS_OTHER, align 4
  %378 = load %struct.adapter*, %struct.adapter** %2, align 8
  %379 = getelementptr inbounds %struct.adapter, %struct.adapter* %378, i32 0, i32 4
  %380 = load i32, i32* %379, align 8
  %381 = or i32 %380, %377
  store i32 %381, i32* %379, align 8
  br label %382

382:                                              ; preds = %38, %369
  br label %383

383:                                              ; preds = %382, %294, %158
  %384 = load i32, i32* @em_max_interrupt_rate, align 4
  %385 = icmp sgt i32 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %383
  %387 = load i32, i32* @em_max_interrupt_rate, align 4
  %388 = sdiv i32 4000000, %387
  %389 = and i32 %388, 32764
  store i32 %389, i32* %8, align 4
  br label %390

390:                                              ; preds = %386, %383
  %391 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %392 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = icmp eq i32 %394, 136
  br i1 %395, label %396, label %401

396:                                              ; preds = %390
  %397 = load i32, i32* %8, align 4
  %398 = shl i32 %397, 16
  %399 = load i32, i32* %8, align 4
  %400 = or i32 %399, %398
  store i32 %400, i32* %8, align 4
  br label %405

401:                                              ; preds = %390
  %402 = load i32, i32* @E1000_EITR_CNT_IGNR, align 4
  %403 = load i32, i32* %8, align 4
  %404 = or i32 %403, %402
  store i32 %404, i32* %8, align 4
  br label %405

405:                                              ; preds = %401, %396
  store i32 0, i32* %18, align 4
  br label %406

406:                                              ; preds = %426, %405
  %407 = load i32, i32* %18, align 4
  %408 = load %struct.adapter*, %struct.adapter** %2, align 8
  %409 = getelementptr inbounds %struct.adapter, %struct.adapter* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = icmp slt i32 %407, %410
  br i1 %411, label %412, label %429

412:                                              ; preds = %406
  %413 = load %struct.adapter*, %struct.adapter** %2, align 8
  %414 = getelementptr inbounds %struct.adapter, %struct.adapter* %413, i32 0, i32 5
  %415 = load %struct.em_rx_queue*, %struct.em_rx_queue** %414, align 8
  %416 = load i32, i32* %18, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %415, i64 %417
  store %struct.em_rx_queue* %418, %struct.em_rx_queue** %4, align 8
  %419 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %420 = load %struct.em_rx_queue*, %struct.em_rx_queue** %4, align 8
  %421 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 4
  %423 = call i32 @E1000_EITR(i32 %422)
  %424 = load i32, i32* %8, align 4
  %425 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %419, i32 %423, i32 %424)
  br label %426

426:                                              ; preds = %412
  %427 = load i32, i32* %18, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %18, align 4
  br label %406

429:                                              ; preds = %406
  ret void
}

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_READ_REG_ARRAY(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw*, i32, i32, i32) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_MSIXBM(i32) #1

declare dso_local i32 @E1000_EITR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
