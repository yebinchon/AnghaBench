; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_g_raid_md_ddf_supported.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_g_raid_md_ddf_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DDF_MAX_DISKS_HARD = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_NONE = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R1SM = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R1MM = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R3P0 = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R3PN = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R4P0 = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R4PN = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R5RA = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R5RS = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R5LA = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R5LS = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R6RA = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R6RS = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R6LA = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R6LS = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_RMDFRA = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_RMDFRS = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_RMDFLA = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_RMDFLS = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R1EA = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R1EO = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R5ERA = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R5ERS = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R5ELA = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R5ELS = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R5EERA = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R5EERS = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R5EELA = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R5EELS = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R5RRA = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R5RRS = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R5RLA = common dso_local global i32 0, align 4
@G_RAID_VOLUME_RLQ_R5RLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @g_raid_md_ddf_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_md_ddf_supported(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @DDF_MAX_DISKS_HARD, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %260

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %258 [
    i32 139, label %16
    i32 138, label %33
    i32 136, label %64
    i32 135, label %78
    i32 134, label %92
    i32 130, label %114
    i32 129, label %136
    i32 137, label %158
    i32 128, label %172
    i32 140, label %182
    i32 133, label %192
    i32 132, label %214
    i32 131, label %236
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @G_RAID_VOLUME_RLQ_NONE, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %260

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %260

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %260

32:                                               ; preds = %28, %25
  br label %259

33:                                               ; preds = %14
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %260

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @G_RAID_VOLUME_RLQ_R1SM, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 2
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %260

48:                                               ; preds = %44, %41
  br label %63

49:                                               ; preds = %37
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @G_RAID_VOLUME_RLQ_R1MM, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 3
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %260

60:                                               ; preds = %56, %53
  br label %62

61:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %260

62:                                               ; preds = %60
  br label %63

63:                                               ; preds = %62, %48
  br label %259

64:                                               ; preds = %14
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @G_RAID_VOLUME_RLQ_R3P0, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @G_RAID_VOLUME_RLQ_R3PN, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %260

73:                                               ; preds = %68, %64
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 3
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %260

77:                                               ; preds = %73
  br label %259

78:                                               ; preds = %14
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @G_RAID_VOLUME_RLQ_R4P0, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @G_RAID_VOLUME_RLQ_R4PN, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %260

87:                                               ; preds = %82, %78
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 3
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 0, i32* %5, align 4
  br label %260

91:                                               ; preds = %87
  br label %259

92:                                               ; preds = %14
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @G_RAID_VOLUME_RLQ_R5RA, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %92
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @G_RAID_VOLUME_RLQ_R5RS, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @G_RAID_VOLUME_RLQ_R5LA, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @G_RAID_VOLUME_RLQ_R5LS, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store i32 0, i32* %5, align 4
  br label %260

109:                                              ; preds = %104, %100, %96, %92
  %110 = load i32, i32* %8, align 4
  %111 = icmp slt i32 %110, 3
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32 0, i32* %5, align 4
  br label %260

113:                                              ; preds = %109
  br label %259

114:                                              ; preds = %14
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @G_RAID_VOLUME_RLQ_R6RA, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %114
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @G_RAID_VOLUME_RLQ_R6RS, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %118
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @G_RAID_VOLUME_RLQ_R6LA, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @G_RAID_VOLUME_RLQ_R6LS, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  store i32 0, i32* %5, align 4
  br label %260

131:                                              ; preds = %126, %122, %118, %114
  %132 = load i32, i32* %8, align 4
  %133 = icmp slt i32 %132, 4
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store i32 0, i32* %5, align 4
  br label %260

135:                                              ; preds = %131
  br label %259

136:                                              ; preds = %14
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @G_RAID_VOLUME_RLQ_RMDFRA, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %153

140:                                              ; preds = %136
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @G_RAID_VOLUME_RLQ_RMDFRS, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %140
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @G_RAID_VOLUME_RLQ_RMDFLA, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %144
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @G_RAID_VOLUME_RLQ_RMDFLS, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  store i32 0, i32* %5, align 4
  br label %260

153:                                              ; preds = %148, %144, %140, %136
  %154 = load i32, i32* %8, align 4
  %155 = icmp slt i32 %154, 4
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  store i32 0, i32* %5, align 4
  br label %260

157:                                              ; preds = %153
  br label %259

158:                                              ; preds = %14
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* @G_RAID_VOLUME_RLQ_R1EA, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* @G_RAID_VOLUME_RLQ_R1EO, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  store i32 0, i32* %5, align 4
  br label %260

167:                                              ; preds = %162, %158
  %168 = load i32, i32* %8, align 4
  %169 = icmp slt i32 %168, 3
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  store i32 0, i32* %5, align 4
  br label %260

171:                                              ; preds = %167
  br label %259

172:                                              ; preds = %14
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @G_RAID_VOLUME_RLQ_NONE, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  store i32 0, i32* %5, align 4
  br label %260

177:                                              ; preds = %172
  %178 = load i32, i32* %8, align 4
  %179 = icmp ne i32 %178, 1
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  store i32 0, i32* %5, align 4
  br label %260

181:                                              ; preds = %177
  br label %259

182:                                              ; preds = %14
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* @G_RAID_VOLUME_RLQ_NONE, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  store i32 0, i32* %5, align 4
  br label %260

187:                                              ; preds = %182
  %188 = load i32, i32* %8, align 4
  %189 = icmp slt i32 %188, 2
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  store i32 0, i32* %5, align 4
  br label %260

191:                                              ; preds = %187
  br label %259

192:                                              ; preds = %14
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* @G_RAID_VOLUME_RLQ_R5ERA, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %209

196:                                              ; preds = %192
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* @G_RAID_VOLUME_RLQ_R5ERS, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %209

200:                                              ; preds = %196
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* @G_RAID_VOLUME_RLQ_R5ELA, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %209

204:                                              ; preds = %200
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* @G_RAID_VOLUME_RLQ_R5ELS, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  store i32 0, i32* %5, align 4
  br label %260

209:                                              ; preds = %204, %200, %196, %192
  %210 = load i32, i32* %8, align 4
  %211 = icmp slt i32 %210, 4
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  store i32 0, i32* %5, align 4
  br label %260

213:                                              ; preds = %209
  br label %259

214:                                              ; preds = %14
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* @G_RAID_VOLUME_RLQ_R5EERA, align 4
  %217 = icmp ne i32 %215, %216
  br i1 %217, label %218, label %231

218:                                              ; preds = %214
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* @G_RAID_VOLUME_RLQ_R5EERS, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %222, label %231

222:                                              ; preds = %218
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* @G_RAID_VOLUME_RLQ_R5EELA, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %226, label %231

226:                                              ; preds = %222
  %227 = load i32, i32* %7, align 4
  %228 = load i32, i32* @G_RAID_VOLUME_RLQ_R5EELS, align 4
  %229 = icmp ne i32 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %226
  store i32 0, i32* %5, align 4
  br label %260

231:                                              ; preds = %226, %222, %218, %214
  %232 = load i32, i32* %8, align 4
  %233 = icmp slt i32 %232, 4
  br i1 %233, label %234, label %235

234:                                              ; preds = %231
  store i32 0, i32* %5, align 4
  br label %260

235:                                              ; preds = %231
  br label %259

236:                                              ; preds = %14
  %237 = load i32, i32* %7, align 4
  %238 = load i32, i32* @G_RAID_VOLUME_RLQ_R5RRA, align 4
  %239 = icmp ne i32 %237, %238
  br i1 %239, label %240, label %253

240:                                              ; preds = %236
  %241 = load i32, i32* %7, align 4
  %242 = load i32, i32* @G_RAID_VOLUME_RLQ_R5RRS, align 4
  %243 = icmp ne i32 %241, %242
  br i1 %243, label %244, label %253

244:                                              ; preds = %240
  %245 = load i32, i32* %7, align 4
  %246 = load i32, i32* @G_RAID_VOLUME_RLQ_R5RLA, align 4
  %247 = icmp ne i32 %245, %246
  br i1 %247, label %248, label %253

248:                                              ; preds = %244
  %249 = load i32, i32* %7, align 4
  %250 = load i32, i32* @G_RAID_VOLUME_RLQ_R5RLS, align 4
  %251 = icmp ne i32 %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %248
  store i32 0, i32* %5, align 4
  br label %260

253:                                              ; preds = %248, %244, %240, %236
  %254 = load i32, i32* %8, align 4
  %255 = icmp slt i32 %254, 3
  br i1 %255, label %256, label %257

256:                                              ; preds = %253
  store i32 0, i32* %5, align 4
  br label %260

257:                                              ; preds = %253
  br label %259

258:                                              ; preds = %14
  store i32 0, i32* %5, align 4
  br label %260

259:                                              ; preds = %257, %235, %213, %191, %181, %171, %157, %135, %113, %91, %77, %63, %32
  store i32 1, i32* %5, align 4
  br label %260

260:                                              ; preds = %259, %258, %256, %252, %234, %230, %212, %208, %190, %186, %180, %176, %170, %166, %156, %152, %134, %130, %112, %108, %90, %86, %76, %72, %61, %59, %47, %36, %31, %24, %20, %13
  %261 = load i32, i32* %5, align 4
  ret i32 %261
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
