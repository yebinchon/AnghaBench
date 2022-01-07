; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_acl_nfs4.c_acl_nfs4_inherit_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_acl_nfs4.c_acl_nfs4_inherit_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl = type { i32, %struct.acl_entry* }
%struct.acl_entry = type { i32, i32, i64, i32 }

@ACL_MAX_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"parent_aclp->acl_cnt <= ACL_MAX_ENTRIES\00", align 1
@ACL_USER_OBJ = common dso_local global i32 0, align 4
@ACL_GROUP_OBJ = common dso_local global i32 0, align 4
@ACL_EVERYONE = common dso_local global i32 0, align 4
@ACL_ENTRY_DIRECTORY_INHERIT = common dso_local global i32 0, align 4
@ACL_ENTRY_FILE_INHERIT = common dso_local global i32 0, align 4
@ACL_ENTRY_NO_PROPAGATE_INHERIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"child_aclp->acl_cnt + 1 <= ACL_MAX_ENTRIES\00", align 1
@ACL_ENTRY_INHERIT_ONLY = common dso_local global i32 0, align 4
@ACL_ENTRY_INHERITED = common dso_local global i32 0, align 4
@ACL_ENTRY_TYPE_ALLOW = common dso_local global i64 0, align 8
@ACL_ENTRY_TYPE_DENY = common dso_local global i64 0, align 8
@ACL_WRITE_ACL = common dso_local global i32 0, align 4
@ACL_WRITE_OWNER = common dso_local global i32 0, align 4
@ACL_WRITE_NAMED_ATTRS = common dso_local global i32 0, align 4
@ACL_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@ACL_READ_DATA = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@ACL_WRITE_DATA = common dso_local global i32 0, align 4
@ACL_APPEND_DATA = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@ACL_EXECUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acl*, %struct.acl*, i32, i32, i32)* @acl_nfs4_inherit_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acl_nfs4_inherit_entries(%struct.acl* %0, %struct.acl* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.acl*, align 8
  %7 = alloca %struct.acl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.acl_entry*, align 8
  %15 = alloca %struct.acl_entry*, align 8
  store %struct.acl* %0, %struct.acl** %6, align 8
  store %struct.acl* %1, %struct.acl** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.acl*, %struct.acl** %6, align 8
  %17 = getelementptr inbounds %struct.acl, %struct.acl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ACL_MAX_ENTRIES, align 4
  %20 = icmp sle i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %244, %5
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.acl*, %struct.acl** %6, align 8
  %26 = getelementptr inbounds %struct.acl, %struct.acl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %247

29:                                               ; preds = %23
  %30 = load %struct.acl*, %struct.acl** %6, align 8
  %31 = getelementptr inbounds %struct.acl, %struct.acl* %30, i32 0, i32 1
  %32 = load %struct.acl_entry*, %struct.acl_entry** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %32, i64 %34
  store %struct.acl_entry* %35, %struct.acl_entry** %14, align 8
  %36 = load %struct.acl_entry*, %struct.acl_entry** %14, align 8
  %37 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %12, align 4
  %39 = load %struct.acl_entry*, %struct.acl_entry** %14, align 8
  %40 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @ACL_USER_OBJ, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %29
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @ACL_GROUP_OBJ, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @ACL_EVERYONE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %45, %29
  br label %244

54:                                               ; preds = %49
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @ACL_ENTRY_DIRECTORY_INHERIT, align 4
  %57 = load i32, i32* @ACL_ENTRY_FILE_INHERIT, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %244

62:                                               ; preds = %54
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @ACL_ENTRY_FILE_INHERIT, align 4
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %244

71:                                               ; preds = %65, %62
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @ACL_ENTRY_DIRECTORY_INHERIT, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @ACL_ENTRY_NO_PROPAGATE_INHERIT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %244

85:                                               ; preds = %79, %74, %71
  %86 = load %struct.acl*, %struct.acl** %7, align 8
  %87 = getelementptr inbounds %struct.acl, %struct.acl* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  %90 = load i32, i32* @ACL_MAX_ENTRIES, align 4
  %91 = icmp sle i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @KASSERT(i32 %92, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %94 = load %struct.acl*, %struct.acl** %7, align 8
  %95 = getelementptr inbounds %struct.acl, %struct.acl* %94, i32 0, i32 1
  %96 = load %struct.acl_entry*, %struct.acl_entry** %95, align 8
  %97 = load %struct.acl*, %struct.acl** %7, align 8
  %98 = getelementptr inbounds %struct.acl, %struct.acl* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %96, i64 %100
  store %struct.acl_entry* %101, %struct.acl_entry** %15, align 8
  %102 = load %struct.acl_entry*, %struct.acl_entry** %15, align 8
  %103 = load %struct.acl_entry*, %struct.acl_entry** %14, align 8
  %104 = bitcast %struct.acl_entry* %102 to i8*
  %105 = bitcast %struct.acl_entry* %103 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 8 %105, i64 24, i1 false)
  %106 = load %struct.acl*, %struct.acl** %7, align 8
  %107 = getelementptr inbounds %struct.acl, %struct.acl* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = load i32, i32* @ACL_ENTRY_INHERIT_ONLY, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.acl_entry*, %struct.acl_entry** %15, align 8
  %113 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load i32, i32* @ACL_ENTRY_INHERITED, align 4
  %117 = load %struct.acl_entry*, %struct.acl_entry** %15, align 8
  %118 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  %121 = load %struct.acl_entry*, %struct.acl_entry** %15, align 8
  %122 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %85
  %127 = load %struct.acl_entry*, %struct.acl_entry** %15, align 8
  %128 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @ACL_ENTRY_TYPE_DENY, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  br label %244

133:                                              ; preds = %126, %85
  %134 = load %struct.acl_entry*, %struct.acl_entry** %15, align 8
  %135 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @ACL_ENTRY_NO_PROPAGATE_INHERIT, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %133
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %156, label %143

143:                                              ; preds = %140, %133
  %144 = load i32, i32* @ACL_ENTRY_NO_PROPAGATE_INHERIT, align 4
  %145 = load i32, i32* @ACL_ENTRY_FILE_INHERIT, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @ACL_ENTRY_DIRECTORY_INHERIT, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @ACL_ENTRY_INHERIT_ONLY, align 4
  %150 = or i32 %148, %149
  %151 = xor i32 %150, -1
  %152 = load %struct.acl_entry*, %struct.acl_entry** %15, align 8
  %153 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = and i32 %154, %151
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %143, %140
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %179

159:                                              ; preds = %156
  %160 = load %struct.acl_entry*, %struct.acl_entry** %15, align 8
  %161 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @ACL_ENTRY_FILE_INHERIT, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %159
  %167 = load %struct.acl_entry*, %struct.acl_entry** %15, align 8
  %168 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @ACL_ENTRY_DIRECTORY_INHERIT, align 4
  %171 = and i32 %169, %170
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %166
  %174 = load i32, i32* @ACL_ENTRY_INHERIT_ONLY, align 4
  %175 = load %struct.acl_entry*, %struct.acl_entry** %15, align 8
  %176 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %173, %166, %159, %156
  %180 = load %struct.acl_entry*, %struct.acl_entry** %15, align 8
  %181 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %243

185:                                              ; preds = %179
  %186 = load %struct.acl_entry*, %struct.acl_entry** %15, align 8
  %187 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @ACL_ENTRY_INHERIT_ONLY, align 4
  %190 = and i32 %188, %189
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %243

192:                                              ; preds = %185
  %193 = load i32, i32* @ACL_WRITE_ACL, align 4
  %194 = load i32, i32* @ACL_WRITE_OWNER, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @ACL_WRITE_NAMED_ATTRS, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @ACL_WRITE_ATTRIBUTES, align 4
  %199 = or i32 %197, %198
  %200 = xor i32 %199, -1
  %201 = load %struct.acl_entry*, %struct.acl_entry** %15, align 8
  %202 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = and i32 %203, %200
  store i32 %204, i32* %202, align 8
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @S_IRGRP, align 4
  %207 = and i32 %205, %206
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %192
  %210 = load i32, i32* @ACL_READ_DATA, align 4
  %211 = xor i32 %210, -1
  %212 = load %struct.acl_entry*, %struct.acl_entry** %15, align 8
  %213 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = and i32 %214, %211
  store i32 %215, i32* %213, align 8
  br label %216

216:                                              ; preds = %209, %192
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* @S_IWGRP, align 4
  %219 = and i32 %217, %218
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %230

221:                                              ; preds = %216
  %222 = load i32, i32* @ACL_WRITE_DATA, align 4
  %223 = load i32, i32* @ACL_APPEND_DATA, align 4
  %224 = or i32 %222, %223
  %225 = xor i32 %224, -1
  %226 = load %struct.acl_entry*, %struct.acl_entry** %15, align 8
  %227 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = and i32 %228, %225
  store i32 %229, i32* %227, align 8
  br label %230

230:                                              ; preds = %221, %216
  %231 = load i32, i32* %8, align 4
  %232 = load i32, i32* @S_IXGRP, align 4
  %233 = and i32 %231, %232
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %230
  %236 = load i32, i32* @ACL_EXECUTE, align 4
  %237 = xor i32 %236, -1
  %238 = load %struct.acl_entry*, %struct.acl_entry** %15, align 8
  %239 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = and i32 %240, %237
  store i32 %241, i32* %239, align 8
  br label %242

242:                                              ; preds = %235, %230
  br label %243

243:                                              ; preds = %242, %185, %179
  br label %244

244:                                              ; preds = %243, %132, %84, %70, %61, %53
  %245 = load i32, i32* %11, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %11, align 4
  br label %23

247:                                              ; preds = %23
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
