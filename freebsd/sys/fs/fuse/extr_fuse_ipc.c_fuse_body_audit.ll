; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fuse_body_audit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fuse_body_audit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_ticket = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.fuse_read_in = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@FUSE_COMPAT_ENTRY_OUT_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"FUSE: a handler has been intalled for FUSE_FORGET\00", align 1
@FUSE_COMPAT_ATTR_OUT_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@FUSE_COMPAT_STATFS_SIZE = common dso_local global i64 0, align 8
@FUSE_COMPAT_INIT_OUT_SIZE = common dso_local global i64 0, align 8
@FUSE_COMPAT_22_INIT_OUT_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"FUSE: opcodes out of sync (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_ticket*, i64)* @fuse_body_audit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_body_audit(%struct.fuse_ticket* %0, i64 %1) #0 {
  %3 = alloca %struct.fuse_ticket*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fuse_ticket* %0, %struct.fuse_ticket** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %8 = call i32 @fticket_opcode(%struct.fuse_ticket* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %320 [
    i32 161, label %10
    i32 150, label %18
    i32 148, label %18
    i32 147, label %18
    i32 146, label %18
    i32 130, label %18
    i32 157, label %42
    i32 154, label %44
    i32 135, label %44
    i32 141, label %68
    i32 129, label %77
    i32 136, label %85
    i32 137, label %93
    i32 145, label %101
    i32 143, label %109
    i32 128, label %126
    i32 131, label %134
    i32 140, label %158
    i32 156, label %166
    i32 132, label %174
    i32 152, label %182
    i32 149, label %182
    i32 138, label %183
    i32 158, label %191
    i32 151, label %199
    i32 144, label %214
    i32 142, label %222
    i32 139, label %239
    i32 155, label %247
    i32 153, label %255
    i32 134, label %263
    i32 133, label %271
    i32 162, label %279
    i32 160, label %287
    i32 159, label %312
  ]

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @EINVAL, align 4
  br label %16

16:                                               ; preds = %14, %13
  %17 = phi i32 [ 0, %13 ], [ %15, %14 ]
  store i32 %17, i32* %5, align 4
  br label %323

18:                                               ; preds = %2, %2, %2, %2, %2
  %19 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %20 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @fuse_libabi_geq(i32 %21, i32 7, i32 9)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load i64, i64* %4, align 8
  %26 = icmp eq i64 %25, 4
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  br label %30

30:                                               ; preds = %28, %27
  %31 = phi i32 [ 0, %27 ], [ %29, %28 ]
  store i32 %31, i32* %5, align 4
  br label %41

32:                                               ; preds = %18
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @FUSE_COMPAT_ENTRY_OUT_SIZE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  br label %39

39:                                               ; preds = %37, %36
  %40 = phi i32 [ 0, %36 ], [ %38, %37 ]
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %30
  br label %323

42:                                               ; preds = %2
  %43 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %323

44:                                               ; preds = %2, %2
  %45 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %46 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @fuse_libabi_geq(i32 %47, i32 7, i32 9)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load i64, i64* %4, align 8
  %52 = icmp eq i64 %51, 4
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @EINVAL, align 4
  br label %56

56:                                               ; preds = %54, %53
  %57 = phi i32 [ 0, %53 ], [ %55, %54 ]
  store i32 %57, i32* %5, align 4
  br label %67

58:                                               ; preds = %44
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @FUSE_COMPAT_ATTR_OUT_SIZE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @EINVAL, align 4
  br label %65

65:                                               ; preds = %63, %62
  %66 = phi i32 [ 0, %62 ], [ %64, %63 ]
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %56
  br label %323

68:                                               ; preds = %2
  %69 = load i64, i64* @PAGE_SIZE, align 8
  %70 = load i64, i64* %4, align 8
  %71 = icmp uge i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @EINVAL, align 4
  br label %75

75:                                               ; preds = %73, %72
  %76 = phi i32 [ 0, %72 ], [ %74, %73 ]
  store i32 %76, i32* %5, align 4
  br label %323

77:                                               ; preds = %2
  %78 = load i64, i64* %4, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %83

81:                                               ; preds = %77
  %82 = load i32, i32* @EINVAL, align 4
  br label %83

83:                                               ; preds = %81, %80
  %84 = phi i32 [ 0, %80 ], [ %82, %81 ]
  store i32 %84, i32* %5, align 4
  br label %323

85:                                               ; preds = %2
  %86 = load i64, i64* %4, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %91

89:                                               ; preds = %85
  %90 = load i32, i32* @EINVAL, align 4
  br label %91

91:                                               ; preds = %89, %88
  %92 = phi i32 [ 0, %88 ], [ %90, %89 ]
  store i32 %92, i32* %5, align 4
  br label %323

93:                                               ; preds = %2
  %94 = load i64, i64* %4, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %99

97:                                               ; preds = %93
  %98 = load i32, i32* @EINVAL, align 4
  br label %99

99:                                               ; preds = %97, %96
  %100 = phi i32 [ 0, %96 ], [ %98, %97 ]
  store i32 %100, i32* %5, align 4
  br label %323

101:                                              ; preds = %2
  %102 = load i64, i64* %4, align 8
  %103 = icmp eq i64 %102, 4
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %107

105:                                              ; preds = %101
  %106 = load i32, i32* @EINVAL, align 4
  br label %107

107:                                              ; preds = %105, %104
  %108 = phi i32 [ 0, %104 ], [ %106, %105 ]
  store i32 %108, i32* %5, align 4
  br label %323

109:                                              ; preds = %2
  %110 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %111 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i8*
  %115 = getelementptr inbounds i8, i8* %114, i64 4
  %116 = bitcast i8* %115 to %struct.fuse_read_in*
  %117 = getelementptr inbounds %struct.fuse_read_in, %struct.fuse_read_in* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %4, align 8
  %120 = icmp uge i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %109
  br label %124

122:                                              ; preds = %109
  %123 = load i32, i32* @EINVAL, align 4
  br label %124

124:                                              ; preds = %122, %121
  %125 = phi i32 [ 0, %121 ], [ %123, %122 ]
  store i32 %125, i32* %5, align 4
  br label %323

126:                                              ; preds = %2
  %127 = load i64, i64* %4, align 8
  %128 = icmp eq i64 %127, 4
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %132

130:                                              ; preds = %126
  %131 = load i32, i32* @EINVAL, align 4
  br label %132

132:                                              ; preds = %130, %129
  %133 = phi i32 [ 0, %129 ], [ %131, %130 ]
  store i32 %133, i32* %5, align 4
  br label %323

134:                                              ; preds = %2
  %135 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %136 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @fuse_libabi_geq(i32 %137, i32 7, i32 4)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %134
  %141 = load i64, i64* %4, align 8
  %142 = icmp eq i64 %141, 4
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  br label %146

144:                                              ; preds = %140
  %145 = load i32, i32* @EINVAL, align 4
  br label %146

146:                                              ; preds = %144, %143
  %147 = phi i32 [ 0, %143 ], [ %145, %144 ]
  store i32 %147, i32* %5, align 4
  br label %157

148:                                              ; preds = %134
  %149 = load i64, i64* %4, align 8
  %150 = load i64, i64* @FUSE_COMPAT_STATFS_SIZE, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  br label %155

153:                                              ; preds = %148
  %154 = load i32, i32* @EINVAL, align 4
  br label %155

155:                                              ; preds = %153, %152
  %156 = phi i32 [ 0, %152 ], [ %154, %153 ]
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %155, %146
  br label %323

158:                                              ; preds = %2
  %159 = load i64, i64* %4, align 8
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  br label %164

162:                                              ; preds = %158
  %163 = load i32, i32* @EINVAL, align 4
  br label %164

164:                                              ; preds = %162, %161
  %165 = phi i32 [ 0, %161 ], [ %163, %162 ]
  store i32 %165, i32* %5, align 4
  br label %323

166:                                              ; preds = %2
  %167 = load i64, i64* %4, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  br label %172

170:                                              ; preds = %166
  %171 = load i32, i32* @EINVAL, align 4
  br label %172

172:                                              ; preds = %170, %169
  %173 = phi i32 [ 0, %169 ], [ %171, %170 ]
  store i32 %173, i32* %5, align 4
  br label %323

174:                                              ; preds = %2
  %175 = load i64, i64* %4, align 8
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  br label %180

178:                                              ; preds = %174
  %179 = load i32, i32* @EINVAL, align 4
  br label %180

180:                                              ; preds = %178, %177
  %181 = phi i32 [ 0, %177 ], [ %179, %178 ]
  store i32 %181, i32* %5, align 4
  br label %323

182:                                              ; preds = %2, %2
  store i32 0, i32* %5, align 4
  br label %323

183:                                              ; preds = %2
  %184 = load i64, i64* %4, align 8
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  br label %189

187:                                              ; preds = %183
  %188 = load i32, i32* @EINVAL, align 4
  br label %189

189:                                              ; preds = %187, %186
  %190 = phi i32 [ 0, %186 ], [ %188, %187 ]
  store i32 %190, i32* %5, align 4
  br label %323

191:                                              ; preds = %2
  %192 = load i64, i64* %4, align 8
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  br label %197

195:                                              ; preds = %191
  %196 = load i32, i32* @EINVAL, align 4
  br label %197

197:                                              ; preds = %195, %194
  %198 = phi i32 [ 0, %194 ], [ %196, %195 ]
  store i32 %198, i32* %5, align 4
  br label %323

199:                                              ; preds = %2
  %200 = load i64, i64* %4, align 8
  %201 = icmp eq i64 %200, 4
  br i1 %201, label %210, label %202

202:                                              ; preds = %199
  %203 = load i64, i64* %4, align 8
  %204 = load i64, i64* @FUSE_COMPAT_INIT_OUT_SIZE, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %210, label %206

206:                                              ; preds = %202
  %207 = load i64, i64* %4, align 8
  %208 = load i64, i64* @FUSE_COMPAT_22_INIT_OUT_SIZE, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %206, %202, %199
  store i32 0, i32* %5, align 4
  br label %213

211:                                              ; preds = %206
  %212 = load i32, i32* @EINVAL, align 4
  store i32 %212, i32* %5, align 4
  br label %213

213:                                              ; preds = %211, %210
  br label %323

214:                                              ; preds = %2
  %215 = load i64, i64* %4, align 8
  %216 = icmp eq i64 %215, 4
  br i1 %216, label %217, label %218

217:                                              ; preds = %214
  br label %220

218:                                              ; preds = %214
  %219 = load i32, i32* @EINVAL, align 4
  br label %220

220:                                              ; preds = %218, %217
  %221 = phi i32 [ 0, %217 ], [ %219, %218 ]
  store i32 %221, i32* %5, align 4
  br label %323

222:                                              ; preds = %2
  %223 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %224 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = inttoptr i64 %226 to i8*
  %228 = getelementptr inbounds i8, i8* %227, i64 4
  %229 = bitcast i8* %228 to %struct.fuse_read_in*
  %230 = getelementptr inbounds %struct.fuse_read_in, %struct.fuse_read_in* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* %4, align 8
  %233 = icmp uge i64 %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %222
  br label %237

235:                                              ; preds = %222
  %236 = load i32, i32* @EINVAL, align 4
  br label %237

237:                                              ; preds = %235, %234
  %238 = phi i32 [ 0, %234 ], [ %236, %235 ]
  store i32 %238, i32* %5, align 4
  br label %323

239:                                              ; preds = %2
  %240 = load i64, i64* %4, align 8
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %239
  br label %245

243:                                              ; preds = %239
  %244 = load i32, i32* @EINVAL, align 4
  br label %245

245:                                              ; preds = %243, %242
  %246 = phi i32 [ 0, %242 ], [ %244, %243 ]
  store i32 %246, i32* %5, align 4
  br label %323

247:                                              ; preds = %2
  %248 = load i64, i64* %4, align 8
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %247
  br label %253

251:                                              ; preds = %247
  %252 = load i32, i32* @EINVAL, align 4
  br label %253

253:                                              ; preds = %251, %250
  %254 = phi i32 [ 0, %250 ], [ %252, %251 ]
  store i32 %254, i32* %5, align 4
  br label %323

255:                                              ; preds = %2
  %256 = load i64, i64* %4, align 8
  %257 = icmp eq i64 %256, 4
  br i1 %257, label %258, label %259

258:                                              ; preds = %255
  br label %261

259:                                              ; preds = %255
  %260 = load i32, i32* @EINVAL, align 4
  br label %261

261:                                              ; preds = %259, %258
  %262 = phi i32 [ 0, %258 ], [ %260, %259 ]
  store i32 %262, i32* %5, align 4
  br label %323

263:                                              ; preds = %2
  %264 = load i64, i64* %4, align 8
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %263
  br label %269

267:                                              ; preds = %263
  %268 = load i32, i32* @EINVAL, align 4
  br label %269

269:                                              ; preds = %267, %266
  %270 = phi i32 [ 0, %266 ], [ %268, %267 ]
  store i32 %270, i32* %5, align 4
  br label %323

271:                                              ; preds = %2
  %272 = load i64, i64* %4, align 8
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %271
  br label %277

275:                                              ; preds = %271
  %276 = load i32, i32* @EINVAL, align 4
  br label %277

277:                                              ; preds = %275, %274
  %278 = phi i32 [ 0, %274 ], [ %276, %275 ]
  store i32 %278, i32* %5, align 4
  br label %323

279:                                              ; preds = %2
  %280 = load i64, i64* %4, align 8
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %279
  br label %285

283:                                              ; preds = %279
  %284 = load i32, i32* @EINVAL, align 4
  br label %285

285:                                              ; preds = %283, %282
  %286 = phi i32 [ 0, %282 ], [ %284, %283 ]
  store i32 %286, i32* %5, align 4
  br label %323

287:                                              ; preds = %2
  %288 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %289 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @fuse_libabi_geq(i32 %290, i32 7, i32 9)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %301

293:                                              ; preds = %287
  %294 = load i64, i64* %4, align 8
  %295 = icmp eq i64 %294, 8
  br i1 %295, label %296, label %297

296:                                              ; preds = %293
  br label %299

297:                                              ; preds = %293
  %298 = load i32, i32* @EINVAL, align 4
  br label %299

299:                                              ; preds = %297, %296
  %300 = phi i32 [ 0, %296 ], [ %298, %297 ]
  store i32 %300, i32* %5, align 4
  br label %311

301:                                              ; preds = %287
  %302 = load i64, i64* %4, align 8
  %303 = load i64, i64* @FUSE_COMPAT_ENTRY_OUT_SIZE, align 8
  %304 = add i64 %303, 4
  %305 = icmp eq i64 %302, %304
  br i1 %305, label %306, label %307

306:                                              ; preds = %301
  br label %309

307:                                              ; preds = %301
  %308 = load i32, i32* @EINVAL, align 4
  br label %309

309:                                              ; preds = %307, %306
  %310 = phi i32 [ 0, %306 ], [ %308, %307 ]
  store i32 %310, i32* %5, align 4
  br label %311

311:                                              ; preds = %309, %299
  br label %323

312:                                              ; preds = %2
  %313 = load i64, i64* %4, align 8
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %312
  br label %318

316:                                              ; preds = %312
  %317 = load i32, i32* @EINVAL, align 4
  br label %318

318:                                              ; preds = %316, %315
  %319 = phi i32 [ 0, %315 ], [ %317, %316 ]
  store i32 %319, i32* %5, align 4
  br label %323

320:                                              ; preds = %2
  %321 = load i32, i32* %6, align 4
  %322 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %321)
  br label %323

323:                                              ; preds = %320, %318, %311, %285, %277, %269, %261, %253, %245, %237, %220, %213, %197, %189, %182, %180, %172, %164, %157, %132, %124, %107, %99, %91, %83, %75, %67, %42, %41, %16
  %324 = load i32, i32* %5, align 4
  ret i32 %324
}

declare dso_local i32 @fticket_opcode(%struct.fuse_ticket*) #1

declare dso_local i32 @fuse_libabi_geq(i32, i32, i32) #1

declare dso_local i32 @panic(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
