; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_checkout_paths.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_checkout_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }
%struct.cache_entry = type { i32, i32 }
%struct.checkout_opts = type { i64, i32, i64, i64, i64, i64, i64, i32, i64, %struct.TYPE_5__, i64, i32, i32, i32, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.object_id = type { i32 }
%struct.commit = type { i32 }

@checkout_paths.ps_matched = internal global i8* null, align 8
@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"patch\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@BRANCH_TRACK_UNSPECIFIED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"'%s' cannot be used with updating paths\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"--track\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"--detach\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"'%s' cannot be used with %s\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"--merge\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"--patch\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.10 = private unnamed_addr constant [64 x i8] c"Cannot update paths and switch to branch '%s' at the same time.\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"neither '%s' or '%s' is specified\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"--staged\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"--worktree\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"'%s' must be used when '%s' is not specified\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"--source\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"'%s' or '%s' cannot be used with %s\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"--ours\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"--theirs\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"--conflict\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"--patch=checkout\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"--patch=reset\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"--patch=worktree\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"either flag must have been set, worktree=%d, index=%d\00", align 1
@the_repository = common dso_local global i32 0, align 4
@LOCK_DIE_ON_ERROR = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [19 x i8] c"index file corrupt\00", align 1
@active_nr = common dso_local global i32 0, align 4
@active_cache = common dso_local global %struct.cache_entry** null, align 8
@the_index = common dso_local global i32 0, align 4
@CE_MATCHED = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [22 x i8] c"path '%s' is unmerged\00", align 1
@COMMIT_LOCK = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [31 x i8] c"unable to write new index file\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.checkout_opts*, i8*)* @checkout_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_paths(%struct.checkout_opts* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.checkout_opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.object_id, align 4
  %8 = alloca %struct.commit*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lock_file, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.cache_entry*, align 8
  store %struct.checkout_opts* %0, %struct.checkout_opts** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %14 = bitcast %struct.lock_file* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  %15 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %16 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %15, i32 0, i32 10
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  %21 = call i32 @trace2_cmd_mode(i8* %20)
  %22 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %23 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BRANCH_TRACK_UNSPECIFIED, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 (i32, ...) @die(i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %2
  %31 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %32 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %31, i32 0, i32 15
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i32 (i32, ...) @die(i32 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %40 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %39, i32 0, i32 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %45 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %44, i32 0, i32 10
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %51 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %50, i32 0, i32 13
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i32, ...) @die(i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %48, %43, %38
  %55 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %56 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %55, i32 0, i32 14
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %61 = call i32 (i32, ...) @die(i32 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %54
  %63 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %64 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %69 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %68, i32 0, i32 10
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %74 = call i32 (i32, ...) @die(i32 %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %67, %62
  %76 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %77 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %76, i32 0, i32 8
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %82 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %87 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %88 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %87, i32 0, i32 13
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32, ...) @die(i32 %86, i32 %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %91

91:                                               ; preds = %85, %80, %75
  %92 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %93 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %92, i32 0, i32 12
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = call i32 @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.10, i64 0, i64 0))
  %98 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %99 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %98, i32 0, i32 12
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, ...) @die(i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %96, %91
  %103 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %104 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %102
  %108 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %109 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %114 = call i32 (i32, ...) @die(i32 %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %107, %102
  %116 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %117 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %128, label %120

120:                                              ; preds = %115
  %121 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %122 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %121, i32 0, i32 11
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %120
  %126 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0))
  %127 = call i32 (i32, ...) @die(i32 %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %120, %115
  %129 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %130 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %128
  %134 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %135 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %133
  %139 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %140 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %139, i32 0, i32 6
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0))
  %145 = call i32 (i32, ...) @die(i32 %144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %138, %133, %128
  %147 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %148 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %164

151:                                              ; preds = %146
  %152 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %153 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %151
  %157 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %158 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0))
  %163 = call i32 (i32, ...) @die(i32 %162, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %164

164:                                              ; preds = %161, %156, %151, %146
  %165 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %166 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %165, i32 0, i32 10
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %218

169:                                              ; preds = %164
  %170 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %171 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %176 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i8** %12, align 8
  br label %212

180:                                              ; preds = %174, %169
  %181 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %182 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %187 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %185
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8** %12, align 8
  br label %211

191:                                              ; preds = %185, %180
  %192 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %193 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %202, label %196

196:                                              ; preds = %191
  %197 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %198 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8** %12, align 8
  br label %210

202:                                              ; preds = %196, %191
  %203 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %204 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %207 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @BUG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.23, i64 0, i64 0), i64 %205, i32 %208)
  br label %210

210:                                              ; preds = %202, %201
  br label %211

211:                                              ; preds = %210, %190
  br label %212

212:                                              ; preds = %211, %179
  %213 = load i8*, i8** %5, align 8
  %214 = load i8*, i8** %12, align 8
  %215 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %216 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %215, i32 0, i32 9
  %217 = call i32 @run_add_interactive(i8* %213, i8* %214, %struct.TYPE_5__* %216)
  store i32 %217, i32* %3, align 4
  br label %437

218:                                              ; preds = %164
  %219 = load i32, i32* @the_repository, align 4
  %220 = load i32, i32* @LOCK_DIE_ON_ERROR, align 4
  %221 = call i32 @repo_hold_locked_index(i32 %219, %struct.lock_file* %10, i32 %220)
  %222 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %223 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %222, i32 0, i32 9
  %224 = call i64 @read_cache_preload(%struct.TYPE_5__* %223)
  %225 = icmp slt i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %218
  %227 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0))
  %228 = call i32 (i32, ...) @error(i32 %227)
  store i32 %228, i32* %3, align 4
  br label %437

229:                                              ; preds = %218
  %230 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %231 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %229
  %235 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %236 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %239 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %238, i32 0, i32 9
  %240 = call i32 @read_tree_some(i64 %237, %struct.TYPE_5__* %239)
  br label %241

241:                                              ; preds = %234, %229
  %242 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %243 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %242, i32 0, i32 9
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = call i8* @xcalloc(i32 %245, i32 1)
  store i8* %246, i8** @checkout_paths.ps_matched, align 8
  store i32 0, i32* %6, align 4
  br label %247

247:                                              ; preds = %275, %241
  %248 = load i32, i32* %6, align 4
  %249 = load i32, i32* @active_nr, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %278

251:                                              ; preds = %247
  %252 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %253 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %252, i32 0, i32 5
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %251
  %257 = load %struct.cache_entry**, %struct.cache_entry*** @active_cache, align 8
  %258 = load i32, i32* %6, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %257, i64 %259
  %261 = load %struct.cache_entry*, %struct.cache_entry** %260, align 8
  %262 = load i8*, i8** @checkout_paths.ps_matched, align 8
  %263 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %264 = call i32 @mark_ce_for_checkout_overlay(%struct.cache_entry* %261, i8* %262, %struct.checkout_opts* %263)
  br label %274

265:                                              ; preds = %251
  %266 = load %struct.cache_entry**, %struct.cache_entry*** @active_cache, align 8
  %267 = load i32, i32* %6, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %266, i64 %268
  %270 = load %struct.cache_entry*, %struct.cache_entry** %269, align 8
  %271 = load i8*, i8** @checkout_paths.ps_matched, align 8
  %272 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %273 = call i32 @mark_ce_for_checkout_no_overlay(%struct.cache_entry* %270, i8* %271, %struct.checkout_opts* %272)
  br label %274

274:                                              ; preds = %265, %256
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %6, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %6, align 4
  br label %247

278:                                              ; preds = %247
  %279 = load i8*, i8** @checkout_paths.ps_matched, align 8
  %280 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %281 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %280, i32 0, i32 9
  %282 = call i64 @report_path_error(i8* %279, %struct.TYPE_5__* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %278
  %285 = load i8*, i8** @checkout_paths.ps_matched, align 8
  %286 = call i32 @free(i8* %285)
  store i32 1, i32* %3, align 4
  br label %437

287:                                              ; preds = %278
  %288 = load i8*, i8** @checkout_paths.ps_matched, align 8
  %289 = call i32 @free(i8* %288)
  %290 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %291 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %290, i32 0, i32 4
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %287
  %295 = call i32 @unmerge_marked_index(i32* @the_index)
  br label %296

296:                                              ; preds = %294, %287
  store i32 0, i32* %6, align 4
  br label %297

297:                                              ; preds = %377, %296
  %298 = load i32, i32* %6, align 4
  %299 = load i32, i32* @active_nr, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %380

301:                                              ; preds = %297
  %302 = load %struct.cache_entry**, %struct.cache_entry*** @active_cache, align 8
  %303 = load i32, i32* %6, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %302, i64 %304
  %306 = load %struct.cache_entry*, %struct.cache_entry** %305, align 8
  store %struct.cache_entry* %306, %struct.cache_entry** %13, align 8
  %307 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %308 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @CE_MATCHED, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %376

313:                                              ; preds = %301
  %314 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %315 = call i32 @ce_stage(%struct.cache_entry* %314)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %318, label %317

317:                                              ; preds = %313
  br label %377

318:                                              ; preds = %313
  %319 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %320 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %319, i32 0, i32 8
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %335

323:                                              ; preds = %318
  %324 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %325 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %324, i32 0, i32 7
  %326 = load i32, i32* %325, align 8
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %334, label %328

328:                                              ; preds = %323
  %329 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0))
  %330 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %331 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @warning(i32 %329, i32 %332)
  br label %334

334:                                              ; preds = %328, %323
  br label %371

335:                                              ; preds = %318
  %336 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %337 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %336, i32 0, i32 6
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %352

340:                                              ; preds = %335
  %341 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %342 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %341, i32 0, i32 6
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %345 = load i32, i32* %6, align 4
  %346 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %347 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %346, i32 0, i32 5
  %348 = load i64, i64* %347, align 8
  %349 = call i32 @check_stage(i64 %343, %struct.cache_entry* %344, i32 %345, i64 %348)
  %350 = load i32, i32* %9, align 4
  %351 = or i32 %350, %349
  store i32 %351, i32* %9, align 4
  br label %370

352:                                              ; preds = %335
  %353 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %354 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %353, i32 0, i32 4
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %363

357:                                              ; preds = %352
  %358 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %359 = load i32, i32* %6, align 4
  %360 = call i32 @check_stages(i32 12, %struct.cache_entry* %358, i32 %359)
  %361 = load i32, i32* %9, align 4
  %362 = or i32 %361, %360
  store i32 %362, i32* %9, align 4
  br label %369

363:                                              ; preds = %352
  store i32 1, i32* %9, align 4
  %364 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0))
  %365 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %366 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = call i32 (i32, ...) @error(i32 %364, i32 %367)
  br label %369

369:                                              ; preds = %363, %357
  br label %370

370:                                              ; preds = %369, %340
  br label %371

371:                                              ; preds = %370, %334
  %372 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %373 = load i32, i32* %6, align 4
  %374 = call i32 @skip_same_name(%struct.cache_entry* %372, i32 %373)
  %375 = sub nsw i32 %374, 1
  store i32 %375, i32* %6, align 4
  br label %376

376:                                              ; preds = %371, %301
  br label %377

377:                                              ; preds = %376, %317
  %378 = load i32, i32* %6, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %6, align 4
  br label %297

380:                                              ; preds = %297
  %381 = load i32, i32* %9, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %384

383:                                              ; preds = %380
  store i32 1, i32* %3, align 4
  br label %437

384:                                              ; preds = %380
  %385 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %386 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %385, i32 0, i32 3
  %387 = load i64, i64* %386, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %394

389:                                              ; preds = %384
  %390 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %391 = call i32 @checkout_worktree(%struct.checkout_opts* %390)
  %392 = load i32, i32* %9, align 4
  %393 = or i32 %392, %391
  store i32 %393, i32* %9, align 4
  br label %394

394:                                              ; preds = %389, %384
  %395 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %396 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %395, i32 0, i32 3
  %397 = load i64, i64* %396, align 8
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %410

399:                                              ; preds = %394
  %400 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %401 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 8
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %410, label %404

404:                                              ; preds = %399
  %405 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %406 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %405, i32 0, i32 2
  %407 = load i64, i64* %406, align 8
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %410, label %409

409:                                              ; preds = %404
  store i32 1, i32* %11, align 4
  br label %414

410:                                              ; preds = %404, %399, %394
  %411 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %412 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 8
  store i32 %413, i32* %11, align 4
  br label %414

414:                                              ; preds = %410, %409
  %415 = load i32, i32* %11, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %425

417:                                              ; preds = %414
  %418 = load i32, i32* @COMMIT_LOCK, align 4
  %419 = call i64 @write_locked_index(i32* @the_index, %struct.lock_file* %10, i32 %418)
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %424

421:                                              ; preds = %417
  %422 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0))
  %423 = call i32 (i32, ...) @die(i32 %422)
  br label %424

424:                                              ; preds = %421, %417
  br label %427

425:                                              ; preds = %414
  %426 = call i32 @rollback_lock_file(%struct.lock_file* %10)
  br label %427

427:                                              ; preds = %425, %424
  %428 = call i32 @read_ref_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 0, %struct.object_id* %7, i32* null)
  %429 = load i32, i32* @the_repository, align 4
  %430 = call %struct.commit* @lookup_commit_reference_gently(i32 %429, %struct.object_id* %7, i32 1)
  store %struct.commit* %430, %struct.commit** %8, align 8
  %431 = load %struct.commit*, %struct.commit** %8, align 8
  %432 = load %struct.commit*, %struct.commit** %8, align 8
  %433 = call i32 @post_checkout_hook(%struct.commit* %431, %struct.commit* %432, i32 0)
  %434 = load i32, i32* %9, align 4
  %435 = or i32 %434, %433
  store i32 %435, i32* %9, align 4
  %436 = load i32, i32* %9, align 4
  store i32 %436, i32* %3, align 4
  br label %437

437:                                              ; preds = %427, %383, %284, %226, %212
  %438 = load i32, i32* %3, align 4
  ret i32 %438
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @trace2_cmd_mode(i8*) #2

declare dso_local i32 @die(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @BUG(i8*, i64, i32) #2

declare dso_local i32 @run_add_interactive(i8*, i8*, %struct.TYPE_5__*) #2

declare dso_local i32 @repo_hold_locked_index(i32, %struct.lock_file*, i32) #2

declare dso_local i64 @read_cache_preload(%struct.TYPE_5__*) #2

declare dso_local i32 @error(i32, ...) #2

declare dso_local i32 @read_tree_some(i64, %struct.TYPE_5__*) #2

declare dso_local i8* @xcalloc(i32, i32) #2

declare dso_local i32 @mark_ce_for_checkout_overlay(%struct.cache_entry*, i8*, %struct.checkout_opts*) #2

declare dso_local i32 @mark_ce_for_checkout_no_overlay(%struct.cache_entry*, i8*, %struct.checkout_opts*) #2

declare dso_local i64 @report_path_error(i8*, %struct.TYPE_5__*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @unmerge_marked_index(i32*) #2

declare dso_local i32 @ce_stage(%struct.cache_entry*) #2

declare dso_local i32 @warning(i32, i32) #2

declare dso_local i32 @check_stage(i64, %struct.cache_entry*, i32, i64) #2

declare dso_local i32 @check_stages(i32, %struct.cache_entry*, i32) #2

declare dso_local i32 @skip_same_name(%struct.cache_entry*, i32) #2

declare dso_local i32 @checkout_worktree(%struct.checkout_opts*) #2

declare dso_local i64 @write_locked_index(i32*, %struct.lock_file*, i32) #2

declare dso_local i32 @rollback_lock_file(%struct.lock_file*) #2

declare dso_local i32 @read_ref_full(i8*, i32, %struct.object_id*, i32*) #2

declare dso_local %struct.commit* @lookup_commit_reference_gently(i32, %struct.object_id*, i32) #2

declare dso_local i32 @post_checkout_hook(%struct.commit*, %struct.commit*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
