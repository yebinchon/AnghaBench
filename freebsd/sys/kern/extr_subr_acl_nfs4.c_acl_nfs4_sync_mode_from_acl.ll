; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_acl_nfs4.c_acl_nfs4_sync_mode_from_acl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_acl_nfs4.c_acl_nfs4_sync_mode_from_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl = type { i32, %struct.acl_entry* }
%struct.acl_entry = type { i64, i32, i64, i32 }

@ACL_MAX_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"aclp->acl_cnt <= ACL_MAX_ENTRIES\00", align 1
@ACL_ENTRY_TYPE_ALLOW = common dso_local global i64 0, align 8
@ACL_ENTRY_TYPE_DENY = common dso_local global i64 0, align 8
@ACL_ENTRY_INHERIT_ONLY = common dso_local global i32 0, align 4
@ACL_USER_OBJ = common dso_local global i64 0, align 8
@ACL_READ_DATA = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@ACL_WRITE_DATA = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@ACL_EXECUTE = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@ACL_GROUP_OBJ = common dso_local global i64 0, align 8
@S_IRGRP = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@ACL_EVERYONE = common dso_local global i64 0, align 8
@S_IROTH = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@ACL_PRESERVE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acl_nfs4_sync_mode_from_acl(i32* %0, %struct.acl* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.acl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.acl_entry*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.acl* %1, %struct.acl** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.acl*, %struct.acl** %4, align 8
  %13 = getelementptr inbounds %struct.acl, %struct.acl* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ACL_MAX_ENTRIES, align 4
  %16 = icmp sle i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %427, %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.acl*, %struct.acl** %4, align 8
  %22 = getelementptr inbounds %struct.acl, %struct.acl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %430

25:                                               ; preds = %19
  %26 = load %struct.acl*, %struct.acl** %4, align 8
  %27 = getelementptr inbounds %struct.acl, %struct.acl* %26, i32 0, i32 1
  %28 = load %struct.acl_entry*, %struct.acl_entry** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %28, i64 %30
  store %struct.acl_entry* %31, %struct.acl_entry** %9, align 8
  %32 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %33 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %25
  %38 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %39 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ACL_ENTRY_TYPE_DENY, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %427

44:                                               ; preds = %37, %25
  %45 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %46 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ACL_ENTRY_INHERIT_ONLY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %427

52:                                               ; preds = %44
  %53 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %54 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ACL_USER_OBJ, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %137

58:                                               ; preds = %52
  %59 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %60 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ACL_READ_DATA, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %58
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @S_IRUSR, align 4
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %65
  %71 = load i32, i32* @S_IRUSR, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %75 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = load i32, i32* @S_IRUSR, align 4
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %79, %70
  br label %84

84:                                               ; preds = %83, %65, %58
  %85 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %86 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @ACL_WRITE_DATA, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %84
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @S_IWUSR, align 4
  %94 = and i32 %92, %93
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %91
  %97 = load i32, i32* @S_IWUSR, align 4
  %98 = load i32, i32* %8, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %8, align 4
  %100 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %101 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load i32, i32* @S_IWUSR, align 4
  %107 = load i32, i32* %7, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %105, %96
  br label %110

110:                                              ; preds = %109, %91, %84
  %111 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %112 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @ACL_EXECUTE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %136

117:                                              ; preds = %110
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @S_IXUSR, align 4
  %120 = and i32 %118, %119
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %117
  %123 = load i32, i32* @S_IXUSR, align 4
  %124 = load i32, i32* %8, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %8, align 4
  %126 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %127 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %122
  %132 = load i32, i32* @S_IXUSR, align 4
  %133 = load i32, i32* %7, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %131, %122
  br label %136

136:                                              ; preds = %135, %117, %110
  br label %426

137:                                              ; preds = %52
  %138 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %139 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @ACL_GROUP_OBJ, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %222

143:                                              ; preds = %137
  %144 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %145 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @ACL_READ_DATA, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %169

150:                                              ; preds = %143
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @S_IRGRP, align 4
  %153 = and i32 %151, %152
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %169

155:                                              ; preds = %150
  %156 = load i32, i32* @S_IRGRP, align 4
  %157 = load i32, i32* %8, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %8, align 4
  %159 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %160 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %155
  %165 = load i32, i32* @S_IRGRP, align 4
  %166 = load i32, i32* %7, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %164, %155
  br label %169

169:                                              ; preds = %168, %150, %143
  %170 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %171 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @ACL_WRITE_DATA, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %195

176:                                              ; preds = %169
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* @S_IWGRP, align 4
  %179 = and i32 %177, %178
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %195

181:                                              ; preds = %176
  %182 = load i32, i32* @S_IWGRP, align 4
  %183 = load i32, i32* %8, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %8, align 4
  %185 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %186 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %181
  %191 = load i32, i32* @S_IWGRP, align 4
  %192 = load i32, i32* %7, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %7, align 4
  br label %194

194:                                              ; preds = %190, %181
  br label %195

195:                                              ; preds = %194, %176, %169
  %196 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %197 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @ACL_EXECUTE, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %221

202:                                              ; preds = %195
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* @S_IXGRP, align 4
  %205 = and i32 %203, %204
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %221

207:                                              ; preds = %202
  %208 = load i32, i32* @S_IXGRP, align 4
  %209 = load i32, i32* %8, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %8, align 4
  %211 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %212 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %207
  %217 = load i32, i32* @S_IXGRP, align 4
  %218 = load i32, i32* %7, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %7, align 4
  br label %220

220:                                              ; preds = %216, %207
  br label %221

221:                                              ; preds = %220, %202, %195
  br label %425

222:                                              ; preds = %137
  %223 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %224 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @ACL_EVERYONE, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %424

228:                                              ; preds = %222
  %229 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %230 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @ACL_READ_DATA, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %293

235:                                              ; preds = %228
  %236 = load i32, i32* %8, align 4
  %237 = load i32, i32* @S_IRUSR, align 4
  %238 = and i32 %236, %237
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %254

240:                                              ; preds = %235
  %241 = load i32, i32* @S_IRUSR, align 4
  %242 = load i32, i32* %8, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %8, align 4
  %244 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %245 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %253

249:                                              ; preds = %240
  %250 = load i32, i32* @S_IRUSR, align 4
  %251 = load i32, i32* %7, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %7, align 4
  br label %253

253:                                              ; preds = %249, %240
  br label %254

254:                                              ; preds = %253, %235
  %255 = load i32, i32* %8, align 4
  %256 = load i32, i32* @S_IRGRP, align 4
  %257 = and i32 %255, %256
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %273

259:                                              ; preds = %254
  %260 = load i32, i32* @S_IRGRP, align 4
  %261 = load i32, i32* %8, align 4
  %262 = or i32 %261, %260
  store i32 %262, i32* %8, align 4
  %263 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %264 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %272

268:                                              ; preds = %259
  %269 = load i32, i32* @S_IRGRP, align 4
  %270 = load i32, i32* %7, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %7, align 4
  br label %272

272:                                              ; preds = %268, %259
  br label %273

273:                                              ; preds = %272, %254
  %274 = load i32, i32* %8, align 4
  %275 = load i32, i32* @S_IROTH, align 4
  %276 = and i32 %274, %275
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %292

278:                                              ; preds = %273
  %279 = load i32, i32* @S_IROTH, align 4
  %280 = load i32, i32* %8, align 4
  %281 = or i32 %280, %279
  store i32 %281, i32* %8, align 4
  %282 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %283 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %291

287:                                              ; preds = %278
  %288 = load i32, i32* @S_IROTH, align 4
  %289 = load i32, i32* %7, align 4
  %290 = or i32 %289, %288
  store i32 %290, i32* %7, align 4
  br label %291

291:                                              ; preds = %287, %278
  br label %292

292:                                              ; preds = %291, %273
  br label %293

293:                                              ; preds = %292, %228
  %294 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %295 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @ACL_WRITE_DATA, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %358

300:                                              ; preds = %293
  %301 = load i32, i32* %8, align 4
  %302 = load i32, i32* @S_IWUSR, align 4
  %303 = and i32 %301, %302
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %319

305:                                              ; preds = %300
  %306 = load i32, i32* @S_IWUSR, align 4
  %307 = load i32, i32* %8, align 4
  %308 = or i32 %307, %306
  store i32 %308, i32* %8, align 4
  %309 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %310 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %314, label %318

314:                                              ; preds = %305
  %315 = load i32, i32* @S_IWUSR, align 4
  %316 = load i32, i32* %7, align 4
  %317 = or i32 %316, %315
  store i32 %317, i32* %7, align 4
  br label %318

318:                                              ; preds = %314, %305
  br label %319

319:                                              ; preds = %318, %300
  %320 = load i32, i32* %8, align 4
  %321 = load i32, i32* @S_IWGRP, align 4
  %322 = and i32 %320, %321
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %338

324:                                              ; preds = %319
  %325 = load i32, i32* @S_IWGRP, align 4
  %326 = load i32, i32* %8, align 4
  %327 = or i32 %326, %325
  store i32 %327, i32* %8, align 4
  %328 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %329 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %332 = icmp eq i64 %330, %331
  br i1 %332, label %333, label %337

333:                                              ; preds = %324
  %334 = load i32, i32* @S_IWGRP, align 4
  %335 = load i32, i32* %7, align 4
  %336 = or i32 %335, %334
  store i32 %336, i32* %7, align 4
  br label %337

337:                                              ; preds = %333, %324
  br label %338

338:                                              ; preds = %337, %319
  %339 = load i32, i32* %8, align 4
  %340 = load i32, i32* @S_IWOTH, align 4
  %341 = and i32 %339, %340
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %357

343:                                              ; preds = %338
  %344 = load i32, i32* @S_IWOTH, align 4
  %345 = load i32, i32* %8, align 4
  %346 = or i32 %345, %344
  store i32 %346, i32* %8, align 4
  %347 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %348 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %351 = icmp eq i64 %349, %350
  br i1 %351, label %352, label %356

352:                                              ; preds = %343
  %353 = load i32, i32* @S_IWOTH, align 4
  %354 = load i32, i32* %7, align 4
  %355 = or i32 %354, %353
  store i32 %355, i32* %7, align 4
  br label %356

356:                                              ; preds = %352, %343
  br label %357

357:                                              ; preds = %356, %338
  br label %358

358:                                              ; preds = %357, %293
  %359 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %360 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @ACL_EXECUTE, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %423

365:                                              ; preds = %358
  %366 = load i32, i32* %8, align 4
  %367 = load i32, i32* @S_IXUSR, align 4
  %368 = and i32 %366, %367
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %384

370:                                              ; preds = %365
  %371 = load i32, i32* @S_IXUSR, align 4
  %372 = load i32, i32* %8, align 4
  %373 = or i32 %372, %371
  store i32 %373, i32* %8, align 4
  %374 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %375 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %378 = icmp eq i64 %376, %377
  br i1 %378, label %379, label %383

379:                                              ; preds = %370
  %380 = load i32, i32* @S_IXUSR, align 4
  %381 = load i32, i32* %7, align 4
  %382 = or i32 %381, %380
  store i32 %382, i32* %7, align 4
  br label %383

383:                                              ; preds = %379, %370
  br label %384

384:                                              ; preds = %383, %365
  %385 = load i32, i32* %8, align 4
  %386 = load i32, i32* @S_IXGRP, align 4
  %387 = and i32 %385, %386
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %403

389:                                              ; preds = %384
  %390 = load i32, i32* @S_IXGRP, align 4
  %391 = load i32, i32* %8, align 4
  %392 = or i32 %391, %390
  store i32 %392, i32* %8, align 4
  %393 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %394 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %397 = icmp eq i64 %395, %396
  br i1 %397, label %398, label %402

398:                                              ; preds = %389
  %399 = load i32, i32* @S_IXGRP, align 4
  %400 = load i32, i32* %7, align 4
  %401 = or i32 %400, %399
  store i32 %401, i32* %7, align 4
  br label %402

402:                                              ; preds = %398, %389
  br label %403

403:                                              ; preds = %402, %384
  %404 = load i32, i32* %8, align 4
  %405 = load i32, i32* @S_IXOTH, align 4
  %406 = and i32 %404, %405
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %408, label %422

408:                                              ; preds = %403
  %409 = load i32, i32* @S_IXOTH, align 4
  %410 = load i32, i32* %8, align 4
  %411 = or i32 %410, %409
  store i32 %411, i32* %8, align 4
  %412 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %413 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %412, i32 0, i32 0
  %414 = load i64, i64* %413, align 8
  %415 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %416 = icmp eq i64 %414, %415
  br i1 %416, label %417, label %421

417:                                              ; preds = %408
  %418 = load i32, i32* @S_IXOTH, align 4
  %419 = load i32, i32* %7, align 4
  %420 = or i32 %419, %418
  store i32 %420, i32* %7, align 4
  br label %421

421:                                              ; preds = %417, %408
  br label %422

422:                                              ; preds = %421, %403
  br label %423

423:                                              ; preds = %422, %358
  br label %424

424:                                              ; preds = %423, %222
  br label %425

425:                                              ; preds = %424, %221
  br label %426

426:                                              ; preds = %425, %136
  br label %427

427:                                              ; preds = %426, %51, %43
  %428 = load i32, i32* %5, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %5, align 4
  br label %19

430:                                              ; preds = %19
  %431 = load i32, i32* %7, align 4
  %432 = load i32, i32* %6, align 4
  %433 = load i32, i32* @ACL_PRESERVE_MASK, align 4
  %434 = and i32 %432, %433
  %435 = or i32 %431, %434
  %436 = load i32*, i32** %3, align 8
  store i32 %435, i32* %436, align 4
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
