; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_update.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.command = type { i8*, i32, i64, %struct.object_id, %struct.object_id }
%struct.object_id = type { i32 }
%struct.shallow_info = type { i64* }
%struct.object = type { i64 }
%struct.commit = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@update.namespaced_name = internal global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"refs/\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"refusing to create funny ref '%s' remotely\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"funny refname\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@deny_current_branch = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"updating the current branch\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"refusing to update checked out branch: %s\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"branch is currently checked out\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"unpack should have generated %s, but I can't find it!\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"bad pack\00", align 1
@deny_deletes = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"denying ref deletion for %s\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"deletion prohibited\00", align 1
@head_name = common dso_local global i64 0, align 8
@deny_delete_current = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"deleting the current branch\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"refusing to delete the current branch: %s\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"deletion of the current branch prohibited\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"Invalid denyDeleteCurrent setting\00", align 1
@deny_non_fast_forwards = common dso_local global i64 0, align 8
@the_repository = common dso_local global i32 0, align 4
@OBJ_COMMIT = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [24 x i8] c"bad sha1 objects for %s\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"bad ref\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"denying non-fast-forward %s (you should pull first)\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"non-fast-forward\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"hook declined to update %s\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"hook declined\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"Allowing deletion of corrupt ref.\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"Deleting a non-existent ref.\00", align 1
@transaction = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"failed to delete\00", align 1
@shallow_update = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [14 x i8] c"shallow error\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"failed to update ref\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.command*, %struct.shallow_info*)* @update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @update(%struct.command* %0, %struct.shallow_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca %struct.shallow_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.object*, align 8
  %13 = alloca %struct.object*, align 8
  %14 = alloca %struct.commit*, align 8
  %15 = alloca %struct.commit*, align 8
  %16 = alloca %struct.strbuf, align 8
  %17 = alloca %struct.strbuf, align 8
  store %struct.command* %0, %struct.command** %4, align 8
  store %struct.shallow_info* %1, %struct.shallow_info** %5, align 8
  %18 = load %struct.command*, %struct.command** %4, align 8
  %19 = getelementptr inbounds %struct.command, %struct.command* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %6, align 8
  %21 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %22 = load %struct.command*, %struct.command** %4, align 8
  %23 = getelementptr inbounds %struct.command, %struct.command* %22, i32 0, i32 4
  store %struct.object_id* %23, %struct.object_id** %9, align 8
  %24 = load %struct.command*, %struct.command** %4, align 8
  %25 = getelementptr inbounds %struct.command, %struct.command* %24, i32 0, i32 3
  store %struct.object_id* %25, %struct.object_id** %10, align 8
  store i32 0, i32* %11, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @starts_with(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 5
  %32 = call i64 @check_refname_format(i8* %31, i32 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %2
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @rp_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %259

37:                                               ; preds = %29
  %38 = call i32 (...) @get_git_namespace()
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %38, i8* %39)
  %41 = load i8*, i8** @update.namespaced_name, align 8
  %42 = call i32 @free(i8* %41)
  %43 = call i8* @strbuf_detach(%struct.strbuf* %7, i32* null)
  store i8* %43, i8** @update.namespaced_name, align 8
  %44 = load i8*, i8** @update.namespaced_name, align 8
  %45 = call i64 @is_ref_checked_out(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %37
  %48 = load i32, i32* @deny_current_branch, align 4
  switch i32 %48, label %61 [
    i32 132, label %49
    i32 128, label %50
    i32 131, label %52
    i32 130, label %52
    i32 129, label %60
  ]

49:                                               ; preds = %47
  br label %61

50:                                               ; preds = %47
  %51 = call i32 @rp_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %61

52:                                               ; preds = %47, %47
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @rp_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* @deny_current_branch, align 4
  %56 = icmp eq i32 %55, 130
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 (...) @refuse_unconfigured_deny()
  br label %59

59:                                               ; preds = %57, %52
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %259

60:                                               ; preds = %47
  store i32 1, i32* %11, align 4
  br label %61

61:                                               ; preds = %47, %60, %50, %49
  br label %62

62:                                               ; preds = %61, %37
  %63 = load %struct.object_id*, %struct.object_id** %10, align 8
  %64 = call i64 @is_null_oid(%struct.object_id* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %62
  %67 = load %struct.object_id*, %struct.object_id** %10, align 8
  %68 = call i32 @has_object_file(%struct.object_id* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load %struct.object_id*, %struct.object_id** %10, align 8
  %72 = call i8* @oid_to_hex(%struct.object_id* %71)
  %73 = call i32 @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i8* %72)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %259

74:                                               ; preds = %66, %62
  %75 = load %struct.object_id*, %struct.object_id** %9, align 8
  %76 = call i64 @is_null_oid(%struct.object_id* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %116, label %78

78:                                               ; preds = %74
  %79 = load %struct.object_id*, %struct.object_id** %10, align 8
  %80 = call i64 @is_null_oid(%struct.object_id* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %116

82:                                               ; preds = %78
  %83 = load i64, i64* @deny_deletes, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i8*, i8** %6, align 8
  %87 = call i64 @starts_with(i8* %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @rp_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8* %90)
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %259

92:                                               ; preds = %85, %82
  %93 = load i64, i64* @head_name, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %115

95:                                               ; preds = %92
  %96 = load i8*, i8** @update.namespaced_name, align 8
  %97 = load i64, i64* @head_name, align 8
  %98 = call i32 @strcmp(i8* %96, i64 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %115, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* @deny_delete_current, align 4
  switch i32 %101, label %113 [
    i32 132, label %102
    i32 128, label %103
    i32 131, label %105
    i32 130, label %105
    i32 129, label %105
  ]

102:                                              ; preds = %100
  br label %114

103:                                              ; preds = %100
  %104 = call i32 @rp_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  br label %114

105:                                              ; preds = %100, %100, %100
  %106 = load i32, i32* @deny_delete_current, align 4
  %107 = icmp eq i32 %106, 130
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = call i32 (...) @refuse_unconfigured_deny_delete_current()
  br label %110

110:                                              ; preds = %108, %105
  %111 = load i8*, i8** %6, align 8
  %112 = call i32 @rp_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i8* %111)
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %259

113:                                              ; preds = %100
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %259

114:                                              ; preds = %103, %102
  br label %115

115:                                              ; preds = %114, %95, %92
  br label %116

116:                                              ; preds = %115, %78, %74
  %117 = load i64, i64* @deny_non_fast_forwards, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %171

119:                                              ; preds = %116
  %120 = load %struct.object_id*, %struct.object_id** %10, align 8
  %121 = call i64 @is_null_oid(%struct.object_id* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %171, label %123

123:                                              ; preds = %119
  %124 = load %struct.object_id*, %struct.object_id** %9, align 8
  %125 = call i64 @is_null_oid(%struct.object_id* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %171, label %127

127:                                              ; preds = %123
  %128 = load i8*, i8** %6, align 8
  %129 = call i64 @starts_with(i8* %128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %171

131:                                              ; preds = %127
  %132 = load i32, i32* @the_repository, align 4
  %133 = load %struct.object_id*, %struct.object_id** %9, align 8
  %134 = call %struct.object* @parse_object(i32 %132, %struct.object_id* %133)
  store %struct.object* %134, %struct.object** %12, align 8
  %135 = load i32, i32* @the_repository, align 4
  %136 = load %struct.object_id*, %struct.object_id** %10, align 8
  %137 = call %struct.object* @parse_object(i32 %135, %struct.object_id* %136)
  store %struct.object* %137, %struct.object** %13, align 8
  %138 = load %struct.object*, %struct.object** %12, align 8
  %139 = icmp ne %struct.object* %138, null
  br i1 %139, label %140, label %155

140:                                              ; preds = %131
  %141 = load %struct.object*, %struct.object** %13, align 8
  %142 = icmp ne %struct.object* %141, null
  br i1 %142, label %143, label %155

143:                                              ; preds = %140
  %144 = load %struct.object*, %struct.object** %12, align 8
  %145 = getelementptr inbounds %struct.object, %struct.object* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @OBJ_COMMIT, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %155, label %149

149:                                              ; preds = %143
  %150 = load %struct.object*, %struct.object** %13, align 8
  %151 = getelementptr inbounds %struct.object, %struct.object* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @OBJ_COMMIT, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149, %143, %140, %131
  %156 = load i8*, i8** %6, align 8
  %157 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i8* %156)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %259

158:                                              ; preds = %149
  %159 = load %struct.object*, %struct.object** %12, align 8
  %160 = bitcast %struct.object* %159 to %struct.commit*
  store %struct.commit* %160, %struct.commit** %14, align 8
  %161 = load %struct.object*, %struct.object** %13, align 8
  %162 = bitcast %struct.object* %161 to %struct.commit*
  store %struct.commit* %162, %struct.commit** %15, align 8
  %163 = load %struct.commit*, %struct.commit** %14, align 8
  %164 = load %struct.commit*, %struct.commit** %15, align 8
  %165 = call i32 @in_merge_bases(%struct.commit* %163, %struct.commit* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %158
  %168 = load i8*, i8** %6, align 8
  %169 = call i32 @rp_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.18, i64 0, i64 0), i8* %168)
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  br label %259

170:                                              ; preds = %158
  br label %171

171:                                              ; preds = %170, %127, %123, %119, %116
  %172 = load %struct.command*, %struct.command** %4, align 8
  %173 = call i64 @run_update_hook(%struct.command* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load i8*, i8** %6, align 8
  %177 = call i32 @rp_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i8* %176)
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  br label %259

178:                                              ; preds = %171
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %178
  %182 = load %struct.object_id*, %struct.object_id** %10, align 8
  %183 = getelementptr inbounds %struct.object_id, %struct.object_id* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i8* @update_worktree(i32 %184)
  store i8* %185, i8** %8, align 8
  %186 = load i8*, i8** %8, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %190

188:                                              ; preds = %181
  %189 = load i8*, i8** %8, align 8
  store i8* %189, i8** %3, align 8
  br label %259

190:                                              ; preds = %181
  br label %191

191:                                              ; preds = %190, %178
  %192 = load %struct.object_id*, %struct.object_id** %10, align 8
  %193 = call i64 @is_null_oid(%struct.object_id* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %225

195:                                              ; preds = %191
  %196 = bitcast %struct.strbuf* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %196, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %197 = load i32, i32* @the_repository, align 4
  %198 = load %struct.object_id*, %struct.object_id** %9, align 8
  %199 = call %struct.object* @parse_object(i32 %197, %struct.object_id* %198)
  %200 = icmp ne %struct.object* %199, null
  br i1 %200, label %212, label %201

201:                                              ; preds = %195
  store %struct.object_id* null, %struct.object_id** %9, align 8
  %202 = load i8*, i8** %6, align 8
  %203 = call i64 @ref_exists(i8* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %201
  %206 = call i32 @rp_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0))
  br label %211

207:                                              ; preds = %201
  %208 = call i32 @rp_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0))
  %209 = load %struct.command*, %struct.command** %4, align 8
  %210 = getelementptr inbounds %struct.command, %struct.command* %209, i32 0, i32 1
  store i32 1, i32* %210, align 8
  br label %211

211:                                              ; preds = %207, %205
  br label %212

212:                                              ; preds = %211, %195
  %213 = load i32, i32* @transaction, align 4
  %214 = load i8*, i8** @update.namespaced_name, align 8
  %215 = load %struct.object_id*, %struct.object_id** %9, align 8
  %216 = call i64 @ref_transaction_delete(i32 %213, i8* %214, %struct.object_id* %215, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), %struct.strbuf* %16)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %212
  %219 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 @rp_error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8* %220)
  %222 = call i32 @strbuf_release(%struct.strbuf* %16)
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i8** %3, align 8
  br label %259

223:                                              ; preds = %212
  %224 = call i32 @strbuf_release(%struct.strbuf* %16)
  store i8* null, i8** %3, align 8
  br label %259

225:                                              ; preds = %191
  %226 = bitcast %struct.strbuf* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %226, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %227 = load i64, i64* @shallow_update, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %245

229:                                              ; preds = %225
  %230 = load %struct.shallow_info*, %struct.shallow_info** %5, align 8
  %231 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %230, i32 0, i32 0
  %232 = load i64*, i64** %231, align 8
  %233 = load %struct.command*, %struct.command** %4, align 8
  %234 = getelementptr inbounds %struct.command, %struct.command* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds i64, i64* %232, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %229
  %240 = load %struct.command*, %struct.command** %4, align 8
  %241 = load %struct.shallow_info*, %struct.shallow_info** %5, align 8
  %242 = call i64 @update_shallow_ref(%struct.command* %240, %struct.shallow_info* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %239
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8** %3, align 8
  br label %259

245:                                              ; preds = %239, %229, %225
  %246 = load i32, i32* @transaction, align 4
  %247 = load i8*, i8** @update.namespaced_name, align 8
  %248 = load %struct.object_id*, %struct.object_id** %10, align 8
  %249 = load %struct.object_id*, %struct.object_id** %9, align 8
  %250 = call i64 @ref_transaction_update(i32 %246, i8* %247, %struct.object_id* %248, %struct.object_id* %249, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), %struct.strbuf* %17)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %245
  %253 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 0
  %254 = load i8*, i8** %253, align 8
  %255 = call i32 @rp_error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8* %254)
  %256 = call i32 @strbuf_release(%struct.strbuf* %17)
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i8** %3, align 8
  br label %259

257:                                              ; preds = %245
  %258 = call i32 @strbuf_release(%struct.strbuf* %17)
  store i8* null, i8** %3, align 8
  br label %259

259:                                              ; preds = %257, %252, %244, %223, %218, %188, %175, %167, %155, %113, %110, %89, %70, %59, %34
  %260 = load i8*, i8** %3, align 8
  ret i8* %260
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @starts_with(i8*, i8*) #2

declare dso_local i64 @check_refname_format(i8*, i32) #2

declare dso_local i32 @rp_error(i8*, i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i8*) #2

declare dso_local i32 @get_git_namespace(...) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i64 @is_ref_checked_out(i8*) #2

declare dso_local i32 @rp_warning(i8*) #2

declare dso_local i32 @refuse_unconfigured_deny(...) #2

declare dso_local i64 @is_null_oid(%struct.object_id*) #2

declare dso_local i32 @has_object_file(%struct.object_id*) #2

declare dso_local i32 @error(i8*, i8*) #2

declare dso_local i8* @oid_to_hex(%struct.object_id*) #2

declare dso_local i32 @strcmp(i8*, i64) #2

declare dso_local i32 @refuse_unconfigured_deny_delete_current(...) #2

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #2

declare dso_local i32 @in_merge_bases(%struct.commit*, %struct.commit*) #2

declare dso_local i64 @run_update_hook(%struct.command*) #2

declare dso_local i8* @update_worktree(i32) #2

declare dso_local i64 @ref_exists(i8*) #2

declare dso_local i64 @ref_transaction_delete(i32, i8*, %struct.object_id*, i32, i8*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i64 @update_shallow_ref(%struct.command*, %struct.shallow_info*) #2

declare dso_local i64 @ref_transaction_update(i32, i8*, %struct.object_id*, %struct.object_id*, i32, i8*, %struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
