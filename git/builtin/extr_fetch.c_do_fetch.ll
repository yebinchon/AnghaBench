; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch.c_do_fetch.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch.c_do_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i64 }
%struct.transport = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.refspec }
%struct.refspec = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ref = type { i32, i32, %struct.ref* }
%struct.branch = type { i32 }

@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 8
@tags = common dso_local global i64 0, align 8
@TAGS_DEFAULT = common dso_local global i64 0, align 8
@TAGS_SET = common dso_local global i64 0, align 8
@TAGS_UNSET = common dso_local global i64 0, align 8
@append = common dso_local global i32 0, align 4
@dry_run = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"refs/tags/\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fetch\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"remote_refs\00", align 1
@the_repository = common dso_local global i32 0, align 4
@update_head_ok = common dso_local global i32 0, align 4
@TRANS_OPT_FOLLOWTAGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@prune = common dso_local global i64 0, align 8
@set_upstream = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"multiple branch detected, incompatible with --set-upstream\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"refs/remotes/\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"not setting upstream for a remote remote-tracking branch\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"not setting upstream for a remote tag\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"unknown branch type\00", align 1
@.str.11 = private unnamed_addr constant [95 x i8] c"no source branch found.\0Ayou need to specify exactly one branch with the --set-upstream option.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport*, %struct.refspec*)* @do_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_fetch(%struct.transport* %0, %struct.refspec* %1) #0 {
  %3 = alloca %struct.transport*, align 8
  %4 = alloca %struct.refspec*, align 8
  %5 = alloca %struct.ref*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ref*, align 8
  %9 = alloca %struct.argv_array, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.branch*, align 8
  %13 = alloca %struct.ref*, align 8
  %14 = alloca %struct.ref*, align 8
  %15 = alloca %struct.ref**, align 8
  store %struct.transport* %0, %struct.transport** %3, align 8
  store %struct.refspec* %1, %struct.refspec** %4, align 8
  %16 = load %struct.transport*, %struct.transport** %3, align 8
  %17 = getelementptr inbounds %struct.transport, %struct.transport* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 1
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %23 = bitcast %struct.argv_array* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 8, i1 false)
  store i32 1, i32* %10, align 4
  %24 = load i64, i64* @tags, align 8
  %25 = load i64, i64* @TAGS_DEFAULT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %2
  %28 = load %struct.transport*, %struct.transport** %3, align 8
  %29 = getelementptr inbounds %struct.transport, %struct.transport* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i64, i64* @TAGS_SET, align 8
  store i64 %35, i64* @tags, align 8
  br label %36

36:                                               ; preds = %34, %27
  %37 = load %struct.transport*, %struct.transport** %3, align 8
  %38 = getelementptr inbounds %struct.transport, %struct.transport* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i64, i64* @TAGS_UNSET, align 8
  store i64 %44, i64* @tags, align 8
  br label %45

45:                                               ; preds = %43, %36
  br label %46

46:                                               ; preds = %45, %2
  %47 = load i32, i32* @append, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @dry_run, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = call i32 (...) @truncate_fetch_head()
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %305

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57, %49, %46
  %59 = load %struct.refspec*, %struct.refspec** %4, align 8
  %60 = getelementptr inbounds %struct.refspec, %struct.refspec* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %58
  %64 = load %struct.refspec*, %struct.refspec** %4, align 8
  %65 = call i32 @refspec_ref_prefixes(%struct.refspec* %64, %struct.argv_array* %9)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %84, %63
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.refspec*, %struct.refspec** %4, align 8
  %69 = getelementptr inbounds %struct.refspec, %struct.refspec* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %66
  %73 = load %struct.refspec*, %struct.refspec** %4, align 8
  %74 = getelementptr inbounds %struct.refspec, %struct.refspec* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %72
  store i32 1, i32* %10, align 4
  br label %87

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %66

87:                                               ; preds = %82, %66
  br label %108

88:                                               ; preds = %58
  %89 = load %struct.transport*, %struct.transport** %3, align 8
  %90 = getelementptr inbounds %struct.transport, %struct.transport* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = icmp ne %struct.TYPE_4__* %91, null
  br i1 %92, label %93, label %107

93:                                               ; preds = %88
  %94 = load %struct.transport*, %struct.transport** %3, align 8
  %95 = getelementptr inbounds %struct.transport, %struct.transport* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.refspec, %struct.refspec* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %93
  %102 = load %struct.transport*, %struct.transport** %3, align 8
  %103 = getelementptr inbounds %struct.transport, %struct.transport* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = call i32 @refspec_ref_prefixes(%struct.refspec* %105, %struct.argv_array* %9)
  br label %107

107:                                              ; preds = %101, %93, %88
  br label %108

108:                                              ; preds = %107, %87
  %109 = load i64, i64* @tags, align 8
  %110 = load i64, i64* @TAGS_SET, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i64, i64* @tags, align 8
  %114 = load i64, i64* @TAGS_DEFAULT, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %112, %108
  store i32 1, i32* %10, align 4
  %117 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %9, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = call i32 @argv_array_push(%struct.argv_array* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %116
  br label %123

123:                                              ; preds = %122, %112
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load i32, i32* @the_repository, align 4
  %128 = call i32 @trace2_region_enter(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  %129 = load %struct.transport*, %struct.transport** %3, align 8
  %130 = call %struct.ref* @transport_get_remote_refs(%struct.transport* %129, %struct.argv_array* %9)
  store %struct.ref* %130, %struct.ref** %8, align 8
  %131 = load i32, i32* @the_repository, align 4
  %132 = call i32 @trace2_region_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  br label %134

133:                                              ; preds = %123
  store %struct.ref* null, %struct.ref** %8, align 8
  br label %134

134:                                              ; preds = %133, %126
  %135 = call i32 @argv_array_clear(%struct.argv_array* %9)
  %136 = load %struct.transport*, %struct.transport** %3, align 8
  %137 = getelementptr inbounds %struct.transport, %struct.transport* %136, i32 0, i32 0
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = load %struct.ref*, %struct.ref** %8, align 8
  %140 = load %struct.refspec*, %struct.refspec** %4, align 8
  %141 = load i64, i64* @tags, align 8
  %142 = call %struct.ref* @get_ref_map(%struct.TYPE_4__* %138, %struct.ref* %139, %struct.refspec* %140, i64 %141, i32* %6)
  store %struct.ref* %142, %struct.ref** %5, align 8
  %143 = load i32, i32* @update_head_ok, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %134
  %146 = load %struct.ref*, %struct.ref** %5, align 8
  %147 = call i32 @check_not_current_branch(%struct.ref* %146)
  br label %148

148:                                              ; preds = %145, %134
  %149 = load i64, i64* @tags, align 8
  %150 = load i64, i64* @TAGS_DEFAULT, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %148
  %153 = load i32, i32* %6, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = load %struct.transport*, %struct.transport** %3, align 8
  %157 = load i32, i32* @TRANS_OPT_FOLLOWTAGS, align 4
  %158 = call i32 @transport_set_option(%struct.transport* %156, i32 %157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %159

159:                                              ; preds = %155, %152, %148
  %160 = load i64, i64* @prune, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %185

162:                                              ; preds = %159
  %163 = load %struct.refspec*, %struct.refspec** %4, align 8
  %164 = getelementptr inbounds %struct.refspec, %struct.refspec* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %162
  %168 = load %struct.refspec*, %struct.refspec** %4, align 8
  %169 = load %struct.ref*, %struct.ref** %5, align 8
  %170 = load %struct.transport*, %struct.transport** %3, align 8
  %171 = getelementptr inbounds %struct.transport, %struct.transport* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @prune_refs(%struct.refspec* %168, %struct.ref* %169, i32 %172)
  br label %184

174:                                              ; preds = %162
  %175 = load %struct.transport*, %struct.transport** %3, align 8
  %176 = getelementptr inbounds %struct.transport, %struct.transport* %175, i32 0, i32 0
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 2
  %179 = load %struct.ref*, %struct.ref** %5, align 8
  %180 = load %struct.transport*, %struct.transport** %3, align 8
  %181 = getelementptr inbounds %struct.transport, %struct.transport* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @prune_refs(%struct.refspec* %178, %struct.ref* %179, i32 %182)
  br label %184

184:                                              ; preds = %174, %167
  br label %185

185:                                              ; preds = %184, %159
  %186 = load %struct.transport*, %struct.transport** %3, align 8
  %187 = load %struct.ref*, %struct.ref** %5, align 8
  %188 = call i64 @fetch_refs(%struct.transport* %186, %struct.ref* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %185
  %191 = load %struct.transport*, %struct.transport** %3, align 8
  %192 = load %struct.ref*, %struct.ref** %5, align 8
  %193 = call i64 @consume_refs(%struct.transport* %191, %struct.ref* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %190, %185
  %196 = load %struct.ref*, %struct.ref** %5, align 8
  %197 = call i32 @free_refs(%struct.ref* %196)
  store i32 1, i32* %7, align 4
  br label %305

198:                                              ; preds = %190
  %199 = load i64, i64* @set_upstream, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %282

201:                                              ; preds = %198
  %202 = call %struct.branch* @branch_get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store %struct.branch* %202, %struct.branch** %12, align 8
  store %struct.ref* null, %struct.ref** %14, align 8
  %203 = load %struct.ref*, %struct.ref** %5, align 8
  store %struct.ref* %203, %struct.ref** %13, align 8
  br label %204

204:                                              ; preds = %222, %201
  %205 = load %struct.ref*, %struct.ref** %13, align 8
  %206 = icmp ne %struct.ref* %205, null
  br i1 %206, label %207, label %226

207:                                              ; preds = %204
  %208 = load %struct.ref*, %struct.ref** %13, align 8
  %209 = getelementptr inbounds %struct.ref, %struct.ref* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %221, label %212

212:                                              ; preds = %207
  %213 = load %struct.ref*, %struct.ref** %14, align 8
  %214 = icmp ne %struct.ref* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = call i32 @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  %217 = call i32 @warning(i32 %216)
  br label %283

218:                                              ; preds = %212
  %219 = load %struct.ref*, %struct.ref** %13, align 8
  store %struct.ref* %219, %struct.ref** %14, align 8
  br label %220

220:                                              ; preds = %218
  br label %221

221:                                              ; preds = %220, %207
  br label %222

222:                                              ; preds = %221
  %223 = load %struct.ref*, %struct.ref** %13, align 8
  %224 = getelementptr inbounds %struct.ref, %struct.ref* %223, i32 0, i32 2
  %225 = load %struct.ref*, %struct.ref** %224, align 8
  store %struct.ref* %225, %struct.ref** %13, align 8
  br label %204

226:                                              ; preds = %204
  %227 = load %struct.ref*, %struct.ref** %14, align 8
  %228 = icmp ne %struct.ref* %227, null
  br i1 %228, label %229, label %278

229:                                              ; preds = %226
  %230 = load %struct.ref*, %struct.ref** %14, align 8
  %231 = getelementptr inbounds %struct.ref, %struct.ref* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @strcmp(i32 %232, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %229
  %236 = load %struct.ref*, %struct.ref** %14, align 8
  %237 = getelementptr inbounds %struct.ref, %struct.ref* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call i64 @starts_with(i32 %238, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %254

241:                                              ; preds = %235, %229
  %242 = load %struct.branch*, %struct.branch** %12, align 8
  %243 = getelementptr inbounds %struct.branch, %struct.branch* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.transport*, %struct.transport** %3, align 8
  %246 = getelementptr inbounds %struct.transport, %struct.transport* %245, i32 0, i32 0
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.ref*, %struct.ref** %14, align 8
  %251 = getelementptr inbounds %struct.ref, %struct.ref* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @install_branch_config(i32 0, i32 %244, i32 %249, i32 %252)
  br label %277

254:                                              ; preds = %235
  %255 = load %struct.ref*, %struct.ref** %14, align 8
  %256 = getelementptr inbounds %struct.ref, %struct.ref* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = call i64 @starts_with(i32 %257, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %254
  %261 = call i32 @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  %262 = call i32 @warning(i32 %261)
  br label %276

263:                                              ; preds = %254
  %264 = load %struct.ref*, %struct.ref** %14, align 8
  %265 = getelementptr inbounds %struct.ref, %struct.ref* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i64 @starts_with(i32 %266, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %263
  %270 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  %271 = call i32 @warning(i32 %270)
  br label %275

272:                                              ; preds = %263
  %273 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %274 = call i32 @warning(i32 %273)
  br label %275

275:                                              ; preds = %272, %269
  br label %276

276:                                              ; preds = %275, %260
  br label %277

277:                                              ; preds = %276, %241
  br label %281

278:                                              ; preds = %226
  %279 = call i32 @_(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.11, i64 0, i64 0))
  %280 = call i32 @warning(i32 %279)
  br label %281

281:                                              ; preds = %278, %277
  br label %282

282:                                              ; preds = %281, %198
  br label %283

283:                                              ; preds = %282, %215
  %284 = load %struct.ref*, %struct.ref** %5, align 8
  %285 = call i32 @free_refs(%struct.ref* %284)
  %286 = load i64, i64* @tags, align 8
  %287 = load i64, i64* @TAGS_DEFAULT, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %304

289:                                              ; preds = %283
  %290 = load i32, i32* %6, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %304

292:                                              ; preds = %289
  store %struct.ref** %5, %struct.ref*** %15, align 8
  store %struct.ref* null, %struct.ref** %5, align 8
  %293 = load %struct.ref*, %struct.ref** %8, align 8
  %294 = call i32 @find_non_local_tags(%struct.ref* %293, %struct.ref** %5, %struct.ref*** %15)
  %295 = load %struct.ref*, %struct.ref** %5, align 8
  %296 = icmp ne %struct.ref* %295, null
  br i1 %296, label %297, label %301

297:                                              ; preds = %292
  %298 = load %struct.transport*, %struct.transport** %3, align 8
  %299 = load %struct.ref*, %struct.ref** %5, align 8
  %300 = call i32 @backfill_tags(%struct.transport* %298, %struct.ref* %299)
  br label %301

301:                                              ; preds = %297, %292
  %302 = load %struct.ref*, %struct.ref** %5, align 8
  %303 = call i32 @free_refs(%struct.ref* %302)
  br label %304

304:                                              ; preds = %301, %289, %283
  br label %305

305:                                              ; preds = %304, %195, %56
  %306 = load i32, i32* %7, align 4
  ret i32 %306
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @truncate_fetch_head(...) #2

declare dso_local i32 @refspec_ref_prefixes(%struct.refspec*, %struct.argv_array*) #2

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #2

declare dso_local i32 @trace2_region_enter(i8*, i8*, i32) #2

declare dso_local %struct.ref* @transport_get_remote_refs(%struct.transport*, %struct.argv_array*) #2

declare dso_local i32 @trace2_region_leave(i8*, i8*, i32) #2

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #2

declare dso_local %struct.ref* @get_ref_map(%struct.TYPE_4__*, %struct.ref*, %struct.refspec*, i64, i32*) #2

declare dso_local i32 @check_not_current_branch(%struct.ref*) #2

declare dso_local i32 @transport_set_option(%struct.transport*, i32, i8*) #2

declare dso_local i32 @prune_refs(%struct.refspec*, %struct.ref*, i32) #2

declare dso_local i64 @fetch_refs(%struct.transport*, %struct.ref*) #2

declare dso_local i64 @consume_refs(%struct.transport*, %struct.ref*) #2

declare dso_local i32 @free_refs(%struct.ref*) #2

declare dso_local %struct.branch* @branch_get(i8*) #2

declare dso_local i32 @warning(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i64 @starts_with(i32, i8*) #2

declare dso_local i32 @install_branch_config(i32, i32, i32, i32) #2

declare dso_local i32 @find_non_local_tags(%struct.ref*, %struct.ref**, %struct.ref***) #2

declare dso_local i32 @backfill_tags(%struct.transport*, %struct.ref*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
