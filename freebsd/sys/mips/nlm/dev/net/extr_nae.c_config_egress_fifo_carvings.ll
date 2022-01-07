; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_config_egress_fifo_carvings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_config_egress_fifo_carvings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nae_port_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@config_egress_fifo_carvings.cur_start = internal global [6 x i32] zeroinitializer, align 16
@NAE_STG2_PMEM_PROG = common dso_local global i32 0, align 4
@NAE_EH_PMEM_PROG = common dso_local global i32 0, align 4
@NAE_FREE_PMEM_PROG = common dso_local global i32 0, align 4
@NAE_STR_PMEM_CMD = common dso_local global i32 0, align 4
@NAE_TX_PKT_PMEM_CMD1 = common dso_local global i32 0, align 4
@NAE_TX_PKT_PMEM_CMD0 = common dso_local global i32 0, align 4
@NAE_TX_PKTLEN_PMEM_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @config_egress_fifo_carvings(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.nae_port_config* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nae_port_config*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.nae_port_config* %5, %struct.nae_port_config** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @config_egress_fifo_carvings.cur_start, i64 0, i64 0), align 16
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %17, align 4
  br label %24

24:                                               ; preds = %77, %6
  %25 = load i32, i32* %17, align 4
  %26 = load i32, i32* %18, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %80

28:                                               ; preds = %24
  %29 = load %struct.nae_port_config*, %struct.nae_port_config** %12, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %29, i64 %31
  %33 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %11, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load i32, i32* %15, align 4
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %16, align 4
  br label %44

42:                                               ; preds = %28
  %43 = load i32, i32* %15, align 4
  store i32 %43, i32* %16, align 4
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i32, i32* %16, align 4
  %46 = load %struct.nae_port_config*, %struct.nae_port_config** %12, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %46, i64 %48
  %50 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %45, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load %struct.nae_port_config*, %struct.nae_port_config** %12, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %54, i64 %56
  %58 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %16, align 4
  br label %60

60:                                               ; preds = %53, %44
  %61 = load i32, i32* %16, align 4
  %62 = shl i32 %61, 23
  %63 = load i32, i32* %14, align 4
  %64 = shl i32 %63, 11
  %65 = or i32 %62, %64
  %66 = load i32, i32* %17, align 4
  %67 = shl i32 %66, 1
  %68 = or i32 %65, %67
  %69 = or i32 %68, 1
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @NAE_STG2_PMEM_PROG, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @nlm_write_nae_reg(i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %60
  %78 = load i32, i32* %17, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %17, align 4
  br label %24

80:                                               ; preds = %24
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @config_egress_fifo_carvings.cur_start, i64 0, i64 0), align 16
  %82 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @config_egress_fifo_carvings.cur_start, i64 0, i64 1), align 4
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %17, align 4
  br label %84

84:                                               ; preds = %137, %80
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %18, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %140

88:                                               ; preds = %84
  %89 = load %struct.nae_port_config*, %struct.nae_port_config** %12, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %89, i64 %91
  %93 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %11, align 4
  %96 = sdiv i32 %94, %95
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %88
  %100 = load i32, i32* %15, align 4
  %101 = sub nsw i32 %100, 1
  store i32 %101, i32* %16, align 4
  br label %104

102:                                              ; preds = %88
  %103 = load i32, i32* %15, align 4
  store i32 %103, i32* %16, align 4
  br label %104

104:                                              ; preds = %102, %99
  %105 = load i32, i32* %16, align 4
  %106 = load %struct.nae_port_config*, %struct.nae_port_config** %12, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %106, i64 %108
  %110 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp sgt i32 %105, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %104
  %114 = load %struct.nae_port_config*, %struct.nae_port_config** %12, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %114, i64 %116
  %118 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %16, align 4
  br label %120

120:                                              ; preds = %113, %104
  %121 = load i32, i32* %16, align 4
  %122 = shl i32 %121, 23
  %123 = load i32, i32* %14, align 4
  %124 = shl i32 %123, 11
  %125 = or i32 %122, %124
  %126 = load i32, i32* %17, align 4
  %127 = shl i32 %126, 1
  %128 = or i32 %125, %127
  %129 = or i32 %128, 1
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @NAE_EH_PMEM_PROG, align 4
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @nlm_write_nae_reg(i32 %130, i32 %131, i32 %132)
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %14, align 4
  br label %137

137:                                              ; preds = %120
  %138 = load i32, i32* %17, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %17, align 4
  br label %84

140:                                              ; preds = %84
  %141 = load i32, i32* %14, align 4
  store i32 %141, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @config_egress_fifo_carvings.cur_start, i64 0, i64 1), align 4
  %142 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @config_egress_fifo_carvings.cur_start, i64 0, i64 2), align 8
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %17, align 4
  br label %144

144:                                              ; preds = %197, %140
  %145 = load i32, i32* %17, align 4
  %146 = load i32, i32* %18, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %200

148:                                              ; preds = %144
  %149 = load %struct.nae_port_config*, %struct.nae_port_config** %12, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %149, i64 %151
  %153 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %11, align 4
  %156 = sdiv i32 %154, %155
  store i32 %156, i32* %15, align 4
  %157 = load i32, i32* %15, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %148
  %160 = load i32, i32* %15, align 4
  %161 = sub nsw i32 %160, 1
  store i32 %161, i32* %16, align 4
  br label %164

162:                                              ; preds = %148
  %163 = load i32, i32* %15, align 4
  store i32 %163, i32* %16, align 4
  br label %164

164:                                              ; preds = %162, %159
  %165 = load i32, i32* %16, align 4
  %166 = load %struct.nae_port_config*, %struct.nae_port_config** %12, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %166, i64 %168
  %170 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = icmp sgt i32 %165, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %164
  %174 = load %struct.nae_port_config*, %struct.nae_port_config** %12, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %174, i64 %176
  %178 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %16, align 4
  br label %180

180:                                              ; preds = %173, %164
  %181 = load i32, i32* %16, align 4
  %182 = shl i32 %181, 23
  %183 = load i32, i32* %14, align 4
  %184 = shl i32 %183, 11
  %185 = or i32 %182, %184
  %186 = load i32, i32* %17, align 4
  %187 = shl i32 %186, 1
  %188 = or i32 %185, %187
  %189 = or i32 %188, 1
  store i32 %189, i32* %13, align 4
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* @NAE_FREE_PMEM_PROG, align 4
  %192 = load i32, i32* %13, align 4
  %193 = call i32 @nlm_write_nae_reg(i32 %190, i32 %191, i32 %192)
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* %14, align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* %14, align 4
  br label %197

197:                                              ; preds = %180
  %198 = load i32, i32* %17, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %17, align 4
  br label %144

200:                                              ; preds = %144
  %201 = load i32, i32* %14, align 4
  store i32 %201, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @config_egress_fifo_carvings.cur_start, i64 0, i64 2), align 8
  %202 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @config_egress_fifo_carvings.cur_start, i64 0, i64 3), align 4
  store i32 %202, i32* %14, align 4
  %203 = load i32, i32* %9, align 4
  store i32 %203, i32* %17, align 4
  br label %204

204:                                              ; preds = %257, %200
  %205 = load i32, i32* %17, align 4
  %206 = load i32, i32* %18, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %260

208:                                              ; preds = %204
  %209 = load %struct.nae_port_config*, %struct.nae_port_config** %12, align 8
  %210 = load i32, i32* %8, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %209, i64 %211
  %213 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %11, align 4
  %216 = sdiv i32 %214, %215
  store i32 %216, i32* %15, align 4
  %217 = load i32, i32* %15, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %208
  %220 = load i32, i32* %15, align 4
  %221 = sub nsw i32 %220, 1
  store i32 %221, i32* %16, align 4
  br label %224

222:                                              ; preds = %208
  %223 = load i32, i32* %15, align 4
  store i32 %223, i32* %16, align 4
  br label %224

224:                                              ; preds = %222, %219
  %225 = load i32, i32* %16, align 4
  %226 = load %struct.nae_port_config*, %struct.nae_port_config** %12, align 8
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %226, i64 %228
  %230 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %229, i32 0, i32 7
  %231 = load i32, i32* %230, align 4
  %232 = icmp sgt i32 %225, %231
  br i1 %232, label %233, label %240

233:                                              ; preds = %224
  %234 = load %struct.nae_port_config*, %struct.nae_port_config** %12, align 8
  %235 = load i32, i32* %8, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %234, i64 %236
  %238 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %237, i32 0, i32 7
  %239 = load i32, i32* %238, align 4
  store i32 %239, i32* %16, align 4
  br label %240

240:                                              ; preds = %233, %224
  %241 = load i32, i32* %16, align 4
  %242 = shl i32 %241, 22
  %243 = load i32, i32* %14, align 4
  %244 = shl i32 %243, 11
  %245 = or i32 %242, %244
  %246 = load i32, i32* %17, align 4
  %247 = shl i32 %246, 1
  %248 = or i32 %245, %247
  %249 = or i32 %248, 1
  store i32 %249, i32* %13, align 4
  %250 = load i32, i32* %7, align 4
  %251 = load i32, i32* @NAE_STR_PMEM_CMD, align 4
  %252 = load i32, i32* %13, align 4
  %253 = call i32 @nlm_write_nae_reg(i32 %250, i32 %251, i32 %252)
  %254 = load i32, i32* %15, align 4
  %255 = load i32, i32* %14, align 4
  %256 = add nsw i32 %255, %254
  store i32 %256, i32* %14, align 4
  br label %257

257:                                              ; preds = %240
  %258 = load i32, i32* %17, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %17, align 4
  br label %204

260:                                              ; preds = %204
  %261 = load i32, i32* %14, align 4
  store i32 %261, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @config_egress_fifo_carvings.cur_start, i64 0, i64 3), align 4
  %262 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @config_egress_fifo_carvings.cur_start, i64 0, i64 4), align 16
  store i32 %262, i32* %14, align 4
  %263 = load i32, i32* %9, align 4
  store i32 %263, i32* %17, align 4
  br label %264

264:                                              ; preds = %318, %260
  %265 = load i32, i32* %17, align 4
  %266 = load i32, i32* %18, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %321

268:                                              ; preds = %264
  %269 = load %struct.nae_port_config*, %struct.nae_port_config** %12, align 8
  %270 = load i32, i32* %8, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %269, i64 %271
  %273 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %272, i32 0, i32 8
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* %11, align 4
  %276 = sdiv i32 %274, %275
  store i32 %276, i32* %15, align 4
  %277 = load i32, i32* %15, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %268
  %280 = load i32, i32* %15, align 4
  %281 = sub nsw i32 %280, 1
  store i32 %281, i32* %16, align 4
  br label %284

282:                                              ; preds = %268
  %283 = load i32, i32* %15, align 4
  store i32 %283, i32* %16, align 4
  br label %284

284:                                              ; preds = %282, %279
  %285 = load i32, i32* %16, align 4
  %286 = load %struct.nae_port_config*, %struct.nae_port_config** %12, align 8
  %287 = load i32, i32* %8, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %286, i64 %288
  %290 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %289, i32 0, i32 9
  %291 = load i32, i32* %290, align 4
  %292 = icmp sgt i32 %285, %291
  br i1 %292, label %293, label %300

293:                                              ; preds = %284
  %294 = load %struct.nae_port_config*, %struct.nae_port_config** %12, align 8
  %295 = load i32, i32* %8, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %294, i64 %296
  %298 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %297, i32 0, i32 9
  %299 = load i32, i32* %298, align 4
  store i32 %299, i32* %16, align 4
  br label %300

300:                                              ; preds = %293, %284
  %301 = load i32, i32* %7, align 4
  %302 = load i32, i32* @NAE_TX_PKT_PMEM_CMD1, align 4
  %303 = load i32, i32* %16, align 4
  %304 = call i32 @nlm_write_nae_reg(i32 %301, i32 %302, i32 %303)
  %305 = load i32, i32* %14, align 4
  %306 = shl i32 %305, 11
  %307 = load i32, i32* %17, align 4
  %308 = shl i32 %307, 1
  %309 = or i32 %306, %308
  %310 = or i32 %309, 1
  store i32 %310, i32* %13, align 4
  %311 = load i32, i32* %7, align 4
  %312 = load i32, i32* @NAE_TX_PKT_PMEM_CMD0, align 4
  %313 = load i32, i32* %13, align 4
  %314 = call i32 @nlm_write_nae_reg(i32 %311, i32 %312, i32 %313)
  %315 = load i32, i32* %15, align 4
  %316 = load i32, i32* %14, align 4
  %317 = add nsw i32 %316, %315
  store i32 %317, i32* %14, align 4
  br label %318

318:                                              ; preds = %300
  %319 = load i32, i32* %17, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %17, align 4
  br label %264

321:                                              ; preds = %264
  %322 = load i32, i32* %14, align 4
  store i32 %322, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @config_egress_fifo_carvings.cur_start, i64 0, i64 4), align 16
  %323 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @config_egress_fifo_carvings.cur_start, i64 0, i64 5), align 4
  store i32 %323, i32* %14, align 4
  %324 = load i32, i32* %9, align 4
  store i32 %324, i32* %17, align 4
  br label %325

325:                                              ; preds = %362, %321
  %326 = load i32, i32* %17, align 4
  %327 = load i32, i32* %18, align 4
  %328 = icmp slt i32 %326, %327
  br i1 %328, label %329, label %365

329:                                              ; preds = %325
  %330 = load %struct.nae_port_config*, %struct.nae_port_config** %12, align 8
  %331 = load i32, i32* %8, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %330, i64 %332
  %334 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %333, i32 0, i32 10
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* %11, align 4
  %337 = sdiv i32 %335, %336
  store i32 %337, i32* %15, align 4
  %338 = load i32, i32* %15, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %329
  %341 = load i32, i32* %15, align 4
  %342 = sub nsw i32 %341, 1
  store i32 %342, i32* %16, align 4
  br label %345

343:                                              ; preds = %329
  %344 = load i32, i32* %15, align 4
  store i32 %344, i32* %16, align 4
  br label %345

345:                                              ; preds = %343, %340
  %346 = load i32, i32* %16, align 4
  %347 = shl i32 %346, 22
  %348 = load i32, i32* %14, align 4
  %349 = shl i32 %348, 11
  %350 = or i32 %347, %349
  %351 = load i32, i32* %17, align 4
  %352 = shl i32 %351, 1
  %353 = or i32 %350, %352
  %354 = or i32 %353, 1
  store i32 %354, i32* %13, align 4
  %355 = load i32, i32* %7, align 4
  %356 = load i32, i32* @NAE_TX_PKTLEN_PMEM_CMD, align 4
  %357 = load i32, i32* %13, align 4
  %358 = call i32 @nlm_write_nae_reg(i32 %355, i32 %356, i32 %357)
  %359 = load i32, i32* %15, align 4
  %360 = load i32, i32* %14, align 4
  %361 = add nsw i32 %360, %359
  store i32 %361, i32* %14, align 4
  br label %362

362:                                              ; preds = %345
  %363 = load i32, i32* %17, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %17, align 4
  br label %325

365:                                              ; preds = %325
  %366 = load i32, i32* %14, align 4
  store i32 %366, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @config_egress_fifo_carvings.cur_start, i64 0, i64 5), align 4
  ret void
}

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
