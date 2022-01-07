; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_update_refs_for_switch.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_update_refs_for_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.checkout_opts = type { i8*, i8*, i64, i32, i64, i64, i32, i32 }
%struct.branch_info = type { i8*, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"refs/heads/%s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Can not do reflog for '%s': %s\0A\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"GIT_REFLOG_ACTION\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"checkout: moving from %s to %s\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"(invalid)\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@REF_NO_DEREF = common dso_local global i32 0, align 4
@UPDATE_REFS_DIE_ON_ERR = common dso_local global i32 0, align 4
@advice_detached_head = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"HEAD is now at\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"unable to update HEAD\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Reset branch '%s'\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Already on '%s'\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Switched to and reset branch '%s'\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Switched to a new branch '%s'\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Switched to branch '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.checkout_opts*, %struct.branch_info*, %struct.branch_info*)* @update_refs_for_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_refs_for_switch(%struct.checkout_opts* %0, %struct.branch_info* %1, %struct.branch_info* %2) #0 {
  %4 = alloca %struct.checkout_opts*, align 8
  %5 = alloca %struct.branch_info*, align 8
  %6 = alloca %struct.branch_info*, align 8
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.strbuf, align 8
  store %struct.checkout_opts* %0, %struct.checkout_opts** %4, align 8
  store %struct.branch_info* %1, %struct.branch_info** %5, align 8
  store %struct.branch_info* %2, %struct.branch_info** %6, align 8
  %13 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %14 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %15 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %97

18:                                               ; preds = %3
  %19 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %20 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %59

23:                                               ; preds = %18
  %24 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %25 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @mkpathdup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %26)
  store i8* %27, i8** %10, align 8
  %28 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %29 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %23
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @should_autocreate_reflog(i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %56, label %36

36:                                               ; preds = %32
  %37 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @safe_create_reflog(i8* %38, i32 1, %struct.strbuf* %12)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load i32, i32* @stderr, align 4
  %44 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %46 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %43, i8* %44, i8* %47, i8* %49)
  %51 = call i32 @strbuf_release(%struct.strbuf* %12)
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @free(i8* %52)
  br label %356

54:                                               ; preds = %36
  %55 = call i32 @strbuf_release(%struct.strbuf* %12)
  br label %56

56:                                               ; preds = %54, %32, %23
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @free(i8* %57)
  br label %89

59:                                               ; preds = %18
  %60 = load i32, i32* @the_repository, align 4
  %61 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %62 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %65 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %68 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 1, i32 0
  %73 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %74 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 1, i32 0
  %79 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %80 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %83 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %86 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @create_branch(i32 %60, i8* %63, i8* %66, i32 %72, i32 %78, i32 %81, i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %59, %56
  %90 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %91 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %94 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  %95 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %96 = call i32 @setup_branch_path(%struct.branch_info* %95)
  br label %97

97:                                               ; preds = %89, %3
  %98 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %99 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %8, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %115, label %103

103:                                              ; preds = %97
  %104 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %105 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %104, i32 0, i32 2
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = icmp ne %struct.TYPE_4__* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %110 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %109, i32 0, i32 2
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = call i8* @oid_to_hex(i32* %113)
  store i8* %114, i8** %8, align 8
  br label %115

115:                                              ; preds = %108, %103, %97
  %116 = call i8* @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i8* %116, i8** %9, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %131, label %119

119:                                              ; preds = %115
  %120 = load i8*, i8** %8, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i8*, i8** %8, align 8
  br label %125

124:                                              ; preds = %119
  br label %125

125:                                              ; preds = %124, %122
  %126 = phi i8* [ %123, %122 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %124 ]
  %127 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %128 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %126, i8* %129)
  br label %136

131:                                              ; preds = %115
  %132 = load i8*, i8** %9, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = call i32 @strlen(i8* %133)
  %135 = call i32 @strbuf_insert(%struct.strbuf* %7, i32 0, i8* %132, i32 %134)
  br label %136

136:                                              ; preds = %131, %125
  %137 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %138 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @strcmp(i8* %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %153, label %142

142:                                              ; preds = %136
  %143 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %144 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %153, label %147

147:                                              ; preds = %142
  %148 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %149 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %147
  br label %323

153:                                              ; preds = %147, %142, %136
  %154 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %155 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %160 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %203, label %163

163:                                              ; preds = %158, %153
  %164 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %167 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %166, i32 0, i32 2
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i32, i32* @REF_NO_DEREF, align 4
  %172 = load i32, i32* @UPDATE_REFS_DIE_ON_ERR, align 4
  %173 = call i32 @update_ref(i8* %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* %170, i32* null, i32 %171, i32 %172)
  %174 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %175 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %202, label %178

178:                                              ; preds = %163
  %179 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %180 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %196

183:                                              ; preds = %178
  %184 = load i64, i64* @advice_detached_head, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %196

186:                                              ; preds = %183
  %187 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %188 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %196, label %191

191:                                              ; preds = %186
  %192 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %193 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @detach_advice(i8* %194)
  br label %196

196:                                              ; preds = %191, %186, %183, %178
  %197 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %198 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %199 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %198, i32 0, i32 2
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = call i32 @describe_detached_head(i8* %197, %struct.TYPE_4__* %200)
  br label %202

202:                                              ; preds = %196, %163
  br label %322

203:                                              ; preds = %158
  %204 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %205 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %204, i32 0, i32 1
  %206 = load i8*, i8** %205, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %321

208:                                              ; preds = %203
  %209 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %210 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %209, i32 0, i32 1
  %211 = load i8*, i8** %210, align 8
  %212 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = call i64 @create_symref(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %211, i8* %213)
  %215 = icmp slt i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %208
  %217 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %218 = call i32 @die(i8* %217)
  br label %219

219:                                              ; preds = %216, %208
  %220 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %221 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %292, label %224

224:                                              ; preds = %219
  %225 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %226 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %225, i32 0, i32 1
  %227 = load i8*, i8** %226, align 8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %229, label %258

229:                                              ; preds = %224
  %230 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %231 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %230, i32 0, i32 1
  %232 = load i8*, i8** %231, align 8
  %233 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %234 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %233, i32 0, i32 1
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 @strcmp(i8* %232, i8* %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %258, label %238

238:                                              ; preds = %229
  %239 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %240 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %239, i32 0, i32 5
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %238
  %244 = load i32, i32* @stderr, align 4
  %245 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %246 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %247 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %246, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %244, i8* %245, i8* %248)
  br label %257

250:                                              ; preds = %238
  %251 = load i32, i32* @stderr, align 4
  %252 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %253 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %254 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %253, i32 0, i32 0
  %255 = load i8*, i8** %254, align 8
  %256 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %251, i8* %252, i8* %255)
  br label %257

257:                                              ; preds = %250, %243
  br label %291

258:                                              ; preds = %229, %224
  %259 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %260 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %259, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8
  %262 = icmp ne i8* %261, null
  br i1 %262, label %263, label %283

263:                                              ; preds = %258
  %264 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %265 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %264, i32 0, i32 4
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %275

268:                                              ; preds = %263
  %269 = load i32, i32* @stderr, align 4
  %270 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %271 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %272 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %271, i32 0, i32 0
  %273 = load i8*, i8** %272, align 8
  %274 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %269, i8* %270, i8* %273)
  br label %282

275:                                              ; preds = %263
  %276 = load i32, i32* @stderr, align 4
  %277 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %278 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %279 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %278, i32 0, i32 0
  %280 = load i8*, i8** %279, align 8
  %281 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %276, i8* %277, i8* %280)
  br label %282

282:                                              ; preds = %275, %268
  br label %290

283:                                              ; preds = %258
  %284 = load i32, i32* @stderr, align 4
  %285 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %286 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %287 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %286, i32 0, i32 0
  %288 = load i8*, i8** %287, align 8
  %289 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %284, i8* %285, i8* %288)
  br label %290

290:                                              ; preds = %283, %282
  br label %291

291:                                              ; preds = %290, %257
  br label %292

292:                                              ; preds = %291, %219
  %293 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %294 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %293, i32 0, i32 1
  %295 = load i8*, i8** %294, align 8
  %296 = icmp ne i8* %295, null
  br i1 %296, label %297, label %320

297:                                              ; preds = %292
  %298 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %299 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %298, i32 0, i32 0
  %300 = load i8*, i8** %299, align 8
  %301 = icmp ne i8* %300, null
  br i1 %301, label %302, label %320

302:                                              ; preds = %297
  %303 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %304 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %303, i32 0, i32 1
  %305 = load i8*, i8** %304, align 8
  %306 = call i32 @ref_exists(i8* %305)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %319, label %308

308:                                              ; preds = %302
  %309 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %310 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %309, i32 0, i32 1
  %311 = load i8*, i8** %310, align 8
  %312 = call i64 @reflog_exists(i8* %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %308
  %315 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %316 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %315, i32 0, i32 1
  %317 = load i8*, i8** %316, align 8
  %318 = call i32 @delete_reflog(i8* %317)
  br label %319

319:                                              ; preds = %314, %308, %302
  br label %320

320:                                              ; preds = %319, %297, %292
  br label %321

321:                                              ; preds = %320, %203
  br label %322

322:                                              ; preds = %321, %202
  br label %323

323:                                              ; preds = %322, %152
  %324 = load i32, i32* @the_repository, align 4
  %325 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %326 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 8
  %328 = icmp ne i32 %327, 0
  %329 = xor i1 %328, true
  %330 = zext i1 %329 to i32
  %331 = call i32 @remove_branch_state(i32 %324, i32 %330)
  %332 = call i32 @strbuf_release(%struct.strbuf* %7)
  %333 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %334 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 8
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %356, label %337

337:                                              ; preds = %323
  %338 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %339 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %338, i32 0, i32 1
  %340 = load i8*, i8** %339, align 8
  %341 = icmp ne i8* %340, null
  br i1 %341, label %353, label %342

342:                                              ; preds = %337
  %343 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %344 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %343, i32 0, i32 2
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %356, label %347

347:                                              ; preds = %342
  %348 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %349 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %348, i32 0, i32 0
  %350 = load i8*, i8** %349, align 8
  %351 = call i32 @strcmp(i8* %350, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %356, label %353

353:                                              ; preds = %347, %337
  %354 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %355 = call i32 @report_tracking(%struct.branch_info* %354)
  br label %356

356:                                              ; preds = %42, %353, %347, %342, %323
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @mkpathdup(i8*, i8*) #2

declare dso_local i32 @should_autocreate_reflog(i8*) #2

declare dso_local i32 @safe_create_reflog(i8*, i32, %struct.strbuf*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @create_branch(i32, i8*, i8*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @setup_branch_path(%struct.branch_info*) #2

declare dso_local i8* @oid_to_hex(i32*) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, i8*) #2

declare dso_local i32 @strbuf_insert(%struct.strbuf*, i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @update_ref(i8*, i8*, i32*, i32*, i32, i32) #2

declare dso_local i32 @detach_advice(i8*) #2

declare dso_local i32 @describe_detached_head(i8*, %struct.TYPE_4__*) #2

declare dso_local i64 @create_symref(i8*, i8*, i8*) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i32 @ref_exists(i8*) #2

declare dso_local i64 @reflog_exists(i8*) #2

declare dso_local i32 @delete_reflog(i8*) #2

declare dso_local i32 @remove_branch_state(i32, i32) #2

declare dso_local i32 @report_tracking(%struct.branch_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
