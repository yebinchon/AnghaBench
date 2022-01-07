; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vaccess.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vaccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i64 }

@VEXEC = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@VREAD = common dso_local global i32 0, align 4
@VADMIN = common dso_local global i32 0, align 4
@VAPPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid bit in accmode\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"VAPPEND without VWRITE\00", align 1
@S_IXUSR = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@VDIR = common dso_local global i32 0, align 4
@PRIV_VFS_LOOKUP = common dso_local global i32 0, align 4
@PRIV_VFS_EXEC = common dso_local global i32 0, align 4
@PRIV_VFS_READ = common dso_local global i32 0, align 4
@PRIV_VFS_WRITE = common dso_local global i32 0, align 4
@PRIV_VFS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vaccess(i32 %0, i32 %1, i64 %2, i32 %3, i32 %4, %struct.ucred* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ucred*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.ucred* %5, %struct.ucred** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* @VEXEC, align 4
  %20 = load i32, i32* @VWRITE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @VREAD, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @VADMIN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @VAPPEND, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %18, %28
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @KASSERT(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @VAPPEND, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %7
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @VWRITE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %37, %7
  %43 = phi i1 [ true, %7 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @KASSERT(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32*, i32** %15, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32*, i32** %15, align 8
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %48, %42
  store i32 0, i32* %16, align 4
  %51 = load %struct.ucred*, %struct.ucred** %14, align 8
  %52 = getelementptr inbounds %struct.ucred, %struct.ucred* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %96

56:                                               ; preds = %50
  %57 = load i32, i32* @VADMIN, align 4
  %58 = load i32, i32* %16, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @S_IXUSR, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load i32, i32* @VEXEC, align 4
  %66 = load i32, i32* %16, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %16, align 4
  br label %68

68:                                               ; preds = %64, %56
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @S_IRUSR, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @VREAD, align 4
  %75 = load i32, i32* %16, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %16, align 4
  br label %77

77:                                               ; preds = %73, %68
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @S_IWUSR, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i32, i32* @VWRITE, align 4
  %84 = load i32, i32* @VAPPEND, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %16, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %16, align 4
  br label %88

88:                                               ; preds = %82, %77
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %16, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* %13, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store i32 0, i32* %8, align 4
  br label %312

95:                                               ; preds = %88
  br label %175

96:                                               ; preds = %50
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.ucred*, %struct.ucred** %14, align 8
  %99 = call i64 @groupmember(i32 %97, %struct.ucred* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %138

101:                                              ; preds = %96
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @S_IXGRP, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i32, i32* @VEXEC, align 4
  %108 = load i32, i32* %16, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %16, align 4
  br label %110

110:                                              ; preds = %106, %101
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @S_IRGRP, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i32, i32* @VREAD, align 4
  %117 = load i32, i32* %16, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %16, align 4
  br label %119

119:                                              ; preds = %115, %110
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @S_IWGRP, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load i32, i32* @VWRITE, align 4
  %126 = load i32, i32* @VAPPEND, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* %16, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %16, align 4
  br label %130

130:                                              ; preds = %124, %119
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %16, align 4
  %133 = and i32 %131, %132
  %134 = load i32, i32* %13, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  store i32 0, i32* %8, align 4
  br label %312

137:                                              ; preds = %130
  br label %175

138:                                              ; preds = %96
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @S_IXOTH, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load i32, i32* @VEXEC, align 4
  %145 = load i32, i32* %16, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %16, align 4
  br label %147

147:                                              ; preds = %143, %138
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @S_IROTH, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load i32, i32* @VREAD, align 4
  %154 = load i32, i32* %16, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %16, align 4
  br label %156

156:                                              ; preds = %152, %147
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* @S_IWOTH, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %156
  %162 = load i32, i32* @VWRITE, align 4
  %163 = load i32, i32* @VAPPEND, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* %16, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %16, align 4
  br label %167

167:                                              ; preds = %161, %156
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* %16, align 4
  %170 = and i32 %168, %169
  %171 = load i32, i32* %13, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  store i32 0, i32* %8, align 4
  br label %312

174:                                              ; preds = %167
  br label %175

175:                                              ; preds = %174, %137, %95
  store i32 0, i32* %17, align 4
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* @VDIR, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %199

179:                                              ; preds = %175
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* @VEXEC, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %198

184:                                              ; preds = %179
  %185 = load i32, i32* %16, align 4
  %186 = load i32, i32* @VEXEC, align 4
  %187 = and i32 %185, %186
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %184
  %190 = load %struct.ucred*, %struct.ucred** %14, align 8
  %191 = load i32, i32* @PRIV_VFS_LOOKUP, align 4
  %192 = call i32 @priv_check_cred(%struct.ucred* %190, i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %189
  %195 = load i32, i32* @VEXEC, align 4
  %196 = load i32, i32* %17, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %17, align 4
  br label %198

198:                                              ; preds = %194, %189, %184, %179
  br label %228

199:                                              ; preds = %175
  %200 = load i32, i32* %13, align 4
  %201 = load i32, i32* @VEXEC, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %227

204:                                              ; preds = %199
  %205 = load i32, i32* %16, align 4
  %206 = load i32, i32* @VEXEC, align 4
  %207 = and i32 %205, %206
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %227

209:                                              ; preds = %204
  %210 = load i32, i32* %10, align 4
  %211 = load i32, i32* @S_IXUSR, align 4
  %212 = load i32, i32* @S_IXGRP, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @S_IXOTH, align 4
  %215 = or i32 %213, %214
  %216 = and i32 %210, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %209
  %219 = load %struct.ucred*, %struct.ucred** %14, align 8
  %220 = load i32, i32* @PRIV_VFS_EXEC, align 4
  %221 = call i32 @priv_check_cred(%struct.ucred* %219, i32 %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %227, label %223

223:                                              ; preds = %218
  %224 = load i32, i32* @VEXEC, align 4
  %225 = load i32, i32* %17, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %17, align 4
  br label %227

227:                                              ; preds = %223, %218, %209, %204, %199
  br label %228

228:                                              ; preds = %227, %198
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* @VREAD, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %247

233:                                              ; preds = %228
  %234 = load i32, i32* %16, align 4
  %235 = load i32, i32* @VREAD, align 4
  %236 = and i32 %234, %235
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %247

238:                                              ; preds = %233
  %239 = load %struct.ucred*, %struct.ucred** %14, align 8
  %240 = load i32, i32* @PRIV_VFS_READ, align 4
  %241 = call i32 @priv_check_cred(%struct.ucred* %239, i32 %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %247, label %243

243:                                              ; preds = %238
  %244 = load i32, i32* @VREAD, align 4
  %245 = load i32, i32* %17, align 4
  %246 = or i32 %245, %244
  store i32 %246, i32* %17, align 4
  br label %247

247:                                              ; preds = %243, %238, %233, %228
  %248 = load i32, i32* %13, align 4
  %249 = load i32, i32* @VWRITE, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = load i32, i32* %16, align 4
  %254 = load i32, i32* @VWRITE, align 4
  %255 = and i32 %253, %254
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %268

257:                                              ; preds = %252
  %258 = load %struct.ucred*, %struct.ucred** %14, align 8
  %259 = load i32, i32* @PRIV_VFS_WRITE, align 4
  %260 = call i32 @priv_check_cred(%struct.ucred* %258, i32 %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %268, label %262

262:                                              ; preds = %257
  %263 = load i32, i32* @VWRITE, align 4
  %264 = load i32, i32* @VAPPEND, align 4
  %265 = or i32 %263, %264
  %266 = load i32, i32* %17, align 4
  %267 = or i32 %266, %265
  store i32 %267, i32* %17, align 4
  br label %268

268:                                              ; preds = %262, %257, %252, %247
  %269 = load i32, i32* %13, align 4
  %270 = load i32, i32* @VADMIN, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %287

273:                                              ; preds = %268
  %274 = load i32, i32* %16, align 4
  %275 = load i32, i32* @VADMIN, align 4
  %276 = and i32 %274, %275
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %287

278:                                              ; preds = %273
  %279 = load %struct.ucred*, %struct.ucred** %14, align 8
  %280 = load i32, i32* @PRIV_VFS_ADMIN, align 4
  %281 = call i32 @priv_check_cred(%struct.ucred* %279, i32 %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %287, label %283

283:                                              ; preds = %278
  %284 = load i32, i32* @VADMIN, align 4
  %285 = load i32, i32* %17, align 4
  %286 = or i32 %285, %284
  store i32 %286, i32* %17, align 4
  br label %287

287:                                              ; preds = %283, %278, %273, %268
  %288 = load i32, i32* %13, align 4
  %289 = load i32, i32* %17, align 4
  %290 = load i32, i32* %16, align 4
  %291 = or i32 %289, %290
  %292 = and i32 %288, %291
  %293 = load i32, i32* %13, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %301

295:                                              ; preds = %287
  %296 = load i32*, i32** %15, align 8
  %297 = icmp ne i32* %296, null
  br i1 %297, label %298, label %300

298:                                              ; preds = %295
  %299 = load i32*, i32** %15, align 8
  store i32 1, i32* %299, align 4
  br label %300

300:                                              ; preds = %298, %295
  store i32 0, i32* %8, align 4
  br label %312

301:                                              ; preds = %287
  %302 = load i32, i32* %13, align 4
  %303 = load i32, i32* @VADMIN, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %301
  %307 = load i32, i32* @EPERM, align 4
  br label %310

308:                                              ; preds = %301
  %309 = load i32, i32* @EACCES, align 4
  br label %310

310:                                              ; preds = %308, %306
  %311 = phi i32 [ %307, %306 ], [ %309, %308 ]
  store i32 %311, i32* %8, align 4
  br label %312

312:                                              ; preds = %310, %300, %173, %136, %94
  %313 = load i32, i32* %8, align 4
  ret i32 %313
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @groupmember(i32, %struct.ucred*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
