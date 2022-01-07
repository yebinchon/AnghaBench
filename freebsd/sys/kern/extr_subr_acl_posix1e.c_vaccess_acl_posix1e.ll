; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_acl_posix1e.c_vaccess_acl_posix1e.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_acl_posix1e.c_vaccess_acl_posix1e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl = type { i32, %struct.acl_entry* }
%struct.acl_entry = type { i32, i32, i32 }
%struct.ucred = type { i32 }

@VEXEC = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@VREAD = common dso_local global i32 0, align 4
@VADMIN = common dso_local global i32 0, align 4
@VAPPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid bit in accmode\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"VAPPEND without VWRITE\00", align 1
@VDIR = common dso_local global i32 0, align 4
@PRIV_VFS_LOOKUP = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@PRIV_VFS_EXEC = common dso_local global i32 0, align 4
@PRIV_VFS_READ = common dso_local global i32 0, align 4
@PRIV_VFS_WRITE = common dso_local global i32 0, align 4
@PRIV_VFS_ADMIN = common dso_local global i32 0, align 4
@ACL_EXECUTE = common dso_local global i32 0, align 4
@ACL_READ = common dso_local global i32 0, align 4
@ACL_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"vaccess_acl_posix1e: ACL_OTHER missing\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vaccess_acl_posix1e(i32 %0, i32 %1, i32 %2, %struct.acl* %3, i32 %4, %struct.ucred* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.acl*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ucred*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.acl_entry*, align 8
  %17 = alloca %struct.acl_entry*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.acl* %3, %struct.acl** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.ucred* %5, %struct.ucred** %14, align 8
  store i32* %6, i32** %15, align 8
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @VEXEC, align 4
  %25 = load i32, i32* @VWRITE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @VREAD, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @VADMIN, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @VAPPEND, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = and i32 %23, %33
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @KASSERT(i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @VAPPEND, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %7
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @VWRITE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %42, %7
  %48 = phi i1 [ true, %7 ], [ %46, %42 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @KASSERT(i32 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32*, i32** %15, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32*, i32** %15, align 8
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %53, %47
  store i32 0, i32* %19, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @VDIR, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @VEXEC, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load %struct.ucred*, %struct.ucred** %14, align 8
  %66 = load i32, i32* @PRIV_VFS_LOOKUP, align 4
  %67 = call i32 @priv_check_cred(%struct.ucred* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @VEXEC, align 4
  %71 = load i32, i32* %19, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %19, align 4
  br label %73

73:                                               ; preds = %69, %64, %59
  br label %99

74:                                               ; preds = %55
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @VEXEC, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %74
  %80 = load %struct.acl*, %struct.acl** %12, align 8
  %81 = call i32 @acl_posix1e_acl_to_mode(%struct.acl* %80)
  %82 = load i32, i32* @S_IXUSR, align 4
  %83 = load i32, i32* @S_IXGRP, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @S_IXOTH, align 4
  %86 = or i32 %84, %85
  %87 = and i32 %81, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %79
  %90 = load %struct.ucred*, %struct.ucred** %14, align 8
  %91 = load i32, i32* @PRIV_VFS_EXEC, align 4
  %92 = call i32 @priv_check_cred(%struct.ucred* %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* @VEXEC, align 4
  %96 = load i32, i32* %19, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %19, align 4
  br label %98

98:                                               ; preds = %94, %89, %79, %74
  br label %99

99:                                               ; preds = %98, %73
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @VREAD, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load %struct.ucred*, %struct.ucred** %14, align 8
  %106 = load i32, i32* @PRIV_VFS_READ, align 4
  %107 = call i32 @priv_check_cred(%struct.ucred* %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* @VREAD, align 4
  %111 = load i32, i32* %19, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %19, align 4
  br label %113

113:                                              ; preds = %109, %104, %99
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* @VWRITE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* @VAPPEND, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %118, %113
  %124 = load %struct.ucred*, %struct.ucred** %14, align 8
  %125 = load i32, i32* @PRIV_VFS_WRITE, align 4
  %126 = call i32 @priv_check_cred(%struct.ucred* %124, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %123
  %129 = load i32, i32* @VWRITE, align 4
  %130 = load i32, i32* @VAPPEND, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* %19, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %19, align 4
  br label %134

134:                                              ; preds = %128, %123, %118
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* @VADMIN, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = load %struct.ucred*, %struct.ucred** %14, align 8
  %141 = load i32, i32* @PRIV_VFS_ADMIN, align 4
  %142 = call i32 @priv_check_cred(%struct.ucred* %140, i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %139
  %145 = load i32, i32* @VADMIN, align 4
  %146 = load i32, i32* %19, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %19, align 4
  br label %148

148:                                              ; preds = %144, %139, %134
  store %struct.acl_entry* null, %struct.acl_entry** %16, align 8
  store %struct.acl_entry* null, %struct.acl_entry** %17, align 8
  store i32 0, i32* %22, align 4
  br label %149

149:                                              ; preds = %262, %148
  %150 = load i32, i32* %22, align 4
  %151 = load %struct.acl*, %struct.acl** %12, align 8
  %152 = getelementptr inbounds %struct.acl, %struct.acl* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %265

155:                                              ; preds = %149
  %156 = load %struct.acl*, %struct.acl** %12, align 8
  %157 = getelementptr inbounds %struct.acl, %struct.acl* %156, i32 0, i32 1
  %158 = load %struct.acl_entry*, %struct.acl_entry** %157, align 8
  %159 = load i32, i32* %22, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %158, i64 %160
  %162 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  switch i32 %163, label %260 [
    i32 128, label %164
    i32 131, label %246
    i32 130, label %253
  ]

164:                                              ; preds = %155
  %165 = load i32, i32* %10, align 4
  %166 = load %struct.ucred*, %struct.ucred** %14, align 8
  %167 = getelementptr inbounds %struct.ucred, %struct.ucred* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %165, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  br label %261

171:                                              ; preds = %164
  store i32 0, i32* %18, align 4
  %172 = load i32, i32* @VADMIN, align 4
  %173 = load i32, i32* %18, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %18, align 4
  %175 = load %struct.acl*, %struct.acl** %12, align 8
  %176 = getelementptr inbounds %struct.acl, %struct.acl* %175, i32 0, i32 1
  %177 = load %struct.acl_entry*, %struct.acl_entry** %176, align 8
  %178 = load i32, i32* %22, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %177, i64 %179
  %181 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @ACL_EXECUTE, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %171
  %187 = load i32, i32* @VEXEC, align 4
  %188 = load i32, i32* %18, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %18, align 4
  br label %190

190:                                              ; preds = %186, %171
  %191 = load %struct.acl*, %struct.acl** %12, align 8
  %192 = getelementptr inbounds %struct.acl, %struct.acl* %191, i32 0, i32 1
  %193 = load %struct.acl_entry*, %struct.acl_entry** %192, align 8
  %194 = load i32, i32* %22, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %193, i64 %195
  %197 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @ACL_READ, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %190
  %203 = load i32, i32* @VREAD, align 4
  %204 = load i32, i32* %18, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %18, align 4
  br label %206

206:                                              ; preds = %202, %190
  %207 = load %struct.acl*, %struct.acl** %12, align 8
  %208 = getelementptr inbounds %struct.acl, %struct.acl* %207, i32 0, i32 1
  %209 = load %struct.acl_entry*, %struct.acl_entry** %208, align 8
  %210 = load i32, i32* %22, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %209, i64 %211
  %213 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @ACL_WRITE, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %206
  %219 = load i32, i32* @VWRITE, align 4
  %220 = load i32, i32* @VAPPEND, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* %18, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %18, align 4
  br label %224

224:                                              ; preds = %218, %206
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* %18, align 4
  %227 = and i32 %225, %226
  %228 = load i32, i32* %13, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %224
  store i32 0, i32* %8, align 4
  br label %837

231:                                              ; preds = %224
  %232 = load i32, i32* %13, align 4
  %233 = load i32, i32* %18, align 4
  %234 = load i32, i32* %19, align 4
  %235 = or i32 %233, %234
  %236 = and i32 %232, %235
  %237 = load i32, i32* %13, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %245

239:                                              ; preds = %231
  %240 = load i32*, i32** %15, align 8
  %241 = icmp ne i32* %240, null
  br i1 %241, label %242, label %244

242:                                              ; preds = %239
  %243 = load i32*, i32** %15, align 8
  store i32 1, i32* %243, align 4
  br label %244

244:                                              ; preds = %242, %239
  store i32 0, i32* %8, align 4
  br label %837

245:                                              ; preds = %231
  br label %826

246:                                              ; preds = %155
  %247 = load %struct.acl*, %struct.acl** %12, align 8
  %248 = getelementptr inbounds %struct.acl, %struct.acl* %247, i32 0, i32 1
  %249 = load %struct.acl_entry*, %struct.acl_entry** %248, align 8
  %250 = load i32, i32* %22, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %249, i64 %251
  store %struct.acl_entry* %252, %struct.acl_entry** %17, align 8
  br label %261

253:                                              ; preds = %155
  %254 = load %struct.acl*, %struct.acl** %12, align 8
  %255 = getelementptr inbounds %struct.acl, %struct.acl* %254, i32 0, i32 1
  %256 = load %struct.acl_entry*, %struct.acl_entry** %255, align 8
  %257 = load i32, i32* %22, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %256, i64 %258
  store %struct.acl_entry* %259, %struct.acl_entry** %16, align 8
  br label %261

260:                                              ; preds = %155
  br label %261

261:                                              ; preds = %260, %253, %246, %170
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %22, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %22, align 4
  br label %149

265:                                              ; preds = %149
  %266 = load %struct.acl_entry*, %struct.acl_entry** %16, align 8
  %267 = icmp eq %struct.acl_entry* %266, null
  br i1 %267, label %268, label %271

268:                                              ; preds = %265
  %269 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %270 = load i32, i32* @EPERM, align 4
  store i32 %270, i32* %8, align 4
  br label %837

271:                                              ; preds = %265
  %272 = load %struct.acl_entry*, %struct.acl_entry** %17, align 8
  %273 = icmp ne %struct.acl_entry* %272, null
  br i1 %273, label %274, label %310

274:                                              ; preds = %271
  store i32 0, i32* %20, align 4
  %275 = load %struct.acl_entry*, %struct.acl_entry** %17, align 8
  %276 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @ACL_EXECUTE, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %274
  %282 = load i32, i32* @VEXEC, align 4
  %283 = load i32, i32* %20, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %20, align 4
  br label %285

285:                                              ; preds = %281, %274
  %286 = load %struct.acl_entry*, %struct.acl_entry** %17, align 8
  %287 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @ACL_READ, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %285
  %293 = load i32, i32* @VREAD, align 4
  %294 = load i32, i32* %20, align 4
  %295 = or i32 %294, %293
  store i32 %295, i32* %20, align 4
  br label %296

296:                                              ; preds = %292, %285
  %297 = load %struct.acl_entry*, %struct.acl_entry** %17, align 8
  %298 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @ACL_WRITE, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %296
  %304 = load i32, i32* @VWRITE, align 4
  %305 = load i32, i32* @VAPPEND, align 4
  %306 = or i32 %304, %305
  %307 = load i32, i32* %20, align 4
  %308 = or i32 %307, %306
  store i32 %308, i32* %20, align 4
  br label %309

309:                                              ; preds = %303, %296
  br label %318

310:                                              ; preds = %271
  %311 = load i32, i32* @VEXEC, align 4
  %312 = load i32, i32* @VREAD, align 4
  %313 = or i32 %311, %312
  %314 = load i32, i32* @VWRITE, align 4
  %315 = or i32 %313, %314
  %316 = load i32, i32* @VAPPEND, align 4
  %317 = or i32 %315, %316
  store i32 %317, i32* %20, align 4
  br label %318

318:                                              ; preds = %310, %309
  store i32 0, i32* %22, align 4
  br label %319

319:                                              ; preds = %424, %318
  %320 = load i32, i32* %22, align 4
  %321 = load %struct.acl*, %struct.acl** %12, align 8
  %322 = getelementptr inbounds %struct.acl, %struct.acl* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = icmp slt i32 %320, %323
  br i1 %324, label %325, label %427

325:                                              ; preds = %319
  %326 = load %struct.acl*, %struct.acl** %12, align 8
  %327 = getelementptr inbounds %struct.acl, %struct.acl* %326, i32 0, i32 1
  %328 = load %struct.acl_entry*, %struct.acl_entry** %327, align 8
  %329 = load i32, i32* %22, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %328, i64 %330
  %332 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  switch i32 %333, label %423 [
    i32 129, label %334
  ]

334:                                              ; preds = %325
  %335 = load %struct.acl*, %struct.acl** %12, align 8
  %336 = getelementptr inbounds %struct.acl, %struct.acl* %335, i32 0, i32 1
  %337 = load %struct.acl_entry*, %struct.acl_entry** %336, align 8
  %338 = load i32, i32* %22, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %337, i64 %339
  %341 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.ucred*, %struct.ucred** %14, align 8
  %344 = getelementptr inbounds %struct.ucred, %struct.ucred* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = icmp ne i32 %342, %345
  br i1 %346, label %347, label %348

347:                                              ; preds = %334
  br label %423

348:                                              ; preds = %334
  store i32 0, i32* %18, align 4
  %349 = load %struct.acl*, %struct.acl** %12, align 8
  %350 = getelementptr inbounds %struct.acl, %struct.acl* %349, i32 0, i32 1
  %351 = load %struct.acl_entry*, %struct.acl_entry** %350, align 8
  %352 = load i32, i32* %22, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %351, i64 %353
  %355 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @ACL_EXECUTE, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %364

360:                                              ; preds = %348
  %361 = load i32, i32* @VEXEC, align 4
  %362 = load i32, i32* %18, align 4
  %363 = or i32 %362, %361
  store i32 %363, i32* %18, align 4
  br label %364

364:                                              ; preds = %360, %348
  %365 = load %struct.acl*, %struct.acl** %12, align 8
  %366 = getelementptr inbounds %struct.acl, %struct.acl* %365, i32 0, i32 1
  %367 = load %struct.acl_entry*, %struct.acl_entry** %366, align 8
  %368 = load i32, i32* %22, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %367, i64 %369
  %371 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* @ACL_READ, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %380

376:                                              ; preds = %364
  %377 = load i32, i32* @VREAD, align 4
  %378 = load i32, i32* %18, align 4
  %379 = or i32 %378, %377
  store i32 %379, i32* %18, align 4
  br label %380

380:                                              ; preds = %376, %364
  %381 = load %struct.acl*, %struct.acl** %12, align 8
  %382 = getelementptr inbounds %struct.acl, %struct.acl* %381, i32 0, i32 1
  %383 = load %struct.acl_entry*, %struct.acl_entry** %382, align 8
  %384 = load i32, i32* %22, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %383, i64 %385
  %387 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* @ACL_WRITE, align 4
  %390 = and i32 %388, %389
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %398

392:                                              ; preds = %380
  %393 = load i32, i32* @VWRITE, align 4
  %394 = load i32, i32* @VAPPEND, align 4
  %395 = or i32 %393, %394
  %396 = load i32, i32* %18, align 4
  %397 = or i32 %396, %395
  store i32 %397, i32* %18, align 4
  br label %398

398:                                              ; preds = %392, %380
  %399 = load i32, i32* %20, align 4
  %400 = load i32, i32* %18, align 4
  %401 = and i32 %400, %399
  store i32 %401, i32* %18, align 4
  %402 = load i32, i32* %13, align 4
  %403 = load i32, i32* %18, align 4
  %404 = and i32 %402, %403
  %405 = load i32, i32* %13, align 4
  %406 = icmp eq i32 %404, %405
  br i1 %406, label %407, label %408

407:                                              ; preds = %398
  store i32 0, i32* %8, align 4
  br label %837

408:                                              ; preds = %398
  %409 = load i32, i32* %13, align 4
  %410 = load i32, i32* %18, align 4
  %411 = load i32, i32* %19, align 4
  %412 = or i32 %410, %411
  %413 = and i32 %409, %412
  %414 = load i32, i32* %13, align 4
  %415 = icmp ne i32 %413, %414
  br i1 %415, label %416, label %417

416:                                              ; preds = %408
  br label %826

417:                                              ; preds = %408
  %418 = load i32*, i32** %15, align 8
  %419 = icmp ne i32* %418, null
  br i1 %419, label %420, label %422

420:                                              ; preds = %417
  %421 = load i32*, i32** %15, align 8
  store i32 1, i32* %421, align 4
  br label %422

422:                                              ; preds = %420, %417
  store i32 0, i32* %8, align 4
  br label %837

423:                                              ; preds = %325, %347
  br label %424

424:                                              ; preds = %423
  %425 = load i32, i32* %22, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %22, align 4
  br label %319

427:                                              ; preds = %319
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %428

428:                                              ; preds = %586, %427
  %429 = load i32, i32* %22, align 4
  %430 = load %struct.acl*, %struct.acl** %12, align 8
  %431 = getelementptr inbounds %struct.acl, %struct.acl* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = icmp slt i32 %429, %432
  br i1 %433, label %434, label %589

434:                                              ; preds = %428
  %435 = load %struct.acl*, %struct.acl** %12, align 8
  %436 = getelementptr inbounds %struct.acl, %struct.acl* %435, i32 0, i32 1
  %437 = load %struct.acl_entry*, %struct.acl_entry** %436, align 8
  %438 = load i32, i32* %22, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %437, i64 %439
  %441 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  switch i32 %442, label %584 [
    i32 132, label %443
    i32 133, label %510
  ]

443:                                              ; preds = %434
  %444 = load i32, i32* %11, align 4
  %445 = load %struct.ucred*, %struct.ucred** %14, align 8
  %446 = call i32 @groupmember(i32 %444, %struct.ucred* %445)
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %449, label %448

448:                                              ; preds = %443
  br label %585

449:                                              ; preds = %443
  store i32 0, i32* %18, align 4
  %450 = load %struct.acl*, %struct.acl** %12, align 8
  %451 = getelementptr inbounds %struct.acl, %struct.acl* %450, i32 0, i32 1
  %452 = load %struct.acl_entry*, %struct.acl_entry** %451, align 8
  %453 = load i32, i32* %22, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %452, i64 %454
  %456 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 4
  %458 = load i32, i32* @ACL_EXECUTE, align 4
  %459 = and i32 %457, %458
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %465

461:                                              ; preds = %449
  %462 = load i32, i32* @VEXEC, align 4
  %463 = load i32, i32* %18, align 4
  %464 = or i32 %463, %462
  store i32 %464, i32* %18, align 4
  br label %465

465:                                              ; preds = %461, %449
  %466 = load %struct.acl*, %struct.acl** %12, align 8
  %467 = getelementptr inbounds %struct.acl, %struct.acl* %466, i32 0, i32 1
  %468 = load %struct.acl_entry*, %struct.acl_entry** %467, align 8
  %469 = load i32, i32* %22, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %468, i64 %470
  %472 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 4
  %474 = load i32, i32* @ACL_READ, align 4
  %475 = and i32 %473, %474
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %481

477:                                              ; preds = %465
  %478 = load i32, i32* @VREAD, align 4
  %479 = load i32, i32* %18, align 4
  %480 = or i32 %479, %478
  store i32 %480, i32* %18, align 4
  br label %481

481:                                              ; preds = %477, %465
  %482 = load %struct.acl*, %struct.acl** %12, align 8
  %483 = getelementptr inbounds %struct.acl, %struct.acl* %482, i32 0, i32 1
  %484 = load %struct.acl_entry*, %struct.acl_entry** %483, align 8
  %485 = load i32, i32* %22, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %484, i64 %486
  %488 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %487, i32 0, i32 1
  %489 = load i32, i32* %488, align 4
  %490 = load i32, i32* @ACL_WRITE, align 4
  %491 = and i32 %489, %490
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %499

493:                                              ; preds = %481
  %494 = load i32, i32* @VWRITE, align 4
  %495 = load i32, i32* @VAPPEND, align 4
  %496 = or i32 %494, %495
  %497 = load i32, i32* %18, align 4
  %498 = or i32 %497, %496
  store i32 %498, i32* %18, align 4
  br label %499

499:                                              ; preds = %493, %481
  %500 = load i32, i32* %20, align 4
  %501 = load i32, i32* %18, align 4
  %502 = and i32 %501, %500
  store i32 %502, i32* %18, align 4
  %503 = load i32, i32* %13, align 4
  %504 = load i32, i32* %18, align 4
  %505 = and i32 %503, %504
  %506 = load i32, i32* %13, align 4
  %507 = icmp eq i32 %505, %506
  br i1 %507, label %508, label %509

508:                                              ; preds = %499
  store i32 0, i32* %8, align 4
  br label %837

509:                                              ; preds = %499
  store i32 1, i32* %21, align 4
  br label %585

510:                                              ; preds = %434
  %511 = load %struct.acl*, %struct.acl** %12, align 8
  %512 = getelementptr inbounds %struct.acl, %struct.acl* %511, i32 0, i32 1
  %513 = load %struct.acl_entry*, %struct.acl_entry** %512, align 8
  %514 = load i32, i32* %22, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %513, i64 %515
  %517 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %516, i32 0, i32 2
  %518 = load i32, i32* %517, align 4
  %519 = load %struct.ucred*, %struct.ucred** %14, align 8
  %520 = call i32 @groupmember(i32 %518, %struct.ucred* %519)
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %523, label %522

522:                                              ; preds = %510
  br label %585

523:                                              ; preds = %510
  store i32 0, i32* %18, align 4
  %524 = load %struct.acl*, %struct.acl** %12, align 8
  %525 = getelementptr inbounds %struct.acl, %struct.acl* %524, i32 0, i32 1
  %526 = load %struct.acl_entry*, %struct.acl_entry** %525, align 8
  %527 = load i32, i32* %22, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %526, i64 %528
  %530 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %529, i32 0, i32 1
  %531 = load i32, i32* %530, align 4
  %532 = load i32, i32* @ACL_EXECUTE, align 4
  %533 = and i32 %531, %532
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %539

535:                                              ; preds = %523
  %536 = load i32, i32* @VEXEC, align 4
  %537 = load i32, i32* %18, align 4
  %538 = or i32 %537, %536
  store i32 %538, i32* %18, align 4
  br label %539

539:                                              ; preds = %535, %523
  %540 = load %struct.acl*, %struct.acl** %12, align 8
  %541 = getelementptr inbounds %struct.acl, %struct.acl* %540, i32 0, i32 1
  %542 = load %struct.acl_entry*, %struct.acl_entry** %541, align 8
  %543 = load i32, i32* %22, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %542, i64 %544
  %546 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %545, i32 0, i32 1
  %547 = load i32, i32* %546, align 4
  %548 = load i32, i32* @ACL_READ, align 4
  %549 = and i32 %547, %548
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %555

551:                                              ; preds = %539
  %552 = load i32, i32* @VREAD, align 4
  %553 = load i32, i32* %18, align 4
  %554 = or i32 %553, %552
  store i32 %554, i32* %18, align 4
  br label %555

555:                                              ; preds = %551, %539
  %556 = load %struct.acl*, %struct.acl** %12, align 8
  %557 = getelementptr inbounds %struct.acl, %struct.acl* %556, i32 0, i32 1
  %558 = load %struct.acl_entry*, %struct.acl_entry** %557, align 8
  %559 = load i32, i32* %22, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %558, i64 %560
  %562 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %561, i32 0, i32 1
  %563 = load i32, i32* %562, align 4
  %564 = load i32, i32* @ACL_WRITE, align 4
  %565 = and i32 %563, %564
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %573

567:                                              ; preds = %555
  %568 = load i32, i32* @VWRITE, align 4
  %569 = load i32, i32* @VAPPEND, align 4
  %570 = or i32 %568, %569
  %571 = load i32, i32* %18, align 4
  %572 = or i32 %571, %570
  store i32 %572, i32* %18, align 4
  br label %573

573:                                              ; preds = %567, %555
  %574 = load i32, i32* %20, align 4
  %575 = load i32, i32* %18, align 4
  %576 = and i32 %575, %574
  store i32 %576, i32* %18, align 4
  %577 = load i32, i32* %13, align 4
  %578 = load i32, i32* %18, align 4
  %579 = and i32 %577, %578
  %580 = load i32, i32* %13, align 4
  %581 = icmp eq i32 %579, %580
  br i1 %581, label %582, label %583

582:                                              ; preds = %573
  store i32 0, i32* %8, align 4
  br label %837

583:                                              ; preds = %573
  store i32 1, i32* %21, align 4
  br label %585

584:                                              ; preds = %434
  br label %585

585:                                              ; preds = %584, %583, %522, %509, %448
  br label %586

586:                                              ; preds = %585
  %587 = load i32, i32* %22, align 4
  %588 = add nsw i32 %587, 1
  store i32 %588, i32* %22, align 4
  br label %428

589:                                              ; preds = %428
  %590 = load i32, i32* %21, align 4
  %591 = icmp eq i32 %590, 1
  br i1 %591, label %592, label %769

592:                                              ; preds = %589
  store i32 0, i32* %22, align 4
  br label %593

593:                                              ; preds = %765, %592
  %594 = load i32, i32* %22, align 4
  %595 = load %struct.acl*, %struct.acl** %12, align 8
  %596 = getelementptr inbounds %struct.acl, %struct.acl* %595, i32 0, i32 0
  %597 = load i32, i32* %596, align 8
  %598 = icmp slt i32 %594, %597
  br i1 %598, label %599, label %768

599:                                              ; preds = %593
  %600 = load %struct.acl*, %struct.acl** %12, align 8
  %601 = getelementptr inbounds %struct.acl, %struct.acl* %600, i32 0, i32 1
  %602 = load %struct.acl_entry*, %struct.acl_entry** %601, align 8
  %603 = load i32, i32* %22, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %602, i64 %604
  %606 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %605, i32 0, i32 0
  %607 = load i32, i32* %606, align 4
  switch i32 %607, label %763 [
    i32 132, label %608
    i32 133, label %682
  ]

608:                                              ; preds = %599
  %609 = load i32, i32* %11, align 4
  %610 = load %struct.ucred*, %struct.ucred** %14, align 8
  %611 = call i32 @groupmember(i32 %609, %struct.ucred* %610)
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %614, label %613

613:                                              ; preds = %608
  br label %764

614:                                              ; preds = %608
  store i32 0, i32* %18, align 4
  %615 = load %struct.acl*, %struct.acl** %12, align 8
  %616 = getelementptr inbounds %struct.acl, %struct.acl* %615, i32 0, i32 1
  %617 = load %struct.acl_entry*, %struct.acl_entry** %616, align 8
  %618 = load i32, i32* %22, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %617, i64 %619
  %621 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %620, i32 0, i32 1
  %622 = load i32, i32* %621, align 4
  %623 = load i32, i32* @ACL_EXECUTE, align 4
  %624 = and i32 %622, %623
  %625 = icmp ne i32 %624, 0
  br i1 %625, label %626, label %630

626:                                              ; preds = %614
  %627 = load i32, i32* @VEXEC, align 4
  %628 = load i32, i32* %18, align 4
  %629 = or i32 %628, %627
  store i32 %629, i32* %18, align 4
  br label %630

630:                                              ; preds = %626, %614
  %631 = load %struct.acl*, %struct.acl** %12, align 8
  %632 = getelementptr inbounds %struct.acl, %struct.acl* %631, i32 0, i32 1
  %633 = load %struct.acl_entry*, %struct.acl_entry** %632, align 8
  %634 = load i32, i32* %22, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %633, i64 %635
  %637 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %636, i32 0, i32 1
  %638 = load i32, i32* %637, align 4
  %639 = load i32, i32* @ACL_READ, align 4
  %640 = and i32 %638, %639
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %642, label %646

642:                                              ; preds = %630
  %643 = load i32, i32* @VREAD, align 4
  %644 = load i32, i32* %18, align 4
  %645 = or i32 %644, %643
  store i32 %645, i32* %18, align 4
  br label %646

646:                                              ; preds = %642, %630
  %647 = load %struct.acl*, %struct.acl** %12, align 8
  %648 = getelementptr inbounds %struct.acl, %struct.acl* %647, i32 0, i32 1
  %649 = load %struct.acl_entry*, %struct.acl_entry** %648, align 8
  %650 = load i32, i32* %22, align 4
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %649, i64 %651
  %653 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %652, i32 0, i32 1
  %654 = load i32, i32* %653, align 4
  %655 = load i32, i32* @ACL_WRITE, align 4
  %656 = and i32 %654, %655
  %657 = icmp ne i32 %656, 0
  br i1 %657, label %658, label %664

658:                                              ; preds = %646
  %659 = load i32, i32* @VWRITE, align 4
  %660 = load i32, i32* @VAPPEND, align 4
  %661 = or i32 %659, %660
  %662 = load i32, i32* %18, align 4
  %663 = or i32 %662, %661
  store i32 %663, i32* %18, align 4
  br label %664

664:                                              ; preds = %658, %646
  %665 = load i32, i32* %20, align 4
  %666 = load i32, i32* %18, align 4
  %667 = and i32 %666, %665
  store i32 %667, i32* %18, align 4
  %668 = load i32, i32* %13, align 4
  %669 = load i32, i32* %18, align 4
  %670 = load i32, i32* %19, align 4
  %671 = or i32 %669, %670
  %672 = and i32 %668, %671
  %673 = load i32, i32* %13, align 4
  %674 = icmp ne i32 %672, %673
  br i1 %674, label %675, label %676

675:                                              ; preds = %664
  br label %764

676:                                              ; preds = %664
  %677 = load i32*, i32** %15, align 8
  %678 = icmp ne i32* %677, null
  br i1 %678, label %679, label %681

679:                                              ; preds = %676
  %680 = load i32*, i32** %15, align 8
  store i32 1, i32* %680, align 4
  br label %681

681:                                              ; preds = %679, %676
  store i32 0, i32* %8, align 4
  br label %837

682:                                              ; preds = %599
  %683 = load %struct.acl*, %struct.acl** %12, align 8
  %684 = getelementptr inbounds %struct.acl, %struct.acl* %683, i32 0, i32 1
  %685 = load %struct.acl_entry*, %struct.acl_entry** %684, align 8
  %686 = load i32, i32* %22, align 4
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %685, i64 %687
  %689 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %688, i32 0, i32 2
  %690 = load i32, i32* %689, align 4
  %691 = load %struct.ucred*, %struct.ucred** %14, align 8
  %692 = call i32 @groupmember(i32 %690, %struct.ucred* %691)
  %693 = icmp ne i32 %692, 0
  br i1 %693, label %695, label %694

694:                                              ; preds = %682
  br label %764

695:                                              ; preds = %682
  store i32 0, i32* %18, align 4
  %696 = load %struct.acl*, %struct.acl** %12, align 8
  %697 = getelementptr inbounds %struct.acl, %struct.acl* %696, i32 0, i32 1
  %698 = load %struct.acl_entry*, %struct.acl_entry** %697, align 8
  %699 = load i32, i32* %22, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %698, i64 %700
  %702 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %701, i32 0, i32 1
  %703 = load i32, i32* %702, align 4
  %704 = load i32, i32* @ACL_EXECUTE, align 4
  %705 = and i32 %703, %704
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %707, label %711

707:                                              ; preds = %695
  %708 = load i32, i32* @VEXEC, align 4
  %709 = load i32, i32* %18, align 4
  %710 = or i32 %709, %708
  store i32 %710, i32* %18, align 4
  br label %711

711:                                              ; preds = %707, %695
  %712 = load %struct.acl*, %struct.acl** %12, align 8
  %713 = getelementptr inbounds %struct.acl, %struct.acl* %712, i32 0, i32 1
  %714 = load %struct.acl_entry*, %struct.acl_entry** %713, align 8
  %715 = load i32, i32* %22, align 4
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %714, i64 %716
  %718 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %717, i32 0, i32 1
  %719 = load i32, i32* %718, align 4
  %720 = load i32, i32* @ACL_READ, align 4
  %721 = and i32 %719, %720
  %722 = icmp ne i32 %721, 0
  br i1 %722, label %723, label %727

723:                                              ; preds = %711
  %724 = load i32, i32* @VREAD, align 4
  %725 = load i32, i32* %18, align 4
  %726 = or i32 %725, %724
  store i32 %726, i32* %18, align 4
  br label %727

727:                                              ; preds = %723, %711
  %728 = load %struct.acl*, %struct.acl** %12, align 8
  %729 = getelementptr inbounds %struct.acl, %struct.acl* %728, i32 0, i32 1
  %730 = load %struct.acl_entry*, %struct.acl_entry** %729, align 8
  %731 = load i32, i32* %22, align 4
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %730, i64 %732
  %734 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %733, i32 0, i32 1
  %735 = load i32, i32* %734, align 4
  %736 = load i32, i32* @ACL_WRITE, align 4
  %737 = and i32 %735, %736
  %738 = icmp ne i32 %737, 0
  br i1 %738, label %739, label %745

739:                                              ; preds = %727
  %740 = load i32, i32* @VWRITE, align 4
  %741 = load i32, i32* @VAPPEND, align 4
  %742 = or i32 %740, %741
  %743 = load i32, i32* %18, align 4
  %744 = or i32 %743, %742
  store i32 %744, i32* %18, align 4
  br label %745

745:                                              ; preds = %739, %727
  %746 = load i32, i32* %20, align 4
  %747 = load i32, i32* %18, align 4
  %748 = and i32 %747, %746
  store i32 %748, i32* %18, align 4
  %749 = load i32, i32* %13, align 4
  %750 = load i32, i32* %18, align 4
  %751 = load i32, i32* %19, align 4
  %752 = or i32 %750, %751
  %753 = and i32 %749, %752
  %754 = load i32, i32* %13, align 4
  %755 = icmp ne i32 %753, %754
  br i1 %755, label %756, label %757

756:                                              ; preds = %745
  br label %764

757:                                              ; preds = %745
  %758 = load i32*, i32** %15, align 8
  %759 = icmp ne i32* %758, null
  br i1 %759, label %760, label %762

760:                                              ; preds = %757
  %761 = load i32*, i32** %15, align 8
  store i32 1, i32* %761, align 4
  br label %762

762:                                              ; preds = %760, %757
  store i32 0, i32* %8, align 4
  br label %837

763:                                              ; preds = %599
  br label %764

764:                                              ; preds = %763, %756, %694, %675, %613
  br label %765

765:                                              ; preds = %764
  %766 = load i32, i32* %22, align 4
  %767 = add nsw i32 %766, 1
  store i32 %767, i32* %22, align 4
  br label %593

768:                                              ; preds = %593
  br label %826

769:                                              ; preds = %589
  store i32 0, i32* %18, align 4
  %770 = load %struct.acl_entry*, %struct.acl_entry** %16, align 8
  %771 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %770, i32 0, i32 1
  %772 = load i32, i32* %771, align 4
  %773 = load i32, i32* @ACL_EXECUTE, align 4
  %774 = and i32 %772, %773
  %775 = icmp ne i32 %774, 0
  br i1 %775, label %776, label %780

776:                                              ; preds = %769
  %777 = load i32, i32* @VEXEC, align 4
  %778 = load i32, i32* %18, align 4
  %779 = or i32 %778, %777
  store i32 %779, i32* %18, align 4
  br label %780

780:                                              ; preds = %776, %769
  %781 = load %struct.acl_entry*, %struct.acl_entry** %16, align 8
  %782 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %781, i32 0, i32 1
  %783 = load i32, i32* %782, align 4
  %784 = load i32, i32* @ACL_READ, align 4
  %785 = and i32 %783, %784
  %786 = icmp ne i32 %785, 0
  br i1 %786, label %787, label %791

787:                                              ; preds = %780
  %788 = load i32, i32* @VREAD, align 4
  %789 = load i32, i32* %18, align 4
  %790 = or i32 %789, %788
  store i32 %790, i32* %18, align 4
  br label %791

791:                                              ; preds = %787, %780
  %792 = load %struct.acl_entry*, %struct.acl_entry** %16, align 8
  %793 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %792, i32 0, i32 1
  %794 = load i32, i32* %793, align 4
  %795 = load i32, i32* @ACL_WRITE, align 4
  %796 = and i32 %794, %795
  %797 = icmp ne i32 %796, 0
  br i1 %797, label %798, label %804

798:                                              ; preds = %791
  %799 = load i32, i32* @VWRITE, align 4
  %800 = load i32, i32* @VAPPEND, align 4
  %801 = or i32 %799, %800
  %802 = load i32, i32* %18, align 4
  %803 = or i32 %802, %801
  store i32 %803, i32* %18, align 4
  br label %804

804:                                              ; preds = %798, %791
  %805 = load i32, i32* %13, align 4
  %806 = load i32, i32* %18, align 4
  %807 = and i32 %805, %806
  %808 = load i32, i32* %13, align 4
  %809 = icmp eq i32 %807, %808
  br i1 %809, label %810, label %811

810:                                              ; preds = %804
  store i32 0, i32* %8, align 4
  br label %837

811:                                              ; preds = %804
  %812 = load i32, i32* %13, align 4
  %813 = load i32, i32* %18, align 4
  %814 = load i32, i32* %19, align 4
  %815 = or i32 %813, %814
  %816 = and i32 %812, %815
  %817 = load i32, i32* %13, align 4
  %818 = icmp eq i32 %816, %817
  br i1 %818, label %819, label %825

819:                                              ; preds = %811
  %820 = load i32*, i32** %15, align 8
  %821 = icmp ne i32* %820, null
  br i1 %821, label %822, label %824

822:                                              ; preds = %819
  %823 = load i32*, i32** %15, align 8
  store i32 1, i32* %823, align 4
  br label %824

824:                                              ; preds = %822, %819
  store i32 0, i32* %8, align 4
  br label %837

825:                                              ; preds = %811
  br label %826

826:                                              ; preds = %825, %768, %416, %245
  %827 = load i32, i32* %13, align 4
  %828 = load i32, i32* @VADMIN, align 4
  %829 = and i32 %827, %828
  %830 = icmp ne i32 %829, 0
  br i1 %830, label %831, label %833

831:                                              ; preds = %826
  %832 = load i32, i32* @EPERM, align 4
  br label %835

833:                                              ; preds = %826
  %834 = load i32, i32* @EACCES, align 4
  br label %835

835:                                              ; preds = %833, %831
  %836 = phi i32 [ %832, %831 ], [ %834, %833 ]
  store i32 %836, i32* %8, align 4
  br label %837

837:                                              ; preds = %835, %824, %810, %762, %681, %582, %508, %422, %407, %268, %244, %230
  %838 = load i32, i32* %8, align 4
  ret i32 %838
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @acl_posix1e_acl_to_mode(%struct.acl*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @groupmember(i32, %struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
