; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_acl_nfs4.c_acl_nfs4_sync_acl_from_mode_draft.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_acl_nfs4.c_acl_nfs4_sync_acl_from_mode_draft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl = type { i32, %struct.acl_entry* }
%struct.acl_entry = type { i64, i32, i64, i32, i32 }

@ACL_MAX_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"aclp->acl_cnt <= ACL_MAX_ENTRIES\00", align 1
@ACL_ENTRY_TYPE_ALLOW = common dso_local global i64 0, align 8
@ACL_ENTRY_TYPE_DENY = common dso_local global i64 0, align 8
@ACL_ENTRY_INHERIT_ONLY = common dso_local global i32 0, align 4
@ACL_ENTRY_FILE_INHERIT = common dso_local global i32 0, align 4
@ACL_ENTRY_DIRECTORY_INHERIT = common dso_local global i32 0, align 4
@ACL_ENTRY_NO_PROPAGATE_INHERIT = common dso_local global i32 0, align 4
@ACL_USER_OBJ = common dso_local global i64 0, align 8
@ACL_GROUP_OBJ = common dso_local global i64 0, align 8
@ACL_EVERYONE = common dso_local global i64 0, align 8
@ACL_READ_DATA = common dso_local global i32 0, align 4
@ACL_WRITE_DATA = common dso_local global i32 0, align 4
@ACL_APPEND_DATA = common dso_local global i32 0, align 4
@ACL_EXECUTE = common dso_local global i32 0, align 4
@ACL_USER = common dso_local global i64 0, align 8
@ACL_GROUP = common dso_local global i64 0, align 8
@ACL_WRITE_ACL = common dso_local global i32 0, align 4
@ACL_WRITE_OWNER = common dso_local global i32 0, align 4
@ACL_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@ACL_WRITE_NAMED_ATTRS = common dso_local global i32 0, align 4
@ACL_READ_ACL = common dso_local global i32 0, align 4
@ACL_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@ACL_READ_NAMED_ATTRS = common dso_local global i32 0, align 4
@ACL_SYNCHRONIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"couldn't append to ACL.\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acl*, i32, i32)* @acl_nfs4_sync_acl_from_mode_draft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acl_nfs4_sync_acl_from_mode_draft(%struct.acl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.acl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.acl_entry*, align 8
  %11 = alloca %struct.acl_entry*, align 8
  %12 = alloca %struct.acl_entry*, align 8
  %13 = alloca %struct.acl_entry*, align 8
  %14 = alloca %struct.acl_entry*, align 8
  %15 = alloca %struct.acl_entry*, align 8
  %16 = alloca %struct.acl_entry*, align 8
  %17 = alloca %struct.acl_entry*, align 8
  %18 = alloca %struct.acl_entry*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.acl* %0, %struct.acl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 4, i32* %20, align 4
  store i32 2, i32* %21, align 4
  store i32 1, i32* %22, align 4
  %25 = load %struct.acl*, %struct.acl** %4, align 8
  %26 = getelementptr inbounds %struct.acl, %struct.acl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ACL_MAX_ENTRIES, align 4
  %29 = icmp sle i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @KASSERT(i32 %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %430, %3
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.acl*, %struct.acl** %4, align 8
  %35 = getelementptr inbounds %struct.acl, %struct.acl* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %433

38:                                               ; preds = %32
  %39 = load %struct.acl*, %struct.acl** %4, align 8
  %40 = getelementptr inbounds %struct.acl, %struct.acl* %39, i32 0, i32 1
  %41 = load %struct.acl_entry*, %struct.acl_entry** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %41, i64 %43
  store %struct.acl_entry* %44, %struct.acl_entry** %10, align 8
  %45 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %46 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %38
  %51 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %52 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ACL_ENTRY_TYPE_DENY, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %430

57:                                               ; preds = %50, %38
  %58 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %59 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ACL_ENTRY_INHERIT_ONLY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %430

65:                                               ; preds = %57
  %66 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %67 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ACL_ENTRY_FILE_INHERIT, align 4
  %70 = load i32, i32* @ACL_ENTRY_DIRECTORY_INHERIT, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %65
  %75 = load %struct.acl*, %struct.acl** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call %struct.acl_entry* @_acl_duplicate_entry(%struct.acl* %75, i32 %76)
  store %struct.acl_entry* %77, %struct.acl_entry** %11, align 8
  %78 = load i32, i32* @ACL_ENTRY_INHERIT_ONLY, align 4
  %79 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %80 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load i32, i32* @ACL_ENTRY_FILE_INHERIT, align 4
  %84 = load i32, i32* @ACL_ENTRY_DIRECTORY_INHERIT, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @ACL_ENTRY_NO_PROPAGATE_INHERIT, align 4
  %87 = or i32 %85, %86
  %88 = xor i32 %87, -1
  %89 = load %struct.acl_entry*, %struct.acl_entry** %11, align 8
  %90 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  %95 = load %struct.acl_entry*, %struct.acl_entry** %11, align 8
  store %struct.acl_entry* %95, %struct.acl_entry** %10, align 8
  br label %96

96:                                               ; preds = %74, %65
  %97 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %98 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @ACL_USER_OBJ, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %114, label %102

102:                                              ; preds = %96
  %103 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %104 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @ACL_GROUP_OBJ, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %102
  %109 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %110 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @ACL_EVERYONE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %108, %102, %96
  %115 = load i32, i32* @ACL_READ_DATA, align 4
  %116 = load i32, i32* @ACL_WRITE_DATA, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @ACL_APPEND_DATA, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @ACL_EXECUTE, align 4
  %121 = or i32 %119, %120
  %122 = xor i32 %121, -1
  %123 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %124 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %430

127:                                              ; preds = %108
  %128 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %129 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  br label %430

134:                                              ; preds = %127
  store i32 0, i32* %8, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %201

137:                                              ; preds = %134
  store i32 1, i32* %8, align 4
  %138 = load %struct.acl*, %struct.acl** %4, align 8
  %139 = getelementptr inbounds %struct.acl, %struct.acl* %138, i32 0, i32 1
  %140 = load %struct.acl_entry*, %struct.acl_entry** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %140, i64 %143
  store %struct.acl_entry* %144, %struct.acl_entry** %12, align 8
  %145 = load %struct.acl_entry*, %struct.acl_entry** %12, align 8
  %146 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @ACL_ENTRY_TYPE_DENY, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %137
  store i32 0, i32* %8, align 4
  br label %151

151:                                              ; preds = %150, %137
  %152 = load %struct.acl_entry*, %struct.acl_entry** %12, align 8
  %153 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %156 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %154, %157
  br i1 %158, label %167, label %159

159:                                              ; preds = %151
  %160 = load %struct.acl_entry*, %struct.acl_entry** %12, align 8
  %161 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %164 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %162, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %159, %151
  store i32 0, i32* %8, align 4
  br label %168

168:                                              ; preds = %167, %159
  %169 = load %struct.acl_entry*, %struct.acl_entry** %12, align 8
  %170 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  store i32 0, i32* %8, align 4
  br label %174

174:                                              ; preds = %173, %168
  %175 = load %struct.acl_entry*, %struct.acl_entry** %12, align 8
  %176 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %179 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = xor i32 %180, -1
  %182 = and i32 %177, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %174
  store i32 0, i32* %8, align 4
  br label %185

185:                                              ; preds = %184, %174
  %186 = load %struct.acl_entry*, %struct.acl_entry** %12, align 8
  %187 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @ACL_READ_DATA, align 4
  %190 = load i32, i32* @ACL_WRITE_DATA, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @ACL_APPEND_DATA, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @ACL_EXECUTE, align 4
  %195 = or i32 %193, %194
  %196 = xor i32 %195, -1
  %197 = and i32 %188, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %185
  store i32 0, i32* %8, align 4
  br label %200

200:                                              ; preds = %199, %185
  br label %201

201:                                              ; preds = %200, %134
  %202 = load i32, i32* %8, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %231, label %204

204:                                              ; preds = %201
  %205 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  store %struct.acl_entry* %205, %struct.acl_entry** %12, align 8
  %206 = load %struct.acl*, %struct.acl** %4, align 8
  %207 = load i32, i32* %7, align 4
  %208 = call %struct.acl_entry* @_acl_duplicate_entry(%struct.acl* %206, i32 %207)
  store %struct.acl_entry* %208, %struct.acl_entry** %10, align 8
  %209 = load i32, i32* %7, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %7, align 4
  %211 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %212 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.acl_entry*, %struct.acl_entry** %12, align 8
  %215 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %214, i32 0, i32 2
  store i64 %213, i64* %215, align 8
  %216 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %217 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.acl_entry*, %struct.acl_entry** %12, align 8
  %220 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %219, i32 0, i32 4
  store i32 %218, i32* %220, align 4
  %221 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %222 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.acl_entry*, %struct.acl_entry** %12, align 8
  %225 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 8
  %226 = load %struct.acl_entry*, %struct.acl_entry** %12, align 8
  %227 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %226, i32 0, i32 3
  store i32 0, i32* %227, align 8
  %228 = load i64, i64* @ACL_ENTRY_TYPE_DENY, align 8
  %229 = load %struct.acl_entry*, %struct.acl_entry** %12, align 8
  %230 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %229, i32 0, i32 0
  store i64 %228, i64* %230, align 8
  br label %231

231:                                              ; preds = %204, %201
  %232 = load i32, i32* %5, align 4
  %233 = ashr i32 %232, 3
  store i32 %233, i32* %19, align 4
  %234 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %235 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @ACL_USER, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %248

239:                                              ; preds = %231
  %240 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %241 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %6, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %248

245:                                              ; preds = %239
  %246 = load i32, i32* %19, align 4
  %247 = ashr i32 %246, 3
  store i32 %247, i32* %19, align 4
  br label %248

248:                                              ; preds = %245, %239, %231
  %249 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %250 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @ACL_READ_DATA, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %273

255:                                              ; preds = %248
  %256 = load i32, i32* %19, align 4
  %257 = and i32 %256, 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %266

259:                                              ; preds = %255
  %260 = load i32, i32* @ACL_READ_DATA, align 4
  %261 = xor i32 %260, -1
  %262 = load %struct.acl_entry*, %struct.acl_entry** %12, align 8
  %263 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  %265 = and i32 %264, %261
  store i32 %265, i32* %263, align 8
  br label %272

266:                                              ; preds = %255
  %267 = load i32, i32* @ACL_READ_DATA, align 4
  %268 = load %struct.acl_entry*, %struct.acl_entry** %12, align 8
  %269 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 8
  %271 = or i32 %270, %267
  store i32 %271, i32* %269, align 8
  br label %272

272:                                              ; preds = %266, %259
  br label %273

273:                                              ; preds = %272, %248
  %274 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %275 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @ACL_WRITE_DATA, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %298

280:                                              ; preds = %273
  %281 = load i32, i32* %19, align 4
  %282 = and i32 %281, 2
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %280
  %285 = load i32, i32* @ACL_WRITE_DATA, align 4
  %286 = xor i32 %285, -1
  %287 = load %struct.acl_entry*, %struct.acl_entry** %12, align 8
  %288 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  %290 = and i32 %289, %286
  store i32 %290, i32* %288, align 8
  br label %297

291:                                              ; preds = %280
  %292 = load i32, i32* @ACL_WRITE_DATA, align 4
  %293 = load %struct.acl_entry*, %struct.acl_entry** %12, align 8
  %294 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  %296 = or i32 %295, %292
  store i32 %296, i32* %294, align 8
  br label %297

297:                                              ; preds = %291, %284
  br label %298

298:                                              ; preds = %297, %273
  %299 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %300 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @ACL_APPEND_DATA, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %323

305:                                              ; preds = %298
  %306 = load i32, i32* %19, align 4
  %307 = and i32 %306, 2
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %316

309:                                              ; preds = %305
  %310 = load i32, i32* @ACL_APPEND_DATA, align 4
  %311 = xor i32 %310, -1
  %312 = load %struct.acl_entry*, %struct.acl_entry** %12, align 8
  %313 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 8
  %315 = and i32 %314, %311
  store i32 %315, i32* %313, align 8
  br label %322

316:                                              ; preds = %305
  %317 = load i32, i32* @ACL_APPEND_DATA, align 4
  %318 = load %struct.acl_entry*, %struct.acl_entry** %12, align 8
  %319 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 8
  %321 = or i32 %320, %317
  store i32 %321, i32* %319, align 8
  br label %322

322:                                              ; preds = %316, %309
  br label %323

323:                                              ; preds = %322, %298
  %324 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %325 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %324, i32 0, i32 3
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @ACL_EXECUTE, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %348

330:                                              ; preds = %323
  %331 = load i32, i32* %19, align 4
  %332 = and i32 %331, 1
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %341

334:                                              ; preds = %330
  %335 = load i32, i32* @ACL_EXECUTE, align 4
  %336 = xor i32 %335, -1
  %337 = load %struct.acl_entry*, %struct.acl_entry** %12, align 8
  %338 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 8
  %340 = and i32 %339, %336
  store i32 %340, i32* %338, align 8
  br label %347

341:                                              ; preds = %330
  %342 = load i32, i32* @ACL_EXECUTE, align 4
  %343 = load %struct.acl_entry*, %struct.acl_entry** %12, align 8
  %344 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %343, i32 0, i32 3
  %345 = load i32, i32* %344, align 8
  %346 = or i32 %345, %342
  store i32 %346, i32* %344, align 8
  br label %347

347:                                              ; preds = %341, %334
  br label %348

348:                                              ; preds = %347, %323
  %349 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %350 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %349, i32 0, i32 2
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* @ACL_GROUP, align 8
  %353 = icmp eq i64 %351, %352
  br i1 %353, label %354, label %429

354:                                              ; preds = %348
  %355 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %356 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %359 = icmp eq i64 %357, %358
  br i1 %359, label %360, label %429

360:                                              ; preds = %354
  %361 = load i32, i32* %5, align 4
  %362 = ashr i32 %361, 3
  %363 = and i32 %362, 7
  store i32 %363, i32* %23, align 4
  %364 = load i32, i32* %5, align 4
  %365 = ashr i32 %364, 6
  store i32 %365, i32* %24, align 4
  %366 = load i32, i32* %24, align 4
  %367 = xor i32 %366, -1
  %368 = load i32, i32* %23, align 4
  %369 = and i32 %368, %367
  store i32 %369, i32* %23, align 4
  %370 = load i32, i32* %23, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %428

372:                                              ; preds = %360
  %373 = load i32, i32* %23, align 4
  %374 = and i32 %373, 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %389

376:                                              ; preds = %372
  %377 = load i32, i32* @ACL_READ_DATA, align 4
  %378 = xor i32 %377, -1
  %379 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %380 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %379, i32 0, i32 3
  %381 = load i32, i32* %380, align 8
  %382 = and i32 %381, %378
  store i32 %382, i32* %380, align 8
  %383 = load i32, i32* @ACL_READ_DATA, align 4
  %384 = xor i32 %383, -1
  %385 = load %struct.acl_entry*, %struct.acl_entry** %12, align 8
  %386 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %385, i32 0, i32 3
  %387 = load i32, i32* %386, align 8
  %388 = and i32 %387, %384
  store i32 %388, i32* %386, align 8
  br label %389

389:                                              ; preds = %376, %372
  %390 = load i32, i32* %23, align 4
  %391 = and i32 %390, 2
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %410

393:                                              ; preds = %389
  %394 = load i32, i32* @ACL_WRITE_DATA, align 4
  %395 = load i32, i32* @ACL_APPEND_DATA, align 4
  %396 = or i32 %394, %395
  %397 = xor i32 %396, -1
  %398 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %399 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %398, i32 0, i32 3
  %400 = load i32, i32* %399, align 8
  %401 = and i32 %400, %397
  store i32 %401, i32* %399, align 8
  %402 = load i32, i32* @ACL_WRITE_DATA, align 4
  %403 = load i32, i32* @ACL_APPEND_DATA, align 4
  %404 = or i32 %402, %403
  %405 = xor i32 %404, -1
  %406 = load %struct.acl_entry*, %struct.acl_entry** %12, align 8
  %407 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %406, i32 0, i32 3
  %408 = load i32, i32* %407, align 8
  %409 = and i32 %408, %405
  store i32 %409, i32* %407, align 8
  br label %410

410:                                              ; preds = %393, %389
  %411 = load i32, i32* %23, align 4
  %412 = and i32 %411, 1
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %427

414:                                              ; preds = %410
  %415 = load i32, i32* @ACL_EXECUTE, align 4
  %416 = xor i32 %415, -1
  %417 = load %struct.acl_entry*, %struct.acl_entry** %10, align 8
  %418 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %417, i32 0, i32 3
  %419 = load i32, i32* %418, align 8
  %420 = and i32 %419, %416
  store i32 %420, i32* %418, align 8
  %421 = load i32, i32* @ACL_EXECUTE, align 4
  %422 = xor i32 %421, -1
  %423 = load %struct.acl_entry*, %struct.acl_entry** %12, align 8
  %424 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %423, i32 0, i32 3
  %425 = load i32, i32* %424, align 8
  %426 = and i32 %425, %422
  store i32 %426, i32* %424, align 8
  br label %427

427:                                              ; preds = %414, %410
  br label %428

428:                                              ; preds = %427, %360
  br label %429

429:                                              ; preds = %428, %354, %348
  br label %430

430:                                              ; preds = %429, %133, %114, %64, %56
  %431 = load i32, i32* %7, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %7, align 4
  br label %32

433:                                              ; preds = %32
  store i32 0, i32* %9, align 4
  %434 = load %struct.acl*, %struct.acl** %4, align 8
  %435 = getelementptr inbounds %struct.acl, %struct.acl* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = icmp slt i32 %436, 6
  br i1 %437, label %438, label %439

438:                                              ; preds = %433
  store i32 1, i32* %9, align 4
  br label %557

439:                                              ; preds = %433
  %440 = load %struct.acl*, %struct.acl** %4, align 8
  %441 = getelementptr inbounds %struct.acl, %struct.acl* %440, i32 0, i32 1
  %442 = load %struct.acl_entry*, %struct.acl_entry** %441, align 8
  %443 = load %struct.acl*, %struct.acl** %4, align 8
  %444 = getelementptr inbounds %struct.acl, %struct.acl* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = sub nsw i32 %445, 1
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %442, i64 %447
  store %struct.acl_entry* %448, %struct.acl_entry** %18, align 8
  %449 = load %struct.acl*, %struct.acl** %4, align 8
  %450 = getelementptr inbounds %struct.acl, %struct.acl* %449, i32 0, i32 1
  %451 = load %struct.acl_entry*, %struct.acl_entry** %450, align 8
  %452 = load %struct.acl*, %struct.acl** %4, align 8
  %453 = getelementptr inbounds %struct.acl, %struct.acl* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = sub nsw i32 %454, 2
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %451, i64 %456
  store %struct.acl_entry* %457, %struct.acl_entry** %17, align 8
  %458 = load %struct.acl*, %struct.acl** %4, align 8
  %459 = getelementptr inbounds %struct.acl, %struct.acl* %458, i32 0, i32 1
  %460 = load %struct.acl_entry*, %struct.acl_entry** %459, align 8
  %461 = load %struct.acl*, %struct.acl** %4, align 8
  %462 = getelementptr inbounds %struct.acl, %struct.acl* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = sub nsw i32 %463, 3
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %460, i64 %465
  store %struct.acl_entry* %466, %struct.acl_entry** %16, align 8
  %467 = load %struct.acl*, %struct.acl** %4, align 8
  %468 = getelementptr inbounds %struct.acl, %struct.acl* %467, i32 0, i32 1
  %469 = load %struct.acl_entry*, %struct.acl_entry** %468, align 8
  %470 = load %struct.acl*, %struct.acl** %4, align 8
  %471 = getelementptr inbounds %struct.acl, %struct.acl* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = sub nsw i32 %472, 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %469, i64 %474
  store %struct.acl_entry* %475, %struct.acl_entry** %15, align 8
  %476 = load %struct.acl*, %struct.acl** %4, align 8
  %477 = getelementptr inbounds %struct.acl, %struct.acl* %476, i32 0, i32 1
  %478 = load %struct.acl_entry*, %struct.acl_entry** %477, align 8
  %479 = load %struct.acl*, %struct.acl** %4, align 8
  %480 = getelementptr inbounds %struct.acl, %struct.acl* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = sub nsw i32 %481, 5
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %478, i64 %483
  store %struct.acl_entry* %484, %struct.acl_entry** %14, align 8
  %485 = load %struct.acl*, %struct.acl** %4, align 8
  %486 = getelementptr inbounds %struct.acl, %struct.acl* %485, i32 0, i32 1
  %487 = load %struct.acl_entry*, %struct.acl_entry** %486, align 8
  %488 = load %struct.acl*, %struct.acl** %4, align 8
  %489 = getelementptr inbounds %struct.acl, %struct.acl* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  %491 = sub nsw i32 %490, 6
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %487, i64 %492
  store %struct.acl_entry* %493, %struct.acl_entry** %13, align 8
  %494 = load %struct.acl_entry*, %struct.acl_entry** %13, align 8
  %495 = load i64, i64* @ACL_USER_OBJ, align 8
  %496 = load i64, i64* @ACL_ENTRY_TYPE_DENY, align 8
  %497 = call i32 @_acl_entry_matches(%struct.acl_entry* %494, i64 %495, i32 0, i64 %496)
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %500, label %499

499:                                              ; preds = %439
  store i32 1, i32* %9, align 4
  br label %500

500:                                              ; preds = %499, %439
  %501 = load %struct.acl_entry*, %struct.acl_entry** %14, align 8
  %502 = load i64, i64* @ACL_USER_OBJ, align 8
  %503 = load i32, i32* @ACL_WRITE_ACL, align 4
  %504 = load i32, i32* @ACL_WRITE_OWNER, align 4
  %505 = or i32 %503, %504
  %506 = load i32, i32* @ACL_WRITE_ATTRIBUTES, align 4
  %507 = or i32 %505, %506
  %508 = load i32, i32* @ACL_WRITE_NAMED_ATTRS, align 4
  %509 = or i32 %507, %508
  %510 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %511 = call i32 @_acl_entry_matches(%struct.acl_entry* %501, i64 %502, i32 %509, i64 %510)
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %514, label %513

513:                                              ; preds = %500
  store i32 1, i32* %9, align 4
  br label %514

514:                                              ; preds = %513, %500
  %515 = load %struct.acl_entry*, %struct.acl_entry** %15, align 8
  %516 = load i64, i64* @ACL_GROUP_OBJ, align 8
  %517 = load i64, i64* @ACL_ENTRY_TYPE_DENY, align 8
  %518 = call i32 @_acl_entry_matches(%struct.acl_entry* %515, i64 %516, i32 0, i64 %517)
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %521, label %520

520:                                              ; preds = %514
  store i32 1, i32* %9, align 4
  br label %521

521:                                              ; preds = %520, %514
  %522 = load %struct.acl_entry*, %struct.acl_entry** %16, align 8
  %523 = load i64, i64* @ACL_GROUP_OBJ, align 8
  %524 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %525 = call i32 @_acl_entry_matches(%struct.acl_entry* %522, i64 %523, i32 0, i64 %524)
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %528, label %527

527:                                              ; preds = %521
  store i32 1, i32* %9, align 4
  br label %528

528:                                              ; preds = %527, %521
  %529 = load %struct.acl_entry*, %struct.acl_entry** %17, align 8
  %530 = load i64, i64* @ACL_EVERYONE, align 8
  %531 = load i32, i32* @ACL_WRITE_ACL, align 4
  %532 = load i32, i32* @ACL_WRITE_OWNER, align 4
  %533 = or i32 %531, %532
  %534 = load i32, i32* @ACL_WRITE_ATTRIBUTES, align 4
  %535 = or i32 %533, %534
  %536 = load i32, i32* @ACL_WRITE_NAMED_ATTRS, align 4
  %537 = or i32 %535, %536
  %538 = load i64, i64* @ACL_ENTRY_TYPE_DENY, align 8
  %539 = call i32 @_acl_entry_matches(%struct.acl_entry* %529, i64 %530, i32 %537, i64 %538)
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %542, label %541

541:                                              ; preds = %528
  store i32 1, i32* %9, align 4
  br label %542

542:                                              ; preds = %541, %528
  %543 = load %struct.acl_entry*, %struct.acl_entry** %18, align 8
  %544 = load i64, i64* @ACL_EVERYONE, align 8
  %545 = load i32, i32* @ACL_READ_ACL, align 4
  %546 = load i32, i32* @ACL_READ_ATTRIBUTES, align 4
  %547 = or i32 %545, %546
  %548 = load i32, i32* @ACL_READ_NAMED_ATTRS, align 4
  %549 = or i32 %547, %548
  %550 = load i32, i32* @ACL_SYNCHRONIZE, align 4
  %551 = or i32 %549, %550
  %552 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %553 = call i32 @_acl_entry_matches(%struct.acl_entry* %543, i64 %544, i32 %551, i64 %552)
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %556, label %555

555:                                              ; preds = %542
  store i32 1, i32* %9, align 4
  br label %556

556:                                              ; preds = %555, %542
  br label %557

557:                                              ; preds = %556, %438
  %558 = load i32, i32* %9, align 4
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %635

560:                                              ; preds = %557
  %561 = load %struct.acl*, %struct.acl** %4, align 8
  %562 = getelementptr inbounds %struct.acl, %struct.acl* %561, i32 0, i32 0
  %563 = load i32, i32* %562, align 8
  %564 = add nsw i32 %563, 6
  %565 = load i32, i32* @ACL_MAX_ENTRIES, align 4
  %566 = icmp sle i32 %564, %565
  %567 = zext i1 %566 to i32
  %568 = call i32 @KASSERT(i32 %567, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %569 = load %struct.acl*, %struct.acl** %4, align 8
  %570 = load i64, i64* @ACL_USER_OBJ, align 8
  %571 = load i64, i64* @ACL_ENTRY_TYPE_DENY, align 8
  %572 = call %struct.acl_entry* @_acl_append(%struct.acl* %569, i64 %570, i32 0, i64 %571)
  store %struct.acl_entry* %572, %struct.acl_entry** %13, align 8
  %573 = load %struct.acl*, %struct.acl** %4, align 8
  %574 = load i64, i64* @ACL_USER_OBJ, align 8
  %575 = load i32, i32* @ACL_WRITE_ACL, align 4
  %576 = load i32, i32* @ACL_WRITE_OWNER, align 4
  %577 = or i32 %575, %576
  %578 = load i32, i32* @ACL_WRITE_ATTRIBUTES, align 4
  %579 = or i32 %577, %578
  %580 = load i32, i32* @ACL_WRITE_NAMED_ATTRS, align 4
  %581 = or i32 %579, %580
  %582 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %583 = call %struct.acl_entry* @_acl_append(%struct.acl* %573, i64 %574, i32 %581, i64 %582)
  store %struct.acl_entry* %583, %struct.acl_entry** %14, align 8
  %584 = load %struct.acl*, %struct.acl** %4, align 8
  %585 = load i64, i64* @ACL_GROUP_OBJ, align 8
  %586 = load i64, i64* @ACL_ENTRY_TYPE_DENY, align 8
  %587 = call %struct.acl_entry* @_acl_append(%struct.acl* %584, i64 %585, i32 0, i64 %586)
  store %struct.acl_entry* %587, %struct.acl_entry** %15, align 8
  %588 = load %struct.acl*, %struct.acl** %4, align 8
  %589 = load i64, i64* @ACL_GROUP_OBJ, align 8
  %590 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %591 = call %struct.acl_entry* @_acl_append(%struct.acl* %588, i64 %589, i32 0, i64 %590)
  store %struct.acl_entry* %591, %struct.acl_entry** %16, align 8
  %592 = load %struct.acl*, %struct.acl** %4, align 8
  %593 = load i64, i64* @ACL_EVERYONE, align 8
  %594 = load i32, i32* @ACL_WRITE_ACL, align 4
  %595 = load i32, i32* @ACL_WRITE_OWNER, align 4
  %596 = or i32 %594, %595
  %597 = load i32, i32* @ACL_WRITE_ATTRIBUTES, align 4
  %598 = or i32 %596, %597
  %599 = load i32, i32* @ACL_WRITE_NAMED_ATTRS, align 4
  %600 = or i32 %598, %599
  %601 = load i64, i64* @ACL_ENTRY_TYPE_DENY, align 8
  %602 = call %struct.acl_entry* @_acl_append(%struct.acl* %592, i64 %593, i32 %600, i64 %601)
  store %struct.acl_entry* %602, %struct.acl_entry** %17, align 8
  %603 = load %struct.acl*, %struct.acl** %4, align 8
  %604 = load i64, i64* @ACL_EVERYONE, align 8
  %605 = load i32, i32* @ACL_READ_ACL, align 4
  %606 = load i32, i32* @ACL_READ_ATTRIBUTES, align 4
  %607 = or i32 %605, %606
  %608 = load i32, i32* @ACL_READ_NAMED_ATTRS, align 4
  %609 = or i32 %607, %608
  %610 = load i32, i32* @ACL_SYNCHRONIZE, align 4
  %611 = or i32 %609, %610
  %612 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %613 = call %struct.acl_entry* @_acl_append(%struct.acl* %603, i64 %604, i32 %611, i64 %612)
  store %struct.acl_entry* %613, %struct.acl_entry** %18, align 8
  %614 = load %struct.acl_entry*, %struct.acl_entry** %13, align 8
  %615 = icmp ne %struct.acl_entry* %614, null
  br i1 %615, label %616, label %631

616:                                              ; preds = %560
  %617 = load %struct.acl_entry*, %struct.acl_entry** %14, align 8
  %618 = icmp ne %struct.acl_entry* %617, null
  br i1 %618, label %619, label %631

619:                                              ; preds = %616
  %620 = load %struct.acl_entry*, %struct.acl_entry** %15, align 8
  %621 = icmp ne %struct.acl_entry* %620, null
  br i1 %621, label %622, label %631

622:                                              ; preds = %619
  %623 = load %struct.acl_entry*, %struct.acl_entry** %16, align 8
  %624 = icmp ne %struct.acl_entry* %623, null
  br i1 %624, label %625, label %631

625:                                              ; preds = %622
  %626 = load %struct.acl_entry*, %struct.acl_entry** %17, align 8
  %627 = icmp ne %struct.acl_entry* %626, null
  br i1 %627, label %628, label %631

628:                                              ; preds = %625
  %629 = load %struct.acl_entry*, %struct.acl_entry** %18, align 8
  %630 = icmp ne %struct.acl_entry* %629, null
  br label %631

631:                                              ; preds = %628, %625, %622, %619, %616, %560
  %632 = phi i1 [ false, %625 ], [ false, %622 ], [ false, %619 ], [ false, %616 ], [ false, %560 ], [ %630, %628 ]
  %633 = zext i1 %632 to i32
  %634 = call i32 @KASSERT(i32 %633, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %635

635:                                              ; preds = %631, %557
  %636 = load i32, i32* %5, align 4
  %637 = load i32, i32* @S_IRUSR, align 4
  %638 = and i32 %636, %637
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %640, label %646

640:                                              ; preds = %635
  %641 = load i32, i32* @ACL_READ_DATA, align 4
  %642 = load %struct.acl_entry*, %struct.acl_entry** %14, align 8
  %643 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %642, i32 0, i32 3
  %644 = load i32, i32* %643, align 8
  %645 = or i32 %644, %641
  store i32 %645, i32* %643, align 8
  br label %652

646:                                              ; preds = %635
  %647 = load i32, i32* @ACL_READ_DATA, align 4
  %648 = load %struct.acl_entry*, %struct.acl_entry** %13, align 8
  %649 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %648, i32 0, i32 3
  %650 = load i32, i32* %649, align 8
  %651 = or i32 %650, %647
  store i32 %651, i32* %649, align 8
  br label %652

652:                                              ; preds = %646, %640
  %653 = load i32, i32* %5, align 4
  %654 = load i32, i32* @S_IWUSR, align 4
  %655 = and i32 %653, %654
  %656 = icmp ne i32 %655, 0
  br i1 %656, label %657, label %665

657:                                              ; preds = %652
  %658 = load i32, i32* @ACL_WRITE_DATA, align 4
  %659 = load i32, i32* @ACL_APPEND_DATA, align 4
  %660 = or i32 %658, %659
  %661 = load %struct.acl_entry*, %struct.acl_entry** %14, align 8
  %662 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %661, i32 0, i32 3
  %663 = load i32, i32* %662, align 8
  %664 = or i32 %663, %660
  store i32 %664, i32* %662, align 8
  br label %673

665:                                              ; preds = %652
  %666 = load i32, i32* @ACL_WRITE_DATA, align 4
  %667 = load i32, i32* @ACL_APPEND_DATA, align 4
  %668 = or i32 %666, %667
  %669 = load %struct.acl_entry*, %struct.acl_entry** %13, align 8
  %670 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %669, i32 0, i32 3
  %671 = load i32, i32* %670, align 8
  %672 = or i32 %671, %668
  store i32 %672, i32* %670, align 8
  br label %673

673:                                              ; preds = %665, %657
  %674 = load i32, i32* %5, align 4
  %675 = load i32, i32* @S_IXUSR, align 4
  %676 = and i32 %674, %675
  %677 = icmp ne i32 %676, 0
  br i1 %677, label %678, label %684

678:                                              ; preds = %673
  %679 = load i32, i32* @ACL_EXECUTE, align 4
  %680 = load %struct.acl_entry*, %struct.acl_entry** %14, align 8
  %681 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %680, i32 0, i32 3
  %682 = load i32, i32* %681, align 8
  %683 = or i32 %682, %679
  store i32 %683, i32* %681, align 8
  br label %690

684:                                              ; preds = %673
  %685 = load i32, i32* @ACL_EXECUTE, align 4
  %686 = load %struct.acl_entry*, %struct.acl_entry** %13, align 8
  %687 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %686, i32 0, i32 3
  %688 = load i32, i32* %687, align 8
  %689 = or i32 %688, %685
  store i32 %689, i32* %687, align 8
  br label %690

690:                                              ; preds = %684, %678
  %691 = load i32, i32* %5, align 4
  %692 = load i32, i32* @S_IRGRP, align 4
  %693 = and i32 %691, %692
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %695, label %701

695:                                              ; preds = %690
  %696 = load i32, i32* @ACL_READ_DATA, align 4
  %697 = load %struct.acl_entry*, %struct.acl_entry** %16, align 8
  %698 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %697, i32 0, i32 3
  %699 = load i32, i32* %698, align 8
  %700 = or i32 %699, %696
  store i32 %700, i32* %698, align 8
  br label %707

701:                                              ; preds = %690
  %702 = load i32, i32* @ACL_READ_DATA, align 4
  %703 = load %struct.acl_entry*, %struct.acl_entry** %15, align 8
  %704 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %703, i32 0, i32 3
  %705 = load i32, i32* %704, align 8
  %706 = or i32 %705, %702
  store i32 %706, i32* %704, align 8
  br label %707

707:                                              ; preds = %701, %695
  %708 = load i32, i32* %5, align 4
  %709 = load i32, i32* @S_IWGRP, align 4
  %710 = and i32 %708, %709
  %711 = icmp ne i32 %710, 0
  br i1 %711, label %712, label %720

712:                                              ; preds = %707
  %713 = load i32, i32* @ACL_WRITE_DATA, align 4
  %714 = load i32, i32* @ACL_APPEND_DATA, align 4
  %715 = or i32 %713, %714
  %716 = load %struct.acl_entry*, %struct.acl_entry** %16, align 8
  %717 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %716, i32 0, i32 3
  %718 = load i32, i32* %717, align 8
  %719 = or i32 %718, %715
  store i32 %719, i32* %717, align 8
  br label %728

720:                                              ; preds = %707
  %721 = load i32, i32* @ACL_WRITE_DATA, align 4
  %722 = load i32, i32* @ACL_APPEND_DATA, align 4
  %723 = or i32 %721, %722
  %724 = load %struct.acl_entry*, %struct.acl_entry** %15, align 8
  %725 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %724, i32 0, i32 3
  %726 = load i32, i32* %725, align 8
  %727 = or i32 %726, %723
  store i32 %727, i32* %725, align 8
  br label %728

728:                                              ; preds = %720, %712
  %729 = load i32, i32* %5, align 4
  %730 = load i32, i32* @S_IXGRP, align 4
  %731 = and i32 %729, %730
  %732 = icmp ne i32 %731, 0
  br i1 %732, label %733, label %739

733:                                              ; preds = %728
  %734 = load i32, i32* @ACL_EXECUTE, align 4
  %735 = load %struct.acl_entry*, %struct.acl_entry** %16, align 8
  %736 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %735, i32 0, i32 3
  %737 = load i32, i32* %736, align 8
  %738 = or i32 %737, %734
  store i32 %738, i32* %736, align 8
  br label %745

739:                                              ; preds = %728
  %740 = load i32, i32* @ACL_EXECUTE, align 4
  %741 = load %struct.acl_entry*, %struct.acl_entry** %15, align 8
  %742 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %741, i32 0, i32 3
  %743 = load i32, i32* %742, align 8
  %744 = or i32 %743, %740
  store i32 %744, i32* %742, align 8
  br label %745

745:                                              ; preds = %739, %733
  %746 = load i32, i32* %5, align 4
  %747 = load i32, i32* @S_IROTH, align 4
  %748 = and i32 %746, %747
  %749 = icmp ne i32 %748, 0
  br i1 %749, label %750, label %756

750:                                              ; preds = %745
  %751 = load i32, i32* @ACL_READ_DATA, align 4
  %752 = load %struct.acl_entry*, %struct.acl_entry** %18, align 8
  %753 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %752, i32 0, i32 3
  %754 = load i32, i32* %753, align 8
  %755 = or i32 %754, %751
  store i32 %755, i32* %753, align 8
  br label %762

756:                                              ; preds = %745
  %757 = load i32, i32* @ACL_READ_DATA, align 4
  %758 = load %struct.acl_entry*, %struct.acl_entry** %17, align 8
  %759 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %758, i32 0, i32 3
  %760 = load i32, i32* %759, align 8
  %761 = or i32 %760, %757
  store i32 %761, i32* %759, align 8
  br label %762

762:                                              ; preds = %756, %750
  %763 = load i32, i32* %5, align 4
  %764 = load i32, i32* @S_IWOTH, align 4
  %765 = and i32 %763, %764
  %766 = icmp ne i32 %765, 0
  br i1 %766, label %767, label %775

767:                                              ; preds = %762
  %768 = load i32, i32* @ACL_WRITE_DATA, align 4
  %769 = load i32, i32* @ACL_APPEND_DATA, align 4
  %770 = or i32 %768, %769
  %771 = load %struct.acl_entry*, %struct.acl_entry** %18, align 8
  %772 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %771, i32 0, i32 3
  %773 = load i32, i32* %772, align 8
  %774 = or i32 %773, %770
  store i32 %774, i32* %772, align 8
  br label %783

775:                                              ; preds = %762
  %776 = load i32, i32* @ACL_WRITE_DATA, align 4
  %777 = load i32, i32* @ACL_APPEND_DATA, align 4
  %778 = or i32 %776, %777
  %779 = load %struct.acl_entry*, %struct.acl_entry** %17, align 8
  %780 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %779, i32 0, i32 3
  %781 = load i32, i32* %780, align 8
  %782 = or i32 %781, %778
  store i32 %782, i32* %780, align 8
  br label %783

783:                                              ; preds = %775, %767
  %784 = load i32, i32* %5, align 4
  %785 = load i32, i32* @S_IXOTH, align 4
  %786 = and i32 %784, %785
  %787 = icmp ne i32 %786, 0
  br i1 %787, label %788, label %794

788:                                              ; preds = %783
  %789 = load i32, i32* @ACL_EXECUTE, align 4
  %790 = load %struct.acl_entry*, %struct.acl_entry** %18, align 8
  %791 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %790, i32 0, i32 3
  %792 = load i32, i32* %791, align 8
  %793 = or i32 %792, %789
  store i32 %793, i32* %791, align 8
  br label %800

794:                                              ; preds = %783
  %795 = load i32, i32* @ACL_EXECUTE, align 4
  %796 = load %struct.acl_entry*, %struct.acl_entry** %17, align 8
  %797 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %796, i32 0, i32 3
  %798 = load i32, i32* %797, align 8
  %799 = or i32 %798, %795
  store i32 %799, i32* %797, align 8
  br label %800

800:                                              ; preds = %794, %788
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.acl_entry* @_acl_duplicate_entry(%struct.acl*, i32) #1

declare dso_local i32 @_acl_entry_matches(%struct.acl_entry*, i64, i32, i64) #1

declare dso_local %struct.acl_entry* @_acl_append(%struct.acl*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
