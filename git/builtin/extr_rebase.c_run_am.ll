; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rebase.c_run_am.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rebase.c_run_am.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i64, i64, i32 }
%struct.strbuf = type { i8* }
%struct.rebase_options = type { i8*, i64, i32, %struct.TYPE_16__, i32, i32, i32, %struct.TYPE_15__*, %struct.TYPE_13__, %struct.TYPE_12__*, %struct.TYPE_10__*, i64, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"am\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"--resolved\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"--resolvemsg=%s\00", align 1
@resolvemsg = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"skip\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"--skip\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"show-current-patch\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"--show-current-patch\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%s...%s\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"rebased-patches\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"could not open '%s' for writing\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"format-patch\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-k\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"--stdout\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"--full-index\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"--cherry-pick\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"--right-only\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"--src-prefix=a/\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"--dst-prefix=b/\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"--no-renames\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"--no-cover-letter\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"--pretty=mboxrd\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"--topo-order\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"^%s\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"checkout\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.26 = private unnamed_addr constant [127 x i8] c"\0Agit encountered an error while preparing the patches to replay\0Athese revisions:\0A\0A    %s\0A\0AAs a result, git cannot rebase them.\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [32 x i8] c"could not open '%s' for reading\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"--rebasing\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"--patch-format=mboxrd\00", align 1
@RERERE_AUTOUPDATE = common dso_local global i64 0, align 8
@.str.30 = private unnamed_addr constant [20 x i8] c"--rerere-autoupdate\00", align 1
@RERERE_NOAUTOUPDATE = common dso_local global i64 0, align 8
@.str.31 = private unnamed_addr constant [23 x i8] c"--no-rerere-autoupdate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rebase_options*)* @run_am to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_am(%struct.rebase_options* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rebase_options*, align 8
  %4 = alloca %struct.child_process, align 8
  %5 = alloca %struct.child_process, align 8
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.rebase_options* %0, %struct.rebase_options** %3, align 8
  %9 = bitcast %struct.child_process* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 32, i1 false)
  %10 = bitcast %struct.child_process* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 32, i1 false)
  %11 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %12 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 3
  %14 = call i32 @argv_array_push(i32* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %16 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %15, i32 0, i32 12
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %1
  %20 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %21 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %20, i32 0, i32 12
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %50, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 3
  %27 = call i32 @argv_array_push(i32* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %28 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 3
  %29 = load i32, i32* @resolvemsg, align 4
  %30 = call i32 @argv_array_pushf(i32* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %32 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 3
  %37 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %38 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @argv_array_push(i32* %36, i8* %39)
  br label %41

41:                                               ; preds = %35, %25
  %42 = call i32 @run_command(%struct.child_process* %4)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %279

47:                                               ; preds = %41
  %48 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %49 = call i32 @move_to_original_branch(%struct.rebase_options* %48)
  store i32 %49, i32* %2, align 4
  br label %279

50:                                               ; preds = %19, %1
  %51 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %52 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %51, i32 0, i32 12
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %57 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %56, i32 0, i32 12
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %75, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 3
  %63 = call i32 @argv_array_push(i32* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %64 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 3
  %65 = load i32, i32* @resolvemsg, align 4
  %66 = call i32 @argv_array_pushf(i32* %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = call i32 @run_command(%struct.child_process* %4)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %279

72:                                               ; preds = %61
  %73 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %74 = call i32 @move_to_original_branch(%struct.rebase_options* %73)
  store i32 %74, i32* %2, align 4
  br label %279

75:                                               ; preds = %55, %50
  %76 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %77 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %76, i32 0, i32 12
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %82 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %81, i32 0, i32 12
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @strcmp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 3
  %88 = call i32 @argv_array_push(i32* %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %89 = call i32 @run_command(%struct.child_process* %4)
  store i32 %89, i32* %2, align 4
  br label %279

90:                                               ; preds = %80, %75
  %91 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %92 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %91, i32 0, i32 11
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %97 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %96, i32 0, i32 10
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  br label %107

101:                                              ; preds = %90
  %102 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %103 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %102, i32 0, i32 9
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  br label %107

107:                                              ; preds = %101, %95
  %108 = phi i32* [ %100, %95 ], [ %106, %101 ]
  %109 = call i32 @oid_to_hex(i32* %108)
  %110 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %111 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %110, i32 0, i32 6
  %112 = call i32 @oid_to_hex(i32* %111)
  %113 = call i32 @strbuf_addf(%struct.strbuf* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %109, i32 %112)
  %114 = call i32 @git_path(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %115 = call i8* @xstrdup(i32 %114)
  store i8* %115, i8** %8, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = load i32, i32* @O_WRONLY, align 4
  %118 = load i32, i32* @O_CREAT, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @O_TRUNC, align 4
  %121 = or i32 %119, %120
  %122 = call i8* (i8*, i32, ...) @open(i8* %116, i32 %121, i32 438)
  %123 = ptrtoint i8* %122 to i64
  %124 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 1
  store i64 %123, i64* %124, align 8
  %125 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %107
  %129 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %130 = load i8*, i8** %8, align 8
  %131 = call i32 @error_errno(i32 %129, i8* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i8*, i8** %8, align 8
  %133 = call i32 @free(i8* %132)
  %134 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 3
  %135 = call i32 @argv_array_clear(i32* %134)
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %2, align 4
  br label %279

137:                                              ; preds = %107
  %138 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 0
  store i32 1, i32* %138, align 8
  %139 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 3
  %140 = call i32 @argv_array_pushl(i32* %139, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i32* null)
  %141 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %142 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %141, i32 0, i32 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %137
  %147 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 3
  %148 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %149 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %148, i32 0, i32 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @argv_array_split(i32* %147, i32 %151)
  br label %153

153:                                              ; preds = %146, %137
  %154 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 3
  %155 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @argv_array_push(i32* %154, i8* %156)
  %158 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %159 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %158, i32 0, i32 7
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %159, align 8
  %161 = icmp ne %struct.TYPE_15__* %160, null
  br i1 %161, label %162, label %171

162:                                              ; preds = %153
  %163 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 3
  %164 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %165 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %164, i32 0, i32 7
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = call i32 @oid_to_hex(i32* %168)
  %170 = call i32 @argv_array_pushf(i32* %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i32 %169)
  br label %171

171:                                              ; preds = %162, %153
  %172 = call i32 @run_command(%struct.child_process* %5)
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* %7, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %195

175:                                              ; preds = %171
  %176 = load i8*, i8** %8, align 8
  %177 = call i32 @unlink(i8* %176)
  %178 = load i8*, i8** %8, align 8
  %179 = call i32 @free(i8* %178)
  %180 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 3
  %181 = call i32 @argv_array_clear(i32* %180)
  %182 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %183 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %182, i32 0, i32 6
  %184 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %185 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @reset_head(i32* %183, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i32 %186, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i32* null)
  %188 = call i32 @_(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.26, i64 0, i64 0))
  %189 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %190 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @error(i32 %188, i32 %191)
  %193 = call i32 @strbuf_release(%struct.strbuf* %6)
  %194 = load i32, i32* %7, align 4
  store i32 %194, i32* %2, align 4
  br label %279

195:                                              ; preds = %171
  %196 = call i32 @strbuf_release(%struct.strbuf* %6)
  %197 = load i8*, i8** %8, align 8
  %198 = load i32, i32* @O_RDONLY, align 4
  %199 = call i8* (i8*, i32, ...) @open(i8* %197, i32 %198)
  %200 = ptrtoint i8* %199 to i64
  %201 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 2
  store i64 %200, i64* %201, align 8
  %202 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = icmp slt i64 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %195
  %206 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i64 0, i64 0))
  %207 = load i8*, i8** %8, align 8
  %208 = call i32 @error_errno(i32 %206, i8* %207)
  store i32 %208, i32* %7, align 4
  %209 = load i8*, i8** %8, align 8
  %210 = call i32 @free(i8* %209)
  %211 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 3
  %212 = call i32 @argv_array_clear(i32* %211)
  %213 = load i32, i32* %7, align 4
  store i32 %213, i32* %2, align 4
  br label %279

214:                                              ; preds = %195
  %215 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 3
  %216 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %217 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @argv_array_pushv(i32* %215, i32 %219)
  %221 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 3
  %222 = call i32 @argv_array_push(i32* %221, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0))
  %223 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 3
  %224 = load i32, i32* @resolvemsg, align 4
  %225 = call i32 @argv_array_pushf(i32* %223, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %224)
  %226 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 3
  %227 = call i32 @argv_array_push(i32* %226, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i64 0, i64 0))
  %228 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %229 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @RERERE_AUTOUPDATE, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %214
  %234 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 3
  %235 = call i32 @argv_array_push(i32* %234, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0))
  br label %246

236:                                              ; preds = %214
  %237 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %238 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @RERERE_NOAUTOUPDATE, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %236
  %243 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 3
  %244 = call i32 @argv_array_push(i32* %243, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0))
  br label %245

245:                                              ; preds = %242, %236
  br label %246

246:                                              ; preds = %245, %233
  %247 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %248 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %247, i32 0, i32 0
  %249 = load i8*, i8** %248, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %251, label %257

251:                                              ; preds = %246
  %252 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 3
  %253 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %254 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %253, i32 0, i32 0
  %255 = load i8*, i8** %254, align 8
  %256 = call i32 @argv_array_push(i32* %252, i8* %255)
  br label %257

257:                                              ; preds = %251, %246
  %258 = call i32 @run_command(%struct.child_process* %4)
  store i32 %258, i32* %7, align 4
  %259 = load i8*, i8** %8, align 8
  %260 = call i32 @unlink(i8* %259)
  %261 = load i8*, i8** %8, align 8
  %262 = call i32 @free(i8* %261)
  %263 = load i32, i32* %7, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %268, label %265

265:                                              ; preds = %257
  %266 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %267 = call i32 @move_to_original_branch(%struct.rebase_options* %266)
  store i32 %267, i32* %2, align 4
  br label %279

268:                                              ; preds = %257
  %269 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %270 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = call i64 @is_directory(i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %268
  %275 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %276 = call i32 @rebase_write_basic_state(%struct.rebase_options* %275)
  br label %277

277:                                              ; preds = %274, %268
  %278 = load i32, i32* %7, align 4
  store i32 %278, i32* %2, align 4
  br label %279

279:                                              ; preds = %277, %265, %205, %175, %128, %86, %72, %70, %47, %45
  %280 = load i32, i32* %2, align 4
  ret i32 %280
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i32 @strcmp(i8*, i64) #2

declare dso_local i32 @argv_array_pushf(i32*, i8*, i32) #2

declare dso_local i32 @run_command(%struct.child_process*) #2

declare dso_local i32 @move_to_original_branch(%struct.rebase_options*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i32) #2

declare dso_local i32 @oid_to_hex(i32*) #2

declare dso_local i8* @xstrdup(i32) #2

declare dso_local i32 @git_path(i8*) #2

declare dso_local i8* @open(i8*, i32, ...) #2

declare dso_local i32 @error_errno(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @argv_array_clear(i32*) #2

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32*) #2

declare dso_local i32 @argv_array_split(i32*, i32) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @reset_head(i32*, i8*, i32, i32, i8*, i32*) #2

declare dso_local i32 @error(i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @argv_array_pushv(i32*, i32) #2

declare dso_local i64 @is_directory(i32) #2

declare dso_local i32 @rebase_write_basic_state(%struct.rebase_options*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
