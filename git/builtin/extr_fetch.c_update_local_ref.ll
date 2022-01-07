; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch.c_update_local_ref.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch.c_update_local_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.ref = type { i8*, i32, i64, i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.branch = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"object %s not found\00", align 1
@verbosity = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"[up to date]\00", align 1
@update_head_ok = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"[rejected]\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"can't fetch in current branch\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"refs/tags/\00", align 1
@force = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"updating tag\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"[tag update]\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"unable to update local ref\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"would clobber existing tag\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"storing tag\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"[new tag]\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"storing head\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"[new branch]\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"storing ref\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"[new ref]\00", align 1
@fetch_show_forced_updates = common dso_local global i64 0, align 8
@forced_updates_ms = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"fast-forward\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"forced-update\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"forced update\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"non-fast-forward\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref*, i8*, %struct.ref*, %struct.strbuf*, i32)* @update_local_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_local_ref(%struct.ref* %0, i8* %1, %struct.ref* %2, %struct.strbuf* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ref*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ref*, align 8
  %10 = alloca %struct.strbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.commit*, align 8
  %13 = alloca %struct.commit*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.branch*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.strbuf, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.strbuf, align 8
  %27 = alloca i32, align 4
  store %struct.ref* %0, %struct.ref** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.ref* %2, %struct.ref** %9, align 8
  store %struct.strbuf* %3, %struct.strbuf** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.commit* null, %struct.commit** %12, align 8
  %28 = call %struct.branch* @branch_get(i32* null)
  store %struct.branch* %28, %struct.branch** %15, align 8
  %29 = load %struct.ref*, %struct.ref** %7, align 8
  %30 = getelementptr inbounds %struct.ref, %struct.ref* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @prettify_refname(i8* %31)
  store i8* %32, i8** %16, align 8
  store i32 0, i32* %17, align 4
  %33 = load i32, i32* @the_repository, align 4
  %34 = load %struct.ref*, %struct.ref** %7, align 8
  %35 = getelementptr inbounds %struct.ref, %struct.ref* %34, i32 0, i32 1
  %36 = call i32 @oid_object_info(i32 %33, i32* %35, i32* null)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ult i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %5
  %40 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.ref*, %struct.ref** %7, align 8
  %42 = getelementptr inbounds %struct.ref, %struct.ref* %41, i32 0, i32 1
  %43 = call i32 @oid_to_hex(i32* %42)
  %44 = call i32 @die(i8* %40, i32 %43)
  br label %45

45:                                               ; preds = %39, %5
  %46 = load %struct.ref*, %struct.ref** %7, align 8
  %47 = getelementptr inbounds %struct.ref, %struct.ref* %46, i32 0, i32 3
  %48 = load %struct.ref*, %struct.ref** %7, align 8
  %49 = getelementptr inbounds %struct.ref, %struct.ref* %48, i32 0, i32 1
  %50 = call i64 @oideq(i32* %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load i64, i64* @verbosity, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %57 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %16, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @format_display(%struct.strbuf* %56, i8 signext 61, i8* %57, i8* null, i8* %58, i8* %59, i32 %60)
  br label %62

62:                                               ; preds = %55, %52
  store i32 0, i32* %6, align 4
  br label %309

63:                                               ; preds = %45
  %64 = load %struct.branch*, %struct.branch** %15, align 8
  %65 = icmp ne %struct.branch* %64, null
  br i1 %65, label %66, label %94

66:                                               ; preds = %63
  %67 = load %struct.ref*, %struct.ref** %7, align 8
  %68 = getelementptr inbounds %struct.ref, %struct.ref* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.branch*, %struct.branch** %15, align 8
  %71 = getelementptr inbounds %struct.branch, %struct.branch* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @strcmp(i8* %69, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %94, label %75

75:                                               ; preds = %66
  %76 = load i64, i64* @update_head_ok, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %94, label %78

78:                                               ; preds = %75
  %79 = call i64 (...) @is_bare_repository()
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %94, label %81

81:                                               ; preds = %78
  %82 = load %struct.ref*, %struct.ref** %7, align 8
  %83 = getelementptr inbounds %struct.ref, %struct.ref* %82, i32 0, i32 3
  %84 = call i32 @is_null_oid(i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %81
  %87 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %88 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %89 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i8*, i8** %8, align 8
  %91 = load i8*, i8** %16, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @format_display(%struct.strbuf* %87, i8 signext 33, i8* %88, i8* %89, i8* %90, i8* %91, i32 %92)
  store i32 1, i32* %6, align 4
  br label %309

94:                                               ; preds = %81, %78, %75, %66, %63
  %95 = load %struct.ref*, %struct.ref** %7, align 8
  %96 = getelementptr inbounds %struct.ref, %struct.ref* %95, i32 0, i32 3
  %97 = call i32 @is_null_oid(i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %143, label %99

99:                                               ; preds = %94
  %100 = load %struct.ref*, %struct.ref** %7, align 8
  %101 = getelementptr inbounds %struct.ref, %struct.ref* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @starts_with(i8* %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %143

105:                                              ; preds = %99
  %106 = load i64, i64* @force, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %105
  %109 = load %struct.ref*, %struct.ref** %7, align 8
  %110 = getelementptr inbounds %struct.ref, %struct.ref* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %108, %105
  %114 = load %struct.ref*, %struct.ref** %7, align 8
  %115 = call i32 @s_update_ref(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), %struct.ref* %114, i32 0)
  store i32 %115, i32* %18, align 4
  %116 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %117 = load i32, i32* %18, align 4
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 33, i32 116
  %121 = trunc i32 %120 to i8
  %122 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %123 = load i32, i32* %18, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %113
  %126 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %128

127:                                              ; preds = %113
  br label %128

128:                                              ; preds = %127, %125
  %129 = phi i8* [ %126, %125 ], [ null, %127 ]
  %130 = load i8*, i8** %8, align 8
  %131 = load i8*, i8** %16, align 8
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @format_display(%struct.strbuf* %116, i8 signext %121, i8* %122, i8* %129, i8* %130, i8* %131, i32 %132)
  %134 = load i32, i32* %18, align 4
  store i32 %134, i32* %6, align 4
  br label %309

135:                                              ; preds = %108
  %136 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %137 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %138 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %139 = load i8*, i8** %8, align 8
  %140 = load i8*, i8** %16, align 8
  %141 = load i32, i32* %11, align 4
  %142 = call i32 @format_display(%struct.strbuf* %136, i8 signext 33, i8* %137, i8* %138, i8* %139, i8* %140, i32 %141)
  store i32 1, i32* %6, align 4
  br label %309

143:                                              ; preds = %99, %94
  %144 = load i32, i32* @the_repository, align 4
  %145 = load %struct.ref*, %struct.ref** %7, align 8
  %146 = getelementptr inbounds %struct.ref, %struct.ref* %145, i32 0, i32 3
  %147 = call %struct.commit* @lookup_commit_reference_gently(i32 %144, i32* %146, i32 1)
  store %struct.commit* %147, %struct.commit** %12, align 8
  %148 = load i32, i32* @the_repository, align 4
  %149 = load %struct.ref*, %struct.ref** %7, align 8
  %150 = getelementptr inbounds %struct.ref, %struct.ref* %149, i32 0, i32 1
  %151 = call %struct.commit* @lookup_commit_reference_gently(i32 %148, i32* %150, i32 1)
  store %struct.commit* %151, %struct.commit** %13, align 8
  %152 = load %struct.commit*, %struct.commit** %12, align 8
  %153 = icmp ne %struct.commit* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %143
  %155 = load %struct.commit*, %struct.commit** %13, align 8
  %156 = icmp ne %struct.commit* %155, null
  br i1 %156, label %204, label %157

157:                                              ; preds = %154, %143
  %158 = load %struct.ref*, %struct.ref** %9, align 8
  %159 = icmp ne %struct.ref* %158, null
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load %struct.ref*, %struct.ref** %9, align 8
  %162 = getelementptr inbounds %struct.ref, %struct.ref* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  br label %165

164:                                              ; preds = %157
  br label %165

165:                                              ; preds = %164, %160
  %166 = phi i8* [ %163, %160 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), %164 ]
  store i8* %166, i8** %22, align 8
  %167 = load i8*, i8** %22, align 8
  %168 = call i64 @starts_with(i8* %167, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8** %19, align 8
  %171 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  store i8* %171, i8** %20, align 8
  br label %181

172:                                              ; preds = %165
  %173 = load i8*, i8** %22, align 8
  %174 = call i64 @starts_with(i8* %173, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8** %19, align 8
  %177 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  store i8* %177, i8** %20, align 8
  br label %180

178:                                              ; preds = %172
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8** %19, align 8
  %179 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  store i8* %179, i8** %20, align 8
  br label %180

180:                                              ; preds = %178, %176
  br label %181

181:                                              ; preds = %180, %170
  %182 = load i8*, i8** %19, align 8
  %183 = load %struct.ref*, %struct.ref** %7, align 8
  %184 = call i32 @s_update_ref(i8* %182, %struct.ref* %183, i32 0)
  store i32 %184, i32* %21, align 4
  %185 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %186 = load i32, i32* %21, align 4
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i32 33, i32 42
  %190 = trunc i32 %189 to i8
  %191 = load i8*, i8** %20, align 8
  %192 = load i32, i32* %21, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %181
  %195 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %197

196:                                              ; preds = %181
  br label %197

197:                                              ; preds = %196, %194
  %198 = phi i8* [ %195, %194 ], [ null, %196 ]
  %199 = load i8*, i8** %8, align 8
  %200 = load i8*, i8** %16, align 8
  %201 = load i32, i32* %11, align 4
  %202 = call i32 @format_display(%struct.strbuf* %185, i8 signext %190, i8* %191, i8* %198, i8* %199, i8* %200, i32 %201)
  %203 = load i32, i32* %21, align 4
  store i32 %203, i32* %6, align 4
  br label %309

204:                                              ; preds = %154
  %205 = load i64, i64* @fetch_show_forced_updates, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %204
  %208 = call i32 (...) @getnanotime()
  store i32 %208, i32* %23, align 4
  %209 = load %struct.commit*, %struct.commit** %12, align 8
  %210 = load %struct.commit*, %struct.commit** %13, align 8
  %211 = call i32 @in_merge_bases(%struct.commit* %209, %struct.commit* %210)
  store i32 %211, i32* %17, align 4
  %212 = call i32 (...) @getnanotime()
  %213 = load i32, i32* %23, align 4
  %214 = sub nsw i32 %212, %213
  %215 = sdiv i32 %214, 1000000
  %216 = load i32, i32* @forced_updates_ms, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* @forced_updates_ms, align 4
  br label %219

218:                                              ; preds = %204
  store i32 1, i32* %17, align 4
  br label %219

219:                                              ; preds = %218, %207
  %220 = load i32, i32* %17, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %257

222:                                              ; preds = %219
  %223 = bitcast %struct.strbuf* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %223, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %224 = load %struct.commit*, %struct.commit** %12, align 8
  %225 = getelementptr inbounds %struct.commit, %struct.commit* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 0
  %227 = load i32, i32* @DEFAULT_ABBREV, align 4
  %228 = call i32 @strbuf_add_unique_abbrev(%struct.strbuf* %24, i32* %226, i32 %227)
  %229 = call i32 @strbuf_addstr(%struct.strbuf* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %230 = load %struct.ref*, %struct.ref** %7, align 8
  %231 = getelementptr inbounds %struct.ref, %struct.ref* %230, i32 0, i32 1
  %232 = load i32, i32* @DEFAULT_ABBREV, align 4
  %233 = call i32 @strbuf_add_unique_abbrev(%struct.strbuf* %24, i32* %231, i32 %232)
  %234 = load %struct.ref*, %struct.ref** %7, align 8
  %235 = call i32 @s_update_ref(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), %struct.ref* %234, i32 1)
  store i32 %235, i32* %25, align 4
  %236 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %237 = load i32, i32* %25, align 4
  %238 = icmp ne i32 %237, 0
  %239 = zext i1 %238 to i64
  %240 = select i1 %238, i32 33, i32 32
  %241 = trunc i32 %240 to i8
  %242 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %24, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = load i32, i32* %25, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %222
  %247 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %249

248:                                              ; preds = %222
  br label %249

249:                                              ; preds = %248, %246
  %250 = phi i8* [ %247, %246 ], [ null, %248 ]
  %251 = load i8*, i8** %8, align 8
  %252 = load i8*, i8** %16, align 8
  %253 = load i32, i32* %11, align 4
  %254 = call i32 @format_display(%struct.strbuf* %236, i8 signext %241, i8* %243, i8* %250, i8* %251, i8* %252, i32 %253)
  %255 = call i32 @strbuf_release(%struct.strbuf* %24)
  %256 = load i32, i32* %25, align 4
  store i32 %256, i32* %6, align 4
  br label %309

257:                                              ; preds = %219
  %258 = load i64, i64* @force, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %265, label %260

260:                                              ; preds = %257
  %261 = load %struct.ref*, %struct.ref** %7, align 8
  %262 = getelementptr inbounds %struct.ref, %struct.ref* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %301

265:                                              ; preds = %260, %257
  %266 = bitcast %struct.strbuf* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %266, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %267 = load %struct.commit*, %struct.commit** %12, align 8
  %268 = getelementptr inbounds %struct.commit, %struct.commit* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 0
  %270 = load i32, i32* @DEFAULT_ABBREV, align 4
  %271 = call i32 @strbuf_add_unique_abbrev(%struct.strbuf* %26, i32* %269, i32 %270)
  %272 = call i32 @strbuf_addstr(%struct.strbuf* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %273 = load %struct.ref*, %struct.ref** %7, align 8
  %274 = getelementptr inbounds %struct.ref, %struct.ref* %273, i32 0, i32 1
  %275 = load i32, i32* @DEFAULT_ABBREV, align 4
  %276 = call i32 @strbuf_add_unique_abbrev(%struct.strbuf* %26, i32* %274, i32 %275)
  %277 = load %struct.ref*, %struct.ref** %7, align 8
  %278 = call i32 @s_update_ref(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), %struct.ref* %277, i32 1)
  store i32 %278, i32* %27, align 4
  %279 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %280 = load i32, i32* %27, align 4
  %281 = icmp ne i32 %280, 0
  %282 = zext i1 %281 to i64
  %283 = select i1 %281, i32 33, i32 43
  %284 = trunc i32 %283 to i8
  %285 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %26, i32 0, i32 0
  %286 = load i8*, i8** %285, align 8
  %287 = load i32, i32* %27, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %265
  %290 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %293

291:                                              ; preds = %265
  %292 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0))
  br label %293

293:                                              ; preds = %291, %289
  %294 = phi i8* [ %290, %289 ], [ %292, %291 ]
  %295 = load i8*, i8** %8, align 8
  %296 = load i8*, i8** %16, align 8
  %297 = load i32, i32* %11, align 4
  %298 = call i32 @format_display(%struct.strbuf* %279, i8 signext %284, i8* %286, i8* %294, i8* %295, i8* %296, i32 %297)
  %299 = call i32 @strbuf_release(%struct.strbuf* %26)
  %300 = load i32, i32* %27, align 4
  store i32 %300, i32* %6, align 4
  br label %309

301:                                              ; preds = %260
  %302 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %303 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %304 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  %305 = load i8*, i8** %8, align 8
  %306 = load i8*, i8** %16, align 8
  %307 = load i32, i32* %11, align 4
  %308 = call i32 @format_display(%struct.strbuf* %302, i8 signext 33, i8* %303, i8* %304, i8* %305, i8* %306, i32 %307)
  store i32 1, i32* %6, align 4
  br label %309

309:                                              ; preds = %301, %293, %249, %197, %135, %128, %86, %62
  %310 = load i32, i32* %6, align 4
  ret i32 %310
}

declare dso_local %struct.branch* @branch_get(i32*) #1

declare dso_local i8* @prettify_refname(i8*) #1

declare dso_local i32 @oid_object_info(i32, i32*, i32*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i64 @oideq(i32*, i32*) #1

declare dso_local i32 @format_display(%struct.strbuf*, i8 signext, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i64 @is_bare_repository(...) #1

declare dso_local i32 @is_null_oid(i32*) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @s_update_ref(i8*, %struct.ref*, i32) #1

declare dso_local %struct.commit* @lookup_commit_reference_gently(i32, i32*, i32) #1

declare dso_local i32 @getnanotime(...) #1

declare dso_local i32 @in_merge_bases(%struct.commit*, %struct.commit*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_add_unique_abbrev(%struct.strbuf*, i32*, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
