; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_igb_init_dmac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_igb_init_dmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_3__*, %struct.e1000_hw, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@E1000_DMACR_DMAC_EN = common dso_local global i32 0, align 4
@e1000_i211 = common dso_local global i64 0, align 8
@e1000_82580 = common dso_local global i64 0, align 8
@E1000_DMACR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"DMA Coalescing enabled\0A\00", align 1
@E1000_DMCTXTH = common dso_local global i32 0, align 4
@E1000_FCRTC = common dso_local global i32 0, align 4
@E1000_FCRTC_RTH_COAL_MASK = common dso_local global i32 0, align 4
@E1000_FCRTC_RTH_COAL_SHIFT = common dso_local global i32 0, align 4
@E1000_DMACR_DMACTHR_MASK = common dso_local global i32 0, align 4
@E1000_DMACR_DMACTHR_SHIFT = common dso_local global i32 0, align 4
@E1000_DMACR_DMAC_LX_MASK = common dso_local global i32 0, align 4
@e1000_i354 = common dso_local global i64 0, align 8
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_2P5_SKU = common dso_local global i32 0, align 4
@E1000_STATUS_2P5_SKU_OVER = common dso_local global i32 0, align 4
@E1000_DMCRTRH = common dso_local global i32 0, align 4
@E1000_DMCTLX = common dso_local global i32 0, align 4
@e1000_i350 = common dso_local global i64 0, align 8
@IGB_DMCTLX_DCFLUSH_DIS = common dso_local global i32 0, align 4
@IGB_TXPBSIZE = common dso_local global i32 0, align 4
@E1000_PCIEMISC = common dso_local global i32 0, align 4
@E1000_PCIEMISC_LX_DECISION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32)* @igb_init_dmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_init_dmac(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 2
  store %struct.e1000_hw* %18, %struct.e1000_hw** %6, align 8
  %19 = load i32, i32* @E1000_DMACR_DMAC_EN, align 4
  %20 = xor i32 %19, -1
  store i32 %20, i32* %8, align 4
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @e1000_i211, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %260

28:                                               ; preds = %2
  %29 = load %struct.adapter*, %struct.adapter** %3, align 8
  %30 = getelementptr inbounds %struct.adapter, %struct.adapter* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %35 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @e1000_82580, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %238

40:                                               ; preds = %28
  %41 = load %struct.adapter*, %struct.adapter** %3, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %47 = load i32, i32* @E1000_DMACR, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %46, i32 %47, i32 %48)
  br label %260

50:                                               ; preds = %40
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %55 = load i32, i32* @E1000_DMCTXTH, align 4
  %56 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %54, i32 %55, i32 0)
  %57 = load i32, i32* %4, align 4
  %58 = mul nsw i32 64, %57
  %59 = load i32, i32* %10, align 4
  %60 = sdiv i32 %59, 16
  %61 = sub nsw i32 %58, %60
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %4, align 4
  %64 = sub nsw i32 %63, 6
  %65 = mul nsw i32 64, %64
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %53
  %68 = load i32, i32* %4, align 4
  %69 = sub nsw i32 %68, 6
  %70 = mul nsw i32 64, %69
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %67, %53
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %73 = load i32, i32* @E1000_FCRTC, align 4
  %74 = call i32 @E1000_READ_REG(%struct.e1000_hw* %72, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* @E1000_FCRTC_RTH_COAL_MASK, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @E1000_FCRTC_RTH_COAL_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = load i32, i32* @E1000_FCRTC_RTH_COAL_MASK, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  %86 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %87 = load i32, i32* @E1000_FCRTC, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %86, i32 %87, i32 %88)
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %10, align 4
  %92 = sdiv i32 %91, 512
  %93 = sub nsw i32 %90, %92
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %4, align 4
  %96 = sub nsw i32 %95, 10
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %71
  %99 = load i32, i32* %4, align 4
  %100 = sub nsw i32 %99, 10
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %98, %71
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %103 = load i32, i32* @E1000_DMACR, align 4
  %104 = call i32 @E1000_READ_REG(%struct.e1000_hw* %102, i32 %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* @E1000_DMACR_DMACTHR_MASK, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %8, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @E1000_DMACR_DMACTHR_SHIFT, align 4
  %111 = shl i32 %109, %110
  %112 = load i32, i32* @E1000_DMACR_DMACTHR_MASK, align 4
  %113 = and i32 %111, %112
  %114 = load i32, i32* %8, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* @E1000_DMACR_DMAC_EN, align 4
  %117 = load i32, i32* @E1000_DMACR_DMAC_LX_MASK, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* %8, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %8, align 4
  %121 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %122 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @e1000_i354, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %156

127:                                              ; preds = %101
  %128 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %129 = load i32, i32* @E1000_STATUS, align 4
  %130 = call i32 @E1000_READ_REG(%struct.e1000_hw* %128, i32 %129)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @E1000_STATUS_2P5_SKU, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %127
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @E1000_STATUS_2P5_SKU_OVER, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %135
  %141 = load %struct.adapter*, %struct.adapter** %3, align 8
  %142 = getelementptr inbounds %struct.adapter, %struct.adapter* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = mul nsw i32 %143, 5
  %145 = ashr i32 %144, 6
  %146 = load i32, i32* %8, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %8, align 4
  br label %155

148:                                              ; preds = %135, %127
  %149 = load %struct.adapter*, %struct.adapter** %3, align 8
  %150 = getelementptr inbounds %struct.adapter, %struct.adapter* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = ashr i32 %151, 5
  %153 = load i32, i32* %8, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %148, %140
  br label %163

156:                                              ; preds = %101
  %157 = load %struct.adapter*, %struct.adapter** %3, align 8
  %158 = getelementptr inbounds %struct.adapter, %struct.adapter* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = ashr i32 %159, 5
  %161 = load i32, i32* %8, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %8, align 4
  br label %163

163:                                              ; preds = %156, %155
  %164 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %165 = load i32, i32* @E1000_DMACR, align 4
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %164, i32 %165, i32 %166)
  %168 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %169 = load i32, i32* @E1000_DMCRTRH, align 4
  %170 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %168, i32 %169, i32 0)
  %171 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %172 = load i32, i32* @E1000_DMCTLX, align 4
  %173 = call i32 @E1000_READ_REG(%struct.e1000_hw* %171, i32 %172)
  store i32 %173, i32* %8, align 4
  %174 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %175 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @e1000_i350, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %163
  %181 = load i32, i32* @IGB_DMCTLX_DCFLUSH_DIS, align 4
  %182 = load i32, i32* %8, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %8, align 4
  br label %184

184:                                              ; preds = %180, %163
  %185 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %186 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @e1000_i354, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %211

191:                                              ; preds = %184
  %192 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %193 = load i32, i32* @E1000_STATUS, align 4
  %194 = call i32 @E1000_READ_REG(%struct.e1000_hw* %192, i32 %193)
  store i32 %194, i32* %12, align 4
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* @E1000_STATUS_2P5_SKU, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %191
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* @E1000_STATUS_2P5_SKU_OVER, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %199
  %205 = load i32, i32* %8, align 4
  %206 = or i32 %205, 10
  store i32 %206, i32* %8, align 4
  br label %210

207:                                              ; preds = %199, %191
  %208 = load i32, i32* %8, align 4
  %209 = or i32 %208, 4
  store i32 %209, i32* %8, align 4
  br label %210

210:                                              ; preds = %207, %204
  br label %214

211:                                              ; preds = %184
  %212 = load i32, i32* %8, align 4
  %213 = or i32 %212, 4
  store i32 %213, i32* %8, align 4
  br label %214

214:                                              ; preds = %211, %210
  %215 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %216 = load i32, i32* @E1000_DMCTLX, align 4
  %217 = load i32, i32* %8, align 4
  %218 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %215, i32 %216, i32 %217)
  %219 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %220 = load i32, i32* @E1000_DMCTXTH, align 4
  %221 = load i32, i32* @IGB_TXPBSIZE, align 4
  %222 = load i32, i32* %10, align 4
  %223 = mul nsw i32 2, %222
  %224 = sub nsw i32 %221, %223
  %225 = ashr i32 %224, 6
  %226 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %219, i32 %220, i32 %225)
  %227 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %228 = load i32, i32* @E1000_PCIEMISC, align 4
  %229 = call i32 @E1000_READ_REG(%struct.e1000_hw* %227, i32 %228)
  store i32 %229, i32* %8, align 4
  %230 = load i32, i32* @E1000_PCIEMISC_LX_DECISION, align 4
  %231 = xor i32 %230, -1
  %232 = load i32, i32* %8, align 4
  %233 = and i32 %232, %231
  store i32 %233, i32* %8, align 4
  %234 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %235 = load i32, i32* @E1000_PCIEMISC, align 4
  %236 = load i32, i32* %8, align 4
  %237 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %234, i32 %235, i32 %236)
  br label %260

238:                                              ; preds = %28
  %239 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %240 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @e1000_82580, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %259

245:                                              ; preds = %238
  %246 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %247 = load i32, i32* @E1000_PCIEMISC, align 4
  %248 = call i32 @E1000_READ_REG(%struct.e1000_hw* %246, i32 %247)
  store i32 %248, i32* %13, align 4
  %249 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %250 = load i32, i32* @E1000_PCIEMISC, align 4
  %251 = load i32, i32* %13, align 4
  %252 = load i32, i32* @E1000_PCIEMISC_LX_DECISION, align 4
  %253 = xor i32 %252, -1
  %254 = and i32 %251, %253
  %255 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %249, i32 %250, i32 %254)
  %256 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %257 = load i32, i32* @E1000_DMACR, align 4
  %258 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %256, i32 %257, i32 0)
  br label %259

259:                                              ; preds = %245, %238
  br label %260

260:                                              ; preds = %27, %45, %259, %214
  ret void
}

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
