; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_immio.c_imm_do_scsi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_immio.c_imm_do_scsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpoio_data = type { i32 }

@PPB_WAIT = common dso_local global i32 0, align 4
@PPB_INTR = common dso_local global i32 0, align 4
@VP0_ECONNECT = common dso_local global i32 0, align 4
@VP0_FAST_SPINTMO = common dso_local global i32 0, align 4
@VP0_ECMD_TIMEOUT = common dso_local global i32 0, align 4
@VP0_EPPDATA_TIMEOUT = common dso_local global i32 0, align 4
@VP0_LOW_SPINTMO = common dso_local global i32 0, align 4
@VP0_ESTATUS_TIMEOUT = common dso_local global i32 0, align 4
@VP0_ENEGOCIATE = common dso_local global i32 0, align 4
@VP0_EDATA_OVERFLOW = common dso_local global i32 0, align 4
@VP0_SECTOR_SIZE = common dso_local global i32 0, align 4
@transfer_epilog = common dso_local global i32 0, align 4
@VP0_EOTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imm_do_scsi(%struct.vpoio_data* %0, i32 %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.vpoio_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.vpoio_data* %0, %struct.vpoio_data** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %31 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %32 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @device_get_parent(i32 %33)
  store i32 %34, i32* %22, align 4
  store i8 0, i8* %25, align 1
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %30, align 4
  %35 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %36 = load i32, i32* @PPB_WAIT, align 4
  %37 = load i32, i32* @PPB_INTR, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @imm_connect(%struct.vpoio_data* %35, i32 %38, i32* %28, i32 1)
  store i32 %39, i32* %27, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %10
  %42 = load i32, i32* %27, align 4
  store i32 %42, i32* %11, align 4
  br label %275

43:                                               ; preds = %10
  %44 = load i32, i32* %28, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @VP0_ECONNECT, align 4
  %48 = load i32*, i32** %21, align 8
  store i32 %47, i32* %48, align 4
  br label %254

49:                                               ; preds = %43
  %50 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @imm_select(%struct.vpoio_data* %50, i32 %51, i32 %52)
  %54 = load i32*, i32** %21, align 8
  store i32 %53, i32* %54, align 4
  %55 = icmp ne i32 %53, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %254

57:                                               ; preds = %49
  store i32 0, i32* %29, align 4
  br label %58

58:                                               ; preds = %83, %57
  %59 = load i32, i32* %29, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %58
  %63 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %64 = load i32, i32* @VP0_FAST_SPINTMO, align 4
  %65 = call signext i8 @imm_wait(%struct.vpoio_data* %63, i32 %64)
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, -88
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @VP0_ECMD_TIMEOUT, align 4
  %70 = load i32*, i32** %21, align 8
  store i32 %69, i32* %70, align 4
  br label %254

71:                                               ; preds = %62
  %72 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %73 = load i8*, i8** %15, align 8
  %74 = load i32, i32* %29, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = call i32 @imm_outstr(%struct.vpoio_data* %72, i8* %76, i32 2)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i32, i32* @VP0_EPPDATA_TIMEOUT, align 4
  %81 = load i32*, i32** %21, align 8
  store i32 %80, i32* %81, align 4
  br label %254

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %29, align 4
  %85 = add nsw i32 %84, 2
  store i32 %85, i32* %29, align 4
  br label %58

86:                                               ; preds = %58
  %87 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %88 = load i32, i32* @VP0_LOW_SPINTMO, align 4
  %89 = call signext i8 @imm_wait(%struct.vpoio_data* %87, i32 %88)
  store i8 %89, i8* %23, align 1
  %90 = icmp ne i8 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* @VP0_ESTATUS_TIMEOUT, align 4
  %93 = load i32*, i32** %21, align 8
  store i32 %92, i32* %93, align 4
  br label %254

94:                                               ; preds = %86
  %95 = load i8, i8* %23, align 1
  %96 = sext i8 %95 to i32
  %97 = and i32 %96, 48
  %98 = icmp eq i32 %97, 16
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %101 = call i64 @imm_negociate(%struct.vpoio_data* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* @VP0_ENEGOCIATE, align 4
  %105 = load i32*, i32** %21, align 8
  store i32 %104, i32* %105, align 4
  br label %254

106:                                              ; preds = %99
  store i32 1, i32* %30, align 4
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107, %94
  %109 = load i32*, i32** %20, align 8
  store i32 0, i32* %109, align 4
  br label %110

110:                                              ; preds = %187, %108
  %111 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %112 = load i32, i32* @VP0_LOW_SPINTMO, align 4
  %113 = call signext i8 @imm_wait(%struct.vpoio_data* %111, i32 %112)
  store i8 %113, i8* %23, align 1
  %114 = icmp ne i8 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* @VP0_ESTATUS_TIMEOUT, align 4
  %117 = load i32*, i32** %21, align 8
  store i32 %116, i32* %117, align 4
  br label %254

118:                                              ; preds = %110
  %119 = load i8, i8* %23, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, -72
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %192

123:                                              ; preds = %118
  %124 = load i32*, i32** %20, align 8
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %18, align 4
  %127 = icmp sge i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32, i32* @VP0_EDATA_OVERFLOW, align 4
  %130 = load i32*, i32** %21, align 8
  store i32 %129, i32* %130, align 4
  br label %254

131:                                              ; preds = %123
  %132 = load i8, i8* %23, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, -120
  br i1 %134, label %135, label %155

135:                                              ; preds = %131
  %136 = load i32, i32* %18, align 4
  %137 = load i32*, i32** %20, align 8
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %136, %138
  %140 = load i32, i32* @VP0_SECTOR_SIZE, align 4
  %141 = icmp sge i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i32, i32* @VP0_SECTOR_SIZE, align 4
  br label %145

144:                                              ; preds = %135
  br label %145

145:                                              ; preds = %144, %142
  %146 = phi i32 [ %143, %142 ], [ 2, %144 ]
  store i32 %146, i32* %26, align 4
  %147 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %148 = load i8*, i8** %17, align 8
  %149 = load i32*, i32** %20, align 8
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  %153 = load i32, i32* %26, align 4
  %154 = call i32 @imm_outstr(%struct.vpoio_data* %147, i8* %152, i32 %153)
  store i32 %154, i32* %27, align 4
  br label %181

155:                                              ; preds = %131
  %156 = load i32, i32* %22, align 4
  %157 = call i32 @PPB_IN_EPP_MODE(i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %155
  store i32 1, i32* %26, align 4
  br label %172

160:                                              ; preds = %155
  %161 = load i32, i32* %18, align 4
  %162 = load i32*, i32** %20, align 8
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %161, %163
  %165 = load i32, i32* @VP0_SECTOR_SIZE, align 4
  %166 = icmp sge i32 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %160
  %168 = load i32, i32* @VP0_SECTOR_SIZE, align 4
  br label %170

169:                                              ; preds = %160
  br label %170

170:                                              ; preds = %169, %167
  %171 = phi i32 [ %168, %167 ], [ 1, %169 ]
  store i32 %171, i32* %26, align 4
  br label %172

172:                                              ; preds = %170, %159
  %173 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %174 = load i8*, i8** %17, align 8
  %175 = load i32*, i32** %20, align 8
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %174, i64 %177
  %179 = load i32, i32* %26, align 4
  %180 = call i32 @imm_instr(%struct.vpoio_data* %173, i8* %178, i32 %179)
  store i32 %180, i32* %27, align 4
  br label %181

181:                                              ; preds = %172, %145
  %182 = load i32, i32* %27, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i32, i32* %27, align 4
  %186 = load i32*, i32** %21, align 8
  store i32 %185, i32* %186, align 4
  br label %254

187:                                              ; preds = %181
  %188 = load i32, i32* %26, align 4
  %189 = load i32*, i32** %20, align 8
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, %188
  store i32 %191, i32* %189, align 4
  br label %110

192:                                              ; preds = %122
  %193 = load i32, i32* %22, align 4
  %194 = call i64 @PPB_IN_NIBBLE_MODE(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %192
  %197 = load i32, i32* %22, align 4
  %198 = call i64 @PPB_IN_PS2_MODE(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %196, %192
  %201 = load i32, i32* %30, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %200
  %204 = load i32, i32* %22, align 4
  %205 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %206 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @transfer_epilog, align 4
  %209 = call i32 @ppb_MS_microseq(i32 %204, i32 %207, i32 %208, i32* null)
  br label %210

210:                                              ; preds = %203, %200, %196
  %211 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %212 = call i64 @imm_negociate(%struct.vpoio_data* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %210
  %215 = load i32, i32* @VP0_ENEGOCIATE, align 4
  %216 = load i32*, i32** %21, align 8
  store i32 %215, i32* %216, align 4
  br label %254

217:                                              ; preds = %210
  store i32 1, i32* %30, align 4
  br label %218

218:                                              ; preds = %217
  %219 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %220 = call i32 @imm_instr(%struct.vpoio_data* %219, i8* %24, i32 1)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %218
  %223 = load i32, i32* @VP0_EOTHER, align 4
  %224 = load i32*, i32** %21, align 8
  store i32 %223, i32* %224, align 4
  br label %254

225:                                              ; preds = %218
  %226 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %227 = load i32, i32* @VP0_FAST_SPINTMO, align 4
  %228 = call signext i8 @imm_wait(%struct.vpoio_data* %226, i32 %227)
  %229 = sext i8 %228 to i32
  %230 = icmp eq i32 %229, -72
  br i1 %230, label %231, label %240

231:                                              ; preds = %225
  %232 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %233 = call i32 @imm_instr(%struct.vpoio_data* %232, i8* %25, i32 1)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %231
  %236 = load i32, i32* @VP0_EOTHER, align 4
  %237 = add nsw i32 %236, 2
  %238 = load i32*, i32** %21, align 8
  store i32 %237, i32* %238, align 4
  br label %254

239:                                              ; preds = %231
  br label %240

240:                                              ; preds = %239, %225
  %241 = load i8, i8* %25, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp eq i32 %242, -1
  br i1 %243, label %244, label %245

244:                                              ; preds = %240
  store i8 0, i8* %25, align 1
  br label %245

245:                                              ; preds = %244, %240
  %246 = load i8, i8* %25, align 1
  %247 = sext i8 %246 to i32
  %248 = shl i32 %247, 8
  %249 = load i8, i8* %24, align 1
  %250 = sext i8 %249 to i32
  %251 = and i32 %250, 255
  %252 = or i32 %248, %251
  %253 = load i32*, i32** %19, align 8
  store i32 %252, i32* %253, align 4
  br label %254

254:                                              ; preds = %245, %235, %222, %214, %184, %128, %115, %103, %91, %79, %68, %56, %46
  %255 = load i32, i32* %22, align 4
  %256 = call i64 @PPB_IN_NIBBLE_MODE(i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %262, label %258

258:                                              ; preds = %254
  %259 = load i32, i32* %22, align 4
  %260 = call i64 @PPB_IN_PS2_MODE(i32 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %272

262:                                              ; preds = %258, %254
  %263 = load i32, i32* %30, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %272

265:                                              ; preds = %262
  %266 = load i32, i32* %22, align 4
  %267 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %268 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @transfer_epilog, align 4
  %271 = call i32 @ppb_MS_microseq(i32 %266, i32 %269, i32 %270, i32* null)
  br label %272

272:                                              ; preds = %265, %262, %258
  %273 = load %struct.vpoio_data*, %struct.vpoio_data** %12, align 8
  %274 = call i32 @imm_disconnect(%struct.vpoio_data* %273, i32* null, i32 1)
  store i32 0, i32* %11, align 4
  br label %275

275:                                              ; preds = %272, %41
  %276 = load i32, i32* %11, align 4
  ret i32 %276
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @imm_connect(%struct.vpoio_data*, i32, i32*, i32) #1

declare dso_local i32 @imm_select(%struct.vpoio_data*, i32, i32) #1

declare dso_local signext i8 @imm_wait(%struct.vpoio_data*, i32) #1

declare dso_local i32 @imm_outstr(%struct.vpoio_data*, i8*, i32) #1

declare dso_local i64 @imm_negociate(%struct.vpoio_data*) #1

declare dso_local i32 @PPB_IN_EPP_MODE(i32) #1

declare dso_local i32 @imm_instr(%struct.vpoio_data*, i8*, i32) #1

declare dso_local i64 @PPB_IN_NIBBLE_MODE(i32) #1

declare dso_local i64 @PPB_IN_PS2_MODE(i32) #1

declare dso_local i32 @ppb_MS_microseq(i32, i32, i32, i32*) #1

declare dso_local i32 @imm_disconnect(%struct.vpoio_data*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
