; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_am.c_am_setup.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_am.c_am_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.am_state = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Patch format detection failed.\00", align 1
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to create directory '%s'\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"REBASE_HEAD\00", align 1
@REF_NO_DEREF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to split patches.\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"threeway\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"sign\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"rerere-autoupdate\00", align 1
@RERERE_AUTOUPDATE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"invalid value for state->keep\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"messageid\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"invalid value for state->scissors\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"scissors\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"apply-opt\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"rebasing\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"applying\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"abort-safety\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"am\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"ORIG_HEAD\00", align 1
@UPDATE_REFS_DIE_ON_ERR = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.am_state*, i32, i8**, i32)* @am_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am_setup(%struct.am_state* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca %struct.am_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_id, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.strbuf, align 8
  store %struct.am_state* %0, %struct.am_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i8**, i8*** %7, align 8
  %17 = call i32 @detect_patch_format(i8** %16)
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %15, %4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @fprintf_ln(i32 %22, i32 %23)
  %25 = call i32 @exit(i32 128) #4
  unreachable

26:                                               ; preds = %18
  %27 = load %struct.am_state*, %struct.am_state** %5, align 8
  %28 = getelementptr inbounds %struct.am_state, %struct.am_state* %27, i32 0, i32 12
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @mkdir(i32 %29, i32 511)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @EEXIST, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.am_state*, %struct.am_state** %5, align 8
  %39 = getelementptr inbounds %struct.am_state, %struct.am_state* %38, i32 0, i32 12
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @die_errno(i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %36, %32, %26
  %43 = load i32, i32* @REF_NO_DEREF, align 4
  %44 = call i32 @delete_ref(i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %43)
  %45 = load %struct.am_state*, %struct.am_state** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i8**, i8*** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @split_mail(%struct.am_state* %45, i32 %46, i8** %47, i32 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load %struct.am_state*, %struct.am_state** %5, align 8
  %53 = call i32 @am_destroy(%struct.am_state* %52)
  %54 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %55 = call i32 @die(i32 %54)
  br label %56

56:                                               ; preds = %51, %42
  %57 = load %struct.am_state*, %struct.am_state** %5, align 8
  %58 = getelementptr inbounds %struct.am_state, %struct.am_state* %57, i32 0, i32 10
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.am_state*, %struct.am_state** %5, align 8
  %63 = getelementptr inbounds %struct.am_state, %struct.am_state* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %64

64:                                               ; preds = %61, %56
  %65 = load %struct.am_state*, %struct.am_state** %5, align 8
  %66 = load %struct.am_state*, %struct.am_state** %5, align 8
  %67 = getelementptr inbounds %struct.am_state, %struct.am_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @write_state_bool(%struct.am_state* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  %70 = load %struct.am_state*, %struct.am_state** %5, align 8
  %71 = load %struct.am_state*, %struct.am_state** %5, align 8
  %72 = getelementptr inbounds %struct.am_state, %struct.am_state* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @write_state_bool(%struct.am_state* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %73)
  %75 = load %struct.am_state*, %struct.am_state** %5, align 8
  %76 = load %struct.am_state*, %struct.am_state** %5, align 8
  %77 = getelementptr inbounds %struct.am_state, %struct.am_state* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @write_state_bool(%struct.am_state* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %78)
  %80 = load %struct.am_state*, %struct.am_state** %5, align 8
  %81 = load %struct.am_state*, %struct.am_state** %5, align 8
  %82 = getelementptr inbounds %struct.am_state, %struct.am_state* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @write_state_bool(%struct.am_state* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %83)
  %85 = load %struct.am_state*, %struct.am_state** %5, align 8
  %86 = getelementptr inbounds %struct.am_state, %struct.am_state* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %64
  %90 = load %struct.am_state*, %struct.am_state** %5, align 8
  %91 = load %struct.am_state*, %struct.am_state** %5, align 8
  %92 = getelementptr inbounds %struct.am_state, %struct.am_state* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @RERERE_AUTOUPDATE, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @write_state_bool(%struct.am_state* %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %89, %64
  %99 = load %struct.am_state*, %struct.am_state** %5, align 8
  %100 = getelementptr inbounds %struct.am_state, %struct.am_state* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  switch i32 %101, label %105 [
    i32 133, label %102
    i32 131, label %103
    i32 132, label %104
  ]

102:                                              ; preds = %98
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %10, align 8
  br label %107

103:                                              ; preds = %98
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8** %10, align 8
  br label %107

104:                                              ; preds = %98
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8** %10, align 8
  br label %107

105:                                              ; preds = %98
  %106 = call i32 @BUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %104, %103, %102
  %108 = load %struct.am_state*, %struct.am_state** %5, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = call i32 @write_state_text(%struct.am_state* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %109)
  %111 = load %struct.am_state*, %struct.am_state** %5, align 8
  %112 = load %struct.am_state*, %struct.am_state** %5, align 8
  %113 = getelementptr inbounds %struct.am_state, %struct.am_state* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @write_state_bool(%struct.am_state* %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %114)
  %116 = load %struct.am_state*, %struct.am_state** %5, align 8
  %117 = getelementptr inbounds %struct.am_state, %struct.am_state* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 8
  switch i32 %118, label %122 [
    i32 128, label %119
    i32 130, label %120
    i32 129, label %121
  ]

119:                                              ; preds = %107
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8** %10, align 8
  br label %124

120:                                              ; preds = %107
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %10, align 8
  br label %124

121:                                              ; preds = %107
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8** %10, align 8
  br label %124

122:                                              ; preds = %107
  %123 = call i32 @BUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %121, %120, %119
  %125 = load %struct.am_state*, %struct.am_state** %5, align 8
  %126 = load i8*, i8** %10, align 8
  %127 = call i32 @write_state_text(%struct.am_state* %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* %126)
  %128 = load %struct.am_state*, %struct.am_state** %5, align 8
  %129 = getelementptr inbounds %struct.am_state, %struct.am_state* %128, i32 0, i32 11
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @sq_quote_argv(%struct.strbuf* %11, i32 %131)
  %133 = load %struct.am_state*, %struct.am_state** %5, align 8
  %134 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @write_state_text(%struct.am_state* %133, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* %135)
  %137 = load %struct.am_state*, %struct.am_state** %5, align 8
  %138 = getelementptr inbounds %struct.am_state, %struct.am_state* %137, i32 0, i32 10
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %124
  %142 = load %struct.am_state*, %struct.am_state** %5, align 8
  %143 = call i32 @write_state_text(%struct.am_state* %142, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0))
  br label %147

144:                                              ; preds = %124
  %145 = load %struct.am_state*, %struct.am_state** %5, align 8
  %146 = call i32 @write_state_text(%struct.am_state* %145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %141
  %148 = call i32 @get_oid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), %struct.object_id* %9)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %162, label %150

150:                                              ; preds = %147
  %151 = load %struct.am_state*, %struct.am_state** %5, align 8
  %152 = call i8* @oid_to_hex(%struct.object_id* %9)
  %153 = call i32 @write_state_text(%struct.am_state* %151, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8* %152)
  %154 = load %struct.am_state*, %struct.am_state** %5, align 8
  %155 = getelementptr inbounds %struct.am_state, %struct.am_state* %154, i32 0, i32 10
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %150
  %159 = load i32, i32* @UPDATE_REFS_DIE_ON_ERR, align 4
  %160 = call i32 @update_ref(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), %struct.object_id* %9, i32* null, i32 0, i32 %159)
  br label %161

161:                                              ; preds = %158, %150
  br label %172

162:                                              ; preds = %147
  %163 = load %struct.am_state*, %struct.am_state** %5, align 8
  %164 = call i32 @write_state_text(%struct.am_state* %163, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0))
  %165 = load %struct.am_state*, %struct.am_state** %5, align 8
  %166 = getelementptr inbounds %struct.am_state, %struct.am_state* %165, i32 0, i32 10
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %162
  %170 = call i32 @delete_ref(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i32* null, i32 0)
  br label %171

171:                                              ; preds = %169, %162
  br label %172

172:                                              ; preds = %171, %161
  %173 = load %struct.am_state*, %struct.am_state** %5, align 8
  %174 = load %struct.am_state*, %struct.am_state** %5, align 8
  %175 = getelementptr inbounds %struct.am_state, %struct.am_state* %174, i32 0, i32 9
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @write_state_count(%struct.am_state* %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i32 %176)
  %178 = load %struct.am_state*, %struct.am_state** %5, align 8
  %179 = load %struct.am_state*, %struct.am_state** %5, align 8
  %180 = getelementptr inbounds %struct.am_state, %struct.am_state* %179, i32 0, i32 8
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @write_state_count(%struct.am_state* %178, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %181)
  %183 = call i32 @strbuf_release(%struct.strbuf* %11)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @detect_patch_format(i8**) #2

declare dso_local i32 @fprintf_ln(i32, i32) #2

declare dso_local i32 @_(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @mkdir(i32, i32) #2

declare dso_local i32 @die_errno(i32, i32) #2

declare dso_local i32 @delete_ref(i32*, i8*, i32*, i32) #2

declare dso_local i64 @split_mail(%struct.am_state*, i32, i8**, i32) #2

declare dso_local i32 @am_destroy(%struct.am_state*) #2

declare dso_local i32 @die(i32) #2

declare dso_local i32 @write_state_bool(%struct.am_state*, i8*, i32) #2

declare dso_local i32 @BUG(i8*) #2

declare dso_local i32 @write_state_text(%struct.am_state*, i8*, i8*) #2

declare dso_local i32 @sq_quote_argv(%struct.strbuf*, i32) #2

declare dso_local i32 @get_oid(i8*, %struct.object_id*) #2

declare dso_local i8* @oid_to_hex(%struct.object_id*) #2

declare dso_local i32 @update_ref(i8*, i8*, %struct.object_id*, i32*, i32, i32) #2

declare dso_local i32 @write_state_count(%struct.am_state*, i8*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
