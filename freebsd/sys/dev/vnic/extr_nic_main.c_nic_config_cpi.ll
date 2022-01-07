; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_config_cpi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_config_cpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i64, i32*, i32*, i32, i32* }
%struct.cpi_cfg_msg = type { i64, i64, i32 }

@MAX_BGX_CHANS_PER_LMAC = common dso_local global i64 0, align 8
@NIC_CHANS_PER_INF = common dso_local global i64 0, align 8
@NIC_MAX_CPI_PER_LMAC = common dso_local global i64 0, align 8
@NIC_CPI_PER_BGX = common dso_local global i64 0, align 8
@NIC_RSSI_PER_BGX = common dso_local global i64 0, align 8
@NIC_PF_CHAN_0_255_RX_BP_CFG = common dso_local global i64 0, align 8
@NIC_PF_CHAN_0_255_RX_CFG = common dso_local global i64 0, align 8
@CPI_ALG_NONE = common dso_local global i64 0, align 8
@CPI_ALG_VLAN = common dso_local global i64 0, align 8
@CPI_ALG_VLAN16 = common dso_local global i64 0, align 8
@CPI_ALG_DIFF = common dso_local global i64 0, align 8
@NIC_PF_RSSI_0_4097_RQ = common dso_local global i32 0, align 4
@NIC_PF_CPI_0_2047_CFG = common dso_local global i32 0, align 4
@NIC_PF_MPI_0_2047_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicpf*, %struct.cpi_cfg_msg*)* @nic_config_cpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_config_cpi(%struct.nicpf* %0, %struct.cpi_cfg_msg* %1) #0 {
  %3 = alloca %struct.nicpf*, align 8
  %4 = alloca %struct.cpi_cfg_msg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nicpf* %0, %struct.nicpf** %3, align 8
  store %struct.cpi_cfg_msg* %1, %struct.cpi_cfg_msg** %4, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.cpi_cfg_msg*, %struct.cpi_cfg_msg** %4, align 8
  %18 = getelementptr inbounds %struct.cpi_cfg_msg, %struct.cpi_cfg_msg* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %5, align 8
  %20 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %21 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @NIC_GET_BGX_FROM_VF_LMAC_MAP(i32 %25)
  store i64 %26, i64* %6, align 8
  %27 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %28 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @NIC_GET_LMAC_FROM_VF_LMAC_MAP(i32 %32)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @MAX_BGX_CHANS_PER_LMAC, align 8
  %36 = mul i64 %34, %35
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @NIC_CHANS_PER_INF, align 8
  %39 = mul i64 %37, %38
  %40 = add i64 %36, %39
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @NIC_MAX_CPI_PER_LMAC, align 8
  %43 = mul i64 %41, %42
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @NIC_CPI_PER_BGX, align 8
  %46 = mul i64 %44, %45
  %47 = add i64 %43, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %11, align 4
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %51 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = mul i64 %49, %52
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @NIC_RSSI_PER_BGX, align 8
  %56 = mul i64 %54, %55
  %57 = add i64 %53, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %13, align 4
  %59 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %60 = load i64, i64* @NIC_PF_CHAN_0_255_RX_BP_CFG, align 8
  %61 = load i64, i64* %8, align 8
  %62 = shl i64 %61, 3
  %63 = or i64 %60, %62
  %64 = trunc i64 %63 to i32
  %65 = load i64, i64* %5, align 8
  %66 = shl i64 %65, 0
  %67 = or i64 -9223372036854775808, %66
  %68 = call i32 @nic_reg_write(%struct.nicpf* %59, i32 %64, i64 %67)
  %69 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %70 = load i64, i64* @NIC_PF_CHAN_0_255_RX_CFG, align 8
  %71 = load i64, i64* %8, align 8
  %72 = shl i64 %71, 3
  %73 = or i64 %70, %72
  %74 = trunc i64 %73 to i32
  %75 = load %struct.cpi_cfg_msg*, %struct.cpi_cfg_msg** %4, align 8
  %76 = getelementptr inbounds %struct.cpi_cfg_msg, %struct.cpi_cfg_msg* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = shl i32 %78, 62
  %80 = load i32, i32* %11, align 4
  %81 = shl i32 %80, 48
  %82 = or i32 %79, %81
  %83 = sext i32 %82 to i64
  %84 = call i32 @nic_reg_write(%struct.nicpf* %69, i32 %74, i64 %83)
  %85 = load %struct.cpi_cfg_msg*, %struct.cpi_cfg_msg** %4, align 8
  %86 = getelementptr inbounds %struct.cpi_cfg_msg, %struct.cpi_cfg_msg* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @CPI_ALG_NONE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %2
  store i64 1, i64* %10, align 8
  br label %116

91:                                               ; preds = %2
  %92 = load %struct.cpi_cfg_msg*, %struct.cpi_cfg_msg** %4, align 8
  %93 = getelementptr inbounds %struct.cpi_cfg_msg, %struct.cpi_cfg_msg* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @CPI_ALG_VLAN, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i64 8, i64* %10, align 8
  br label %115

98:                                               ; preds = %91
  %99 = load %struct.cpi_cfg_msg*, %struct.cpi_cfg_msg** %4, align 8
  %100 = getelementptr inbounds %struct.cpi_cfg_msg, %struct.cpi_cfg_msg* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @CPI_ALG_VLAN16, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  store i64 16, i64* %10, align 8
  br label %114

105:                                              ; preds = %98
  %106 = load %struct.cpi_cfg_msg*, %struct.cpi_cfg_msg** %4, align 8
  %107 = getelementptr inbounds %struct.cpi_cfg_msg, %struct.cpi_cfg_msg* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @CPI_ALG_DIFF, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i64, i64* @NIC_MAX_CPI_PER_LMAC, align 8
  store i64 %112, i64* %10, align 8
  br label %113

113:                                              ; preds = %111, %105
  br label %114

114:                                              ; preds = %113, %104
  br label %115

115:                                              ; preds = %114, %97
  br label %116

116:                                              ; preds = %115, %90
  %117 = load %struct.cpi_cfg_msg*, %struct.cpi_cfg_msg** %4, align 8
  %118 = getelementptr inbounds %struct.cpi_cfg_msg, %struct.cpi_cfg_msg* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %13, align 4
  store i32 %121, i32* %14, align 4
  br label %122

122:                                              ; preds = %144, %116
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load %struct.cpi_cfg_msg*, %struct.cpi_cfg_msg** %4, align 8
  %126 = getelementptr inbounds %struct.cpi_cfg_msg, %struct.cpi_cfg_msg* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %124, %127
  %129 = icmp slt i32 %123, %128
  br i1 %129, label %130, label %147

130:                                              ; preds = %122
  %131 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %132 = load i32, i32* @NIC_PF_RSSI_0_4097_RQ, align 4
  %133 = load i32, i32* %14, align 4
  %134 = shl i32 %133, 3
  %135 = or i32 %132, %134
  %136 = load i32, i32* %15, align 4
  %137 = shl i32 %136, 3
  %138 = load i32, i32* %16, align 4
  %139 = or i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = call i32 @nic_reg_write(%struct.nicpf* %131, i32 %135, i64 %140)
  %142 = load i32, i32* %16, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %16, align 4
  br label %144

144:                                              ; preds = %130
  %145 = load i32, i32* %14, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %14, align 4
  br label %122

147:                                              ; preds = %122
  store i32 0, i32* %14, align 4
  %148 = load i32, i32* %11, align 4
  store i32 %148, i32* %12, align 4
  br label %149

149:                                              ; preds = %261, %147
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* %10, align 8
  %155 = add i64 %153, %154
  %156 = icmp ult i64 %151, %155
  br i1 %156, label %157, label %264

157:                                              ; preds = %149
  %158 = load %struct.cpi_cfg_msg*, %struct.cpi_cfg_msg** %4, align 8
  %159 = getelementptr inbounds %struct.cpi_cfg_msg, %struct.cpi_cfg_msg* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @CPI_ALG_DIFF, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %157
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = load i64, i64* %10, align 8
  %167 = urem i64 %165, %166
  store i64 %167, i64* %9, align 8
  br label %172

168:                                              ; preds = %157
  %169 = load i32, i32* %12, align 4
  %170 = srem i32 %169, 8
  %171 = sext i32 %170 to i64
  store i64 %171, i64* %9, align 8
  br label %172

172:                                              ; preds = %168, %163
  %173 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %174 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = call i64 @pass1_silicon(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %195

178:                                              ; preds = %172
  %179 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %180 = load i32, i32* @NIC_PF_CPI_0_2047_CFG, align 4
  %181 = load i32, i32* %12, align 4
  %182 = shl i32 %181, 3
  %183 = or i32 %180, %182
  %184 = load i64, i64* %5, align 8
  %185 = shl i64 %184, 24
  %186 = load i64, i64* %9, align 8
  %187 = shl i64 %186, 16
  %188 = or i64 %185, %187
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* %14, align 4
  %191 = add nsw i32 %189, %190
  %192 = sext i32 %191 to i64
  %193 = or i64 %188, %192
  %194 = call i32 @nic_reg_write(%struct.nicpf* %179, i32 %183, i64 %193)
  br label %217

195:                                              ; preds = %172
  %196 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %197 = load i32, i32* @NIC_PF_CPI_0_2047_CFG, align 4
  %198 = load i32, i32* %12, align 4
  %199 = shl i32 %198, 3
  %200 = or i32 %197, %199
  %201 = load i64, i64* %9, align 8
  %202 = shl i64 %201, 16
  %203 = call i32 @nic_reg_write(%struct.nicpf* %196, i32 %200, i64 %202)
  %204 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %205 = load i32, i32* @NIC_PF_MPI_0_2047_CFG, align 4
  %206 = load i32, i32* %12, align 4
  %207 = shl i32 %206, 3
  %208 = or i32 %205, %207
  %209 = load i64, i64* %5, align 8
  %210 = shl i64 %209, 24
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* %14, align 4
  %213 = add nsw i32 %211, %212
  %214 = sext i32 %213 to i64
  %215 = or i64 %210, %214
  %216 = call i32 @nic_reg_write(%struct.nicpf* %204, i32 %208, i64 %215)
  br label %217

217:                                              ; preds = %195, %178
  %218 = load i32, i32* %14, align 4
  %219 = add nsw i32 %218, 1
  %220 = load %struct.cpi_cfg_msg*, %struct.cpi_cfg_msg** %4, align 8
  %221 = getelementptr inbounds %struct.cpi_cfg_msg, %struct.cpi_cfg_msg* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = icmp sge i32 %219, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %217
  br label %261

225:                                              ; preds = %217
  %226 = load %struct.cpi_cfg_msg*, %struct.cpi_cfg_msg** %4, align 8
  %227 = getelementptr inbounds %struct.cpi_cfg_msg, %struct.cpi_cfg_msg* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @CPI_ALG_VLAN, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %225
  %232 = load i32, i32* %14, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %14, align 4
  br label %260

234:                                              ; preds = %225
  %235 = load %struct.cpi_cfg_msg*, %struct.cpi_cfg_msg** %4, align 8
  %236 = getelementptr inbounds %struct.cpi_cfg_msg, %struct.cpi_cfg_msg* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @CPI_ALG_VLAN16, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %246

240:                                              ; preds = %234
  %241 = load i32, i32* %12, align 4
  %242 = load i32, i32* %11, align 4
  %243 = sub nsw i32 %241, %242
  %244 = and i32 %243, 14
  %245 = ashr i32 %244, 1
  store i32 %245, i32* %14, align 4
  br label %259

246:                                              ; preds = %234
  %247 = load %struct.cpi_cfg_msg*, %struct.cpi_cfg_msg** %4, align 8
  %248 = getelementptr inbounds %struct.cpi_cfg_msg, %struct.cpi_cfg_msg* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @CPI_ALG_DIFF, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %258

252:                                              ; preds = %246
  %253 = load i32, i32* %12, align 4
  %254 = load i32, i32* %11, align 4
  %255 = sub nsw i32 %253, %254
  %256 = and i32 %255, 56
  %257 = ashr i32 %256, 3
  store i32 %257, i32* %14, align 4
  br label %258

258:                                              ; preds = %252, %246
  br label %259

259:                                              ; preds = %258, %240
  br label %260

260:                                              ; preds = %259, %231
  br label %261

261:                                              ; preds = %260, %224
  %262 = load i32, i32* %12, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %12, align 4
  br label %149

264:                                              ; preds = %149
  %265 = load i32, i32* %11, align 4
  %266 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %267 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = load %struct.cpi_cfg_msg*, %struct.cpi_cfg_msg** %4, align 8
  %270 = getelementptr inbounds %struct.cpi_cfg_msg, %struct.cpi_cfg_msg* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = getelementptr inbounds i32, i32* %268, i64 %271
  store i32 %265, i32* %272, align 4
  %273 = load i32, i32* %13, align 4
  %274 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %275 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %274, i32 0, i32 2
  %276 = load i32*, i32** %275, align 8
  %277 = load %struct.cpi_cfg_msg*, %struct.cpi_cfg_msg** %4, align 8
  %278 = getelementptr inbounds %struct.cpi_cfg_msg, %struct.cpi_cfg_msg* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = getelementptr inbounds i32, i32* %276, i64 %279
  store i32 %273, i32* %280, align 4
  ret void
}

declare dso_local i64 @NIC_GET_BGX_FROM_VF_LMAC_MAP(i32) #1

declare dso_local i64 @NIC_GET_LMAC_FROM_VF_LMAC_MAP(i32) #1

declare dso_local i32 @nic_reg_write(%struct.nicpf*, i32, i64) #1

declare dso_local i64 @pass1_silicon(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
