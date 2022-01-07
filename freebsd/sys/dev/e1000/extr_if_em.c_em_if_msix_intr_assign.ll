; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_msix_intr_assign.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_msix_intr_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.adapter*, i32, %struct.TYPE_4__, %struct.em_tx_queue*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.em_tx_queue = type { i32, i32, i32 }
%struct.em_rx_queue = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.em_rx_queue*, i32, %struct.TYPE_4__, %struct.em_tx_queue*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"rxq%d\00", align 1
@IFLIB_INTR_RXTX = common dso_local global i32 0, align 4
@em_msix_que = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to allocate que int %d err: %d\00", align 1
@e1000_82574 = common dso_local global i64 0, align 8
@e1000_82575 = common dso_local global i64 0, align 8
@E1000_EICR_TX_QUEUE0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"txq%d\00", align 1
@IFLIB_INTR_TX = common dso_local global i32 0, align 4
@IFLIB_INTR_ADMIN = common dso_local global i32 0, align 4
@em_msix_link = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"aq\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to register admin handler\00", align 1
@igb_mac_min = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @em_if_msix_intr_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_if_msix_intr_assign(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.em_rx_queue*, align 8
  %8 = alloca %struct.em_tx_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [16 x i8], align 16
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.em_rx_queue* @iflib_get_softc(i32 %16)
  %18 = bitcast %struct.em_rx_queue* %17 to %struct.adapter*
  store %struct.adapter* %18, %struct.adapter** %6, align 8
  %19 = load %struct.adapter*, %struct.adapter** %6, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 8
  %21 = load %struct.adapter*, %struct.adapter** %20, align 8
  %22 = bitcast %struct.adapter* %21 to %struct.em_rx_queue*
  store %struct.em_rx_queue* %22, %struct.em_rx_queue** %7, align 8
  %23 = load %struct.adapter*, %struct.adapter** %6, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 11
  %25 = load %struct.em_tx_queue*, %struct.em_tx_queue** %24, align 8
  store %struct.em_tx_queue* %25, %struct.em_tx_queue** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %118, %2
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.adapter*, %struct.adapter** %6, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %125

32:                                               ; preds = %26
  %33 = load i32, i32* %12, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @snprintf(i8* %35, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.em_rx_queue*, %struct.em_rx_queue** %7, align 8
  %40 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %39, i32 0, i32 7
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @IFLIB_INTR_RXTX, align 4
  %43 = load i32, i32* @em_msix_que, align 4
  %44 = load %struct.em_rx_queue*, %struct.em_rx_queue** %7, align 8
  %45 = load %struct.em_rx_queue*, %struct.em_rx_queue** %7, align 8
  %46 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %45, i32 0, i32 12
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %49 = call i32 @iflib_irq_alloc_generic(i32 %38, i32* %40, i32 %41, i32 %42, i32 %43, %struct.em_rx_queue* %44, i32 %47, i8* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %32
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @iflib_get_dev(i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 (i32, i8*, ...) @device_printf(i32 %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  %60 = load %struct.adapter*, %struct.adapter** %6, align 8
  %61 = getelementptr inbounds %struct.adapter, %struct.adapter* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %271

62:                                               ; preds = %32
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.em_rx_queue*, %struct.em_rx_queue** %7, align 8
  %65 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.adapter*, %struct.adapter** %6, align 8
  %67 = getelementptr inbounds %struct.adapter, %struct.adapter* %66, i32 0, i32 10
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @e1000_82574, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %97

73:                                               ; preds = %62
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 20, %74
  %76 = shl i32 1, %75
  %77 = load %struct.em_rx_queue*, %struct.em_rx_queue** %7, align 8
  %78 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.em_rx_queue*, %struct.em_rx_queue** %7, align 8
  %80 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.adapter*, %struct.adapter** %6, align 8
  %83 = getelementptr inbounds %struct.adapter, %struct.adapter* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load %struct.em_rx_queue*, %struct.em_rx_queue** %7, align 8
  %87 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 8, %88
  %90 = load i32, i32* %11, align 4
  %91 = mul nsw i32 %90, 4
  %92 = shl i32 %89, %91
  %93 = load %struct.adapter*, %struct.adapter** %6, align 8
  %94 = getelementptr inbounds %struct.adapter, %struct.adapter* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %117

97:                                               ; preds = %62
  %98 = load %struct.adapter*, %struct.adapter** %6, align 8
  %99 = getelementptr inbounds %struct.adapter, %struct.adapter* %98, i32 0, i32 10
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @e1000_82575, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %97
  %106 = load i32, i32* @E1000_EICR_TX_QUEUE0, align 4
  %107 = load i32, i32* %12, align 4
  %108 = shl i32 %106, %107
  %109 = load %struct.em_rx_queue*, %struct.em_rx_queue** %7, align 8
  %110 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  br label %116

111:                                              ; preds = %97
  %112 = load i32, i32* %12, align 4
  %113 = shl i32 1, %112
  %114 = load %struct.em_rx_queue*, %struct.em_rx_queue** %7, align 8
  %115 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %111, %105
  br label %117

117:                                              ; preds = %116, %73
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %11, align 4
  %121 = load %struct.em_rx_queue*, %struct.em_rx_queue** %7, align 8
  %122 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %121, i32 1
  store %struct.em_rx_queue* %122, %struct.em_rx_queue** %7, align 8
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %12, align 4
  br label %26

125:                                              ; preds = %26
  %126 = load i32, i32* %12, align 4
  store i32 %126, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %127

127:                                              ; preds = %222, %125
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.adapter*, %struct.adapter** %6, align 8
  %130 = getelementptr inbounds %struct.adapter, %struct.adapter* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %229

133:                                              ; preds = %127
  %134 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @snprintf(i8* %134, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %135)
  %137 = load %struct.adapter*, %struct.adapter** %6, align 8
  %138 = getelementptr inbounds %struct.adapter, %struct.adapter* %137, i32 0, i32 11
  %139 = load %struct.em_tx_queue*, %struct.em_tx_queue** %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %139, i64 %141
  store %struct.em_tx_queue* %142, %struct.em_tx_queue** %8, align 8
  %143 = load i32, i32* %4, align 4
  %144 = load %struct.adapter*, %struct.adapter** %6, align 8
  %145 = getelementptr inbounds %struct.adapter, %struct.adapter* %144, i32 0, i32 8
  %146 = load %struct.adapter*, %struct.adapter** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.adapter*, %struct.adapter** %6, align 8
  %149 = getelementptr inbounds %struct.adapter, %struct.adapter* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = srem i32 %147, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.adapter, %struct.adapter* %146, i64 %152
  %154 = getelementptr inbounds %struct.adapter, %struct.adapter* %153, i32 0, i32 7
  %155 = load i32, i32* @IFLIB_INTR_TX, align 4
  %156 = load %struct.em_tx_queue*, %struct.em_tx_queue** %8, align 8
  %157 = load %struct.em_tx_queue*, %struct.em_tx_queue** %8, align 8
  %158 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %161 = call i32 @iflib_softirq_alloc_generic(i32 %143, i32* %154, i32 %155, %struct.em_tx_queue* %156, i32 %159, i8* %160)
  %162 = load i32, i32* %12, align 4
  %163 = load %struct.adapter*, %struct.adapter** %6, align 8
  %164 = getelementptr inbounds %struct.adapter, %struct.adapter* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = srem i32 %162, %165
  %167 = load %struct.em_tx_queue*, %struct.em_tx_queue** %8, align 8
  %168 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 4
  %169 = load %struct.adapter*, %struct.adapter** %6, align 8
  %170 = getelementptr inbounds %struct.adapter, %struct.adapter* %169, i32 0, i32 10
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @e1000_82574, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %201

176:                                              ; preds = %133
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 22, %177
  %179 = shl i32 1, %178
  %180 = load %struct.em_tx_queue*, %struct.em_tx_queue** %8, align 8
  %181 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  %182 = load %struct.em_tx_queue*, %struct.em_tx_queue** %8, align 8
  %183 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.adapter*, %struct.adapter** %6, align 8
  %186 = getelementptr inbounds %struct.adapter, %struct.adapter* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 4
  %189 = load %struct.em_tx_queue*, %struct.em_tx_queue** %8, align 8
  %190 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = or i32 8, %191
  %193 = load i32, i32* %11, align 4
  %194 = mul nsw i32 %193, 4
  %195 = add nsw i32 8, %194
  %196 = shl i32 %192, %195
  %197 = load %struct.adapter*, %struct.adapter** %6, align 8
  %198 = getelementptr inbounds %struct.adapter, %struct.adapter* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 8
  br label %221

201:                                              ; preds = %133
  %202 = load %struct.adapter*, %struct.adapter** %6, align 8
  %203 = getelementptr inbounds %struct.adapter, %struct.adapter* %202, i32 0, i32 10
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @e1000_82575, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %201
  %210 = load i32, i32* @E1000_EICR_TX_QUEUE0, align 4
  %211 = load i32, i32* %11, align 4
  %212 = shl i32 %210, %211
  %213 = load %struct.em_tx_queue*, %struct.em_tx_queue** %8, align 8
  %214 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 4
  br label %220

215:                                              ; preds = %201
  %216 = load i32, i32* %11, align 4
  %217 = shl i32 1, %216
  %218 = load %struct.em_tx_queue*, %struct.em_tx_queue** %8, align 8
  %219 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  br label %220

220:                                              ; preds = %215, %209
  br label %221

221:                                              ; preds = %220, %176
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %11, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %11, align 4
  %225 = load %struct.em_tx_queue*, %struct.em_tx_queue** %8, align 8
  %226 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %225, i32 1
  store %struct.em_tx_queue* %226, %struct.em_tx_queue** %8, align 8
  %227 = load i32, i32* %12, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %12, align 4
  br label %127

229:                                              ; preds = %127
  %230 = load i32, i32* %13, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %10, align 4
  %232 = load i32, i32* %4, align 4
  %233 = load %struct.adapter*, %struct.adapter** %6, align 8
  %234 = getelementptr inbounds %struct.adapter, %struct.adapter* %233, i32 0, i32 9
  %235 = load i32, i32* %10, align 4
  %236 = load i32, i32* @IFLIB_INTR_ADMIN, align 4
  %237 = load i32, i32* @em_msix_link, align 4
  %238 = load %struct.adapter*, %struct.adapter** %6, align 8
  %239 = bitcast %struct.adapter* %238 to %struct.em_rx_queue*
  %240 = call i32 @iflib_irq_alloc_generic(i32 %232, i32* %234, i32 %235, i32 %236, i32 %237, %struct.em_rx_queue* %239, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %240, i32* %9, align 4
  %241 = load i32, i32* %9, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %229
  %244 = load i32, i32* %4, align 4
  %245 = call i32 @iflib_get_dev(i32 %244)
  %246 = call i32 (i32, i8*, ...) @device_printf(i32 %245, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %271

247:                                              ; preds = %229
  %248 = load i32, i32* %13, align 4
  %249 = load %struct.adapter*, %struct.adapter** %6, align 8
  %250 = getelementptr inbounds %struct.adapter, %struct.adapter* %249, i32 0, i32 6
  store i32 %248, i32* %250, align 8
  %251 = load %struct.adapter*, %struct.adapter** %6, align 8
  %252 = getelementptr inbounds %struct.adapter, %struct.adapter* %251, i32 0, i32 10
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @igb_mac_min, align 8
  %257 = icmp slt i64 %255, %256
  br i1 %257, label %258, label %270

258:                                              ; preds = %247
  %259 = load i32, i32* %13, align 4
  %260 = or i32 8, %259
  %261 = shl i32 %260, 16
  %262 = load %struct.adapter*, %struct.adapter** %6, align 8
  %263 = getelementptr inbounds %struct.adapter, %struct.adapter* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 8
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 8
  %266 = load %struct.adapter*, %struct.adapter** %6, align 8
  %267 = getelementptr inbounds %struct.adapter, %struct.adapter* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 8
  %269 = or i32 %268, -2147483648
  store i32 %269, i32* %267, align 8
  br label %270

270:                                              ; preds = %258, %247
  store i32 0, i32* %3, align 4
  br label %298

271:                                              ; preds = %243, %52
  %272 = load i32, i32* %4, align 4
  %273 = load %struct.adapter*, %struct.adapter** %6, align 8
  %274 = getelementptr inbounds %struct.adapter, %struct.adapter* %273, i32 0, i32 9
  %275 = call i32 @iflib_irq_free(i32 %272, i32* %274)
  %276 = load %struct.adapter*, %struct.adapter** %6, align 8
  %277 = getelementptr inbounds %struct.adapter, %struct.adapter* %276, i32 0, i32 8
  %278 = load %struct.adapter*, %struct.adapter** %277, align 8
  %279 = bitcast %struct.adapter* %278 to %struct.em_rx_queue*
  store %struct.em_rx_queue* %279, %struct.em_rx_queue** %7, align 8
  store i32 0, i32* %15, align 4
  br label %280

280:                                              ; preds = %291, %271
  %281 = load i32, i32* %15, align 4
  %282 = load %struct.adapter*, %struct.adapter** %6, align 8
  %283 = getelementptr inbounds %struct.adapter, %struct.adapter* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = icmp slt i32 %281, %284
  br i1 %285, label %286, label %296

286:                                              ; preds = %280
  %287 = load i32, i32* %4, align 4
  %288 = load %struct.em_rx_queue*, %struct.em_rx_queue** %7, align 8
  %289 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %288, i32 0, i32 7
  %290 = call i32 @iflib_irq_free(i32 %287, i32* %289)
  br label %291

291:                                              ; preds = %286
  %292 = load i32, i32* %15, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %15, align 4
  %294 = load %struct.em_rx_queue*, %struct.em_rx_queue** %7, align 8
  %295 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %294, i32 1
  store %struct.em_rx_queue* %295, %struct.em_rx_queue** %7, align 8
  br label %280

296:                                              ; preds = %280
  %297 = load i32, i32* %9, align 4
  store i32 %297, i32* %3, align 4
  br label %298

298:                                              ; preds = %296, %270
  %299 = load i32, i32* %3, align 4
  ret i32 %299
}

declare dso_local %struct.em_rx_queue* @iflib_get_softc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @iflib_irq_alloc_generic(i32, i32*, i32, i32, i32, %struct.em_rx_queue*, i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @iflib_softirq_alloc_generic(i32, i32*, i32, %struct.em_tx_queue*, i32, i8*) #1

declare dso_local i32 @iflib_irq_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
