; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_am.c_am_load.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_am.c_am_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.am_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i8*, i8* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"state file 'next' does not exist\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"state file 'last' does not exist\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"could not parse author script\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"original-commit\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"could not parse %s\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"threeway\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"sign\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"rerere-autoupdate\00", align 1
@RERERE_NOAUTOUPDATE = common dso_local global i64 0, align 8
@RERERE_AUTOUPDATE = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@KEEP_TRUE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@KEEP_NON_PATCH = common dso_local global i32 0, align 4
@KEEP_FALSE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"messageid\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"scissors\00", align 1
@SCISSORS_TRUE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@SCISSORS_FALSE = common dso_local global i32 0, align 4
@SCISSORS_UNSET = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"apply-opt\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"rebasing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.am_state*)* @am_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am_load(%struct.am_state* %0) #0 {
  %2 = alloca %struct.am_state*, align 8
  %3 = alloca %struct.strbuf, align 4
  store %struct.am_state* %0, %struct.am_state** %2, align 8
  %4 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %5 = load %struct.am_state*, %struct.am_state** %2, align 8
  %6 = call i64 @read_state_file(%struct.strbuf* %3, %struct.am_state* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @BUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @strtol(i32 %12, i32* null, i32 10)
  %14 = load %struct.am_state*, %struct.am_state** %2, align 8
  %15 = getelementptr inbounds %struct.am_state, %struct.am_state* %14, i32 0, i32 12
  store i8* %13, i8** %15, align 8
  %16 = load %struct.am_state*, %struct.am_state** %2, align 8
  %17 = call i64 @read_state_file(%struct.strbuf* %3, %struct.am_state* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = call i32 @BUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %10
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @strtol(i32 %23, i32* null, i32 10)
  %25 = load %struct.am_state*, %struct.am_state** %2, align 8
  %26 = getelementptr inbounds %struct.am_state, %struct.am_state* %25, i32 0, i32 11
  store i8* %24, i8** %26, align 8
  %27 = load %struct.am_state*, %struct.am_state** %2, align 8
  %28 = call i64 @read_am_author_script(%struct.am_state* %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %32 = call i32 (i32, ...) @die(i32 %31)
  br label %33

33:                                               ; preds = %30, %21
  %34 = load %struct.am_state*, %struct.am_state** %2, align 8
  %35 = call i32 @read_commit_msg(%struct.am_state* %34)
  %36 = load %struct.am_state*, %struct.am_state** %2, align 8
  %37 = call i64 @read_state_file(%struct.strbuf* %3, %struct.am_state* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.am_state*, %struct.am_state** %2, align 8
  %41 = getelementptr inbounds %struct.am_state, %struct.am_state* %40, i32 0, i32 10
  %42 = call i32 @oidclr(i32* %41)
  br label %56

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.am_state*, %struct.am_state** %2, align 8
  %47 = getelementptr inbounds %struct.am_state, %struct.am_state* %46, i32 0, i32 10
  %48 = call i64 @get_oid_hex(i32 %45, i32* %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %52 = load %struct.am_state*, %struct.am_state** %2, align 8
  %53 = call i32 @am_path(%struct.am_state* %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %54 = call i32 (i32, ...) @die(i32 %51, i32 %53)
  br label %55

55:                                               ; preds = %50, %43
  br label %56

56:                                               ; preds = %55, %39
  %57 = load %struct.am_state*, %struct.am_state** %2, align 8
  %58 = call i64 @read_state_file(%struct.strbuf* %3, %struct.am_state* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %59 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @strcmp(i32 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = load %struct.am_state*, %struct.am_state** %2, align 8
  %66 = getelementptr inbounds %struct.am_state, %struct.am_state* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.am_state*, %struct.am_state** %2, align 8
  %68 = call i64 @read_state_file(%struct.strbuf* %3, %struct.am_state* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 1)
  %69 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @strcmp(i32 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = load %struct.am_state*, %struct.am_state** %2, align 8
  %76 = getelementptr inbounds %struct.am_state, %struct.am_state* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.am_state*, %struct.am_state** %2, align 8
  %78 = call i64 @read_state_file(%struct.strbuf* %3, %struct.am_state* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 1)
  %79 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @strcmp(i32 %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = load %struct.am_state*, %struct.am_state** %2, align 8
  %86 = getelementptr inbounds %struct.am_state, %struct.am_state* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.am_state*, %struct.am_state** %2, align 8
  %88 = call i64 @read_state_file(%struct.strbuf* %3, %struct.am_state* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 1)
  %89 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @strcmp(i32 %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = load %struct.am_state*, %struct.am_state** %2, align 8
  %96 = getelementptr inbounds %struct.am_state, %struct.am_state* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load %struct.am_state*, %struct.am_state** %2, align 8
  %98 = call i32 @am_path(%struct.am_state* %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %99 = call i64 @file_exists(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %56
  %102 = load %struct.am_state*, %struct.am_state** %2, align 8
  %103 = call i64 @read_state_file(%struct.strbuf* %3, %struct.am_state* %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 1)
  %104 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @strcmp(i32 %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i64, i64* @RERERE_NOAUTOUPDATE, align 8
  br label %112

110:                                              ; preds = %101
  %111 = load i64, i64* @RERERE_AUTOUPDATE, align 8
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i64 [ %109, %108 ], [ %111, %110 ]
  %114 = load %struct.am_state*, %struct.am_state** %2, align 8
  %115 = getelementptr inbounds %struct.am_state, %struct.am_state* %114, i32 0, i32 9
  store i64 %113, i64* %115, align 8
  br label %119

116:                                              ; preds = %56
  %117 = load %struct.am_state*, %struct.am_state** %2, align 8
  %118 = getelementptr inbounds %struct.am_state, %struct.am_state* %117, i32 0, i32 9
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %116, %112
  %120 = load %struct.am_state*, %struct.am_state** %2, align 8
  %121 = call i64 @read_state_file(%struct.strbuf* %3, %struct.am_state* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 1)
  %122 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @strcmp(i32 %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %119
  %127 = load i32, i32* @KEEP_TRUE, align 4
  %128 = load %struct.am_state*, %struct.am_state** %2, align 8
  %129 = getelementptr inbounds %struct.am_state, %struct.am_state* %128, i32 0, i32 8
  store i32 %127, i32* %129, align 8
  br label %144

130:                                              ; preds = %119
  %131 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @strcmp(i32 %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %130
  %136 = load i32, i32* @KEEP_NON_PATCH, align 4
  %137 = load %struct.am_state*, %struct.am_state** %2, align 8
  %138 = getelementptr inbounds %struct.am_state, %struct.am_state* %137, i32 0, i32 8
  store i32 %136, i32* %138, align 8
  br label %143

139:                                              ; preds = %130
  %140 = load i32, i32* @KEEP_FALSE, align 4
  %141 = load %struct.am_state*, %struct.am_state** %2, align 8
  %142 = getelementptr inbounds %struct.am_state, %struct.am_state* %141, i32 0, i32 8
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %139, %135
  br label %144

144:                                              ; preds = %143, %126
  %145 = load %struct.am_state*, %struct.am_state** %2, align 8
  %146 = call i64 @read_state_file(%struct.strbuf* %3, %struct.am_state* %145, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 1)
  %147 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @strcmp(i32 %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %150 = icmp ne i64 %149, 0
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i32
  %153 = load %struct.am_state*, %struct.am_state** %2, align 8
  %154 = getelementptr inbounds %struct.am_state, %struct.am_state* %153, i32 0, i32 4
  store i32 %152, i32* %154, align 8
  %155 = load %struct.am_state*, %struct.am_state** %2, align 8
  %156 = call i64 @read_state_file(%struct.strbuf* %3, %struct.am_state* %155, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 1)
  %157 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i64 @strcmp(i32 %158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %144
  %162 = load i32, i32* @SCISSORS_TRUE, align 4
  %163 = load %struct.am_state*, %struct.am_state** %2, align 8
  %164 = getelementptr inbounds %struct.am_state, %struct.am_state* %163, i32 0, i32 7
  store i32 %162, i32* %164, align 4
  br label %179

165:                                              ; preds = %144
  %166 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @strcmp(i32 %167, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %165
  %171 = load i32, i32* @SCISSORS_FALSE, align 4
  %172 = load %struct.am_state*, %struct.am_state** %2, align 8
  %173 = getelementptr inbounds %struct.am_state, %struct.am_state* %172, i32 0, i32 7
  store i32 %171, i32* %173, align 4
  br label %178

174:                                              ; preds = %165
  %175 = load i32, i32* @SCISSORS_UNSET, align 4
  %176 = load %struct.am_state*, %struct.am_state** %2, align 8
  %177 = getelementptr inbounds %struct.am_state, %struct.am_state* %176, i32 0, i32 7
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %174, %170
  br label %179

179:                                              ; preds = %178, %161
  %180 = load %struct.am_state*, %struct.am_state** %2, align 8
  %181 = call i64 @read_state_file(%struct.strbuf* %3, %struct.am_state* %180, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 1)
  %182 = load %struct.am_state*, %struct.am_state** %2, align 8
  %183 = getelementptr inbounds %struct.am_state, %struct.am_state* %182, i32 0, i32 6
  %184 = call i32 @argv_array_clear(i32* %183)
  %185 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.am_state*, %struct.am_state** %2, align 8
  %188 = getelementptr inbounds %struct.am_state, %struct.am_state* %187, i32 0, i32 6
  %189 = call i64 @sq_dequote_to_argv_array(i32 %186, i32* %188)
  %190 = icmp slt i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %179
  %192 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %193 = load %struct.am_state*, %struct.am_state** %2, align 8
  %194 = call i32 @am_path(%struct.am_state* %193, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %195 = call i32 (i32, ...) @die(i32 %192, i32 %194)
  br label %196

196:                                              ; preds = %191, %179
  %197 = load %struct.am_state*, %struct.am_state** %2, align 8
  %198 = call i32 @am_path(%struct.am_state* %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %199 = call i64 @file_exists(i32 %198)
  %200 = icmp ne i64 %199, 0
  %201 = xor i1 %200, true
  %202 = xor i1 %201, true
  %203 = zext i1 %202 to i32
  %204 = load %struct.am_state*, %struct.am_state** %2, align 8
  %205 = getelementptr inbounds %struct.am_state, %struct.am_state* %204, i32 0, i32 5
  store i32 %203, i32* %205, align 4
  %206 = call i32 @strbuf_release(%struct.strbuf* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @read_state_file(%struct.strbuf*, %struct.am_state*, i8*, i32) #2

declare dso_local i32 @BUG(i8*) #2

declare dso_local i8* @strtol(i32, i32*, i32) #2

declare dso_local i64 @read_am_author_script(%struct.am_state*) #2

declare dso_local i32 @die(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @read_commit_msg(%struct.am_state*) #2

declare dso_local i32 @oidclr(i32*) #2

declare dso_local i64 @get_oid_hex(i32, i32*) #2

declare dso_local i32 @am_path(%struct.am_state*, i8*) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i64 @file_exists(i32) #2

declare dso_local i32 @argv_array_clear(i32*) #2

declare dso_local i64 @sq_dequote_to_argv_array(i32, i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
