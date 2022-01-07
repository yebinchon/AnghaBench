; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_bisect--helper.c_cmd_bisect__helper.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_bisect--helper.c_cmd_bisect__helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }
%struct.bisect_terms = type { i32*, i32* }

@.str = private unnamed_addr constant [9 x i8] c"next-all\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"perform 'git bisect next'\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"write-terms\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"write the terms to .git/BISECT_TERMS\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"bisect-clean-state\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"cleanup the bisection state\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"check-expected-revs\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"check for expected revs\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"bisect-reset\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"reset the bisection state\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"bisect-write\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"write out the bisection state in BISECT_LOG\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"check-and-set-terms\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"check and set terms in a bisection state\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"bisect-next-check\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"check whether bad or good terms exist\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"bisect-terms\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"print out the bisect terms\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"bisect-start\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"start the bisect session\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"no-checkout\00", align 1
@.str.21 = private unnamed_addr constant [62 x i8] c"update BISECT_HEAD instead of checking out the current commit\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"no-log\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"no log for BISECT_WRITE\00", align 1
@git_bisect_helper_usage = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_DASHDASH = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_UNKNOWN = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [37 x i8] c"--write-terms requires two arguments\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"--bisect-clean-state requires no arguments\00", align 1
@.str.26 = private unnamed_addr constant [55 x i8] c"--bisect-reset requires either no argument or a commit\00", align 1
@.str.27 = private unnamed_addr constant [48 x i8] c"--bisect-write requires either 4 or 5 arguments\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"--check-and-set-terms requires 3 arguments\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"--bisect-next-check requires 2 or 3 arguments\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"--bisect-terms requires 0 or 1 argument\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"bad\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"good\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"BUG: unknown subcommand '%d'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_bisect__helper(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [13 x %struct.option], align 16
  %13 = alloca %struct.bisect_terms, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = getelementptr inbounds [13 x %struct.option], [13 x %struct.option]* %12, i64 0, i64 0
  %15 = call i32 @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @OPT_CMDMODE(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %8, i32 %15, i32 1)
  %17 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.option, %struct.option* %14, i64 1
  %19 = call i32 @N_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %20 = call i32 @OPT_CMDMODE(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %8, i32 %19, i32 2)
  %21 = getelementptr inbounds %struct.option, %struct.option* %18, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.option, %struct.option* %18, i64 1
  %23 = call i32 @N_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %24 = call i32 @OPT_CMDMODE(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32* %8, i32 %23, i32 3)
  %25 = getelementptr inbounds %struct.option, %struct.option* %22, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.option, %struct.option* %22, i64 1
  %27 = call i32 @N_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %28 = call i32 @OPT_CMDMODE(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32* %8, i32 %27, i32 4)
  %29 = getelementptr inbounds %struct.option, %struct.option* %26, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.option, %struct.option* %26, i64 1
  %31 = call i32 @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %32 = call i32 @OPT_CMDMODE(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32* %8, i32 %31, i32 5)
  %33 = getelementptr inbounds %struct.option, %struct.option* %30, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.option, %struct.option* %30, i64 1
  %35 = call i32 @N_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  %36 = call i32 @OPT_CMDMODE(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32* %8, i32 %35, i32 6)
  %37 = getelementptr inbounds %struct.option, %struct.option* %34, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.option, %struct.option* %34, i64 1
  %39 = call i32 @N_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  %40 = call i32 @OPT_CMDMODE(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32* %8, i32 %39, i32 7)
  %41 = getelementptr inbounds %struct.option, %struct.option* %38, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.option, %struct.option* %38, i64 1
  %43 = call i32 @N_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  %44 = call i32 @OPT_CMDMODE(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32* %8, i32 %43, i32 8)
  %45 = getelementptr inbounds %struct.option, %struct.option* %42, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.option, %struct.option* %42, i64 1
  %47 = call i32 @N_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0))
  %48 = call i32 @OPT_CMDMODE(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32* %8, i32 %47, i32 9)
  %49 = getelementptr inbounds %struct.option, %struct.option* %46, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.option, %struct.option* %46, i64 1
  %51 = call i32 @N_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0))
  %52 = call i32 @OPT_CMDMODE(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32* %8, i32 %51, i32 10)
  %53 = getelementptr inbounds %struct.option, %struct.option* %50, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.option, %struct.option* %50, i64 1
  %55 = call i32 @N_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.21, i64 0, i64 0))
  %56 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32* %9, i32 %55)
  %57 = getelementptr inbounds %struct.option, %struct.option* %54, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.option, %struct.option* %54, i64 1
  %59 = call i32 @N_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0))
  %60 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i32* %11, i32 %59)
  %61 = getelementptr inbounds %struct.option, %struct.option* %58, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.option, %struct.option* %58, i64 1
  %63 = call i32 (...) @OPT_END()
  %64 = getelementptr inbounds %struct.option, %struct.option* %62, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = bitcast %struct.bisect_terms* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 16, i1 false)
  %66 = load i32, i32* %5, align 4
  %67 = load i8**, i8*** %6, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds [13 x %struct.option], [13 x %struct.option]* %12, i64 0, i64 0
  %70 = load i32, i32* @git_bisect_helper_usage, align 4
  %71 = load i32, i32* @PARSE_OPT_KEEP_DASHDASH, align 4
  %72 = load i32, i32* @PARSE_OPT_KEEP_UNKNOWN, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @parse_options(i32 %66, i8** %67, i8* %68, %struct.option* %69, i32 %70, i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %3
  %78 = load i32, i32* @git_bisect_helper_usage, align 4
  %79 = getelementptr inbounds [13 x %struct.option], [13 x %struct.option]* %12, i64 0, i64 0
  %80 = call i32 @usage_with_options(i32 %78, %struct.option* %79)
  br label %81

81:                                               ; preds = %77, %3
  %82 = load i32, i32* %8, align 4
  switch i32 %82, label %242 [
    i32 1, label %83
    i32 2, label %88
    i32 3, label %104
    i32 4, label %114
    i32 5, label %118
    i32 6, label %141
    i32 7, label %168
    i32 8, label %188
    i32 9, label %217
    i32 10, label %236
  ]

83:                                               ; preds = %81
  %84 = load i32, i32* @the_repository, align 4
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @bisect_next_all(i32 %84, i8* %85, i32 %86)
  store i32 %87, i32* %4, align 4
  br label %252

88:                                               ; preds = %81
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 2
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0))
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i8*
  %95 = call i32 (i8*, ...) @error(i8* %94)
  store i32 %95, i32* %4, align 4
  br label %252

96:                                               ; preds = %88
  %97 = load i8**, i8*** %6, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  %99 = load i8*, i8** %98, align 8
  %100 = load i8**, i8*** %6, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @write_terms(i8* %99, i8* %102)
  store i32 %103, i32* %4, align 4
  br label %252

104:                                              ; preds = %81
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.25, i64 0, i64 0))
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = call i32 (i8*, ...) @error(i8* %110)
  store i32 %111, i32* %4, align 4
  br label %252

112:                                              ; preds = %104
  %113 = call i32 (...) @bisect_clean_state()
  store i32 %113, i32* %4, align 4
  br label %252

114:                                              ; preds = %81
  %115 = load i8**, i8*** %6, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @check_expected_revs(i8** %115, i32 %116)
  store i32 0, i32* %4, align 4
  br label %252

118:                                              ; preds = %81
  %119 = load i32, i32* %5, align 4
  %120 = icmp sgt i32 %119, 1
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.26, i64 0, i64 0))
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i8*
  %125 = call i32 (i8*, ...) @error(i8* %124)
  store i32 %125, i32* %4, align 4
  br label %252

126:                                              ; preds = %118
  %127 = load i32, i32* %5, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i8**, i8*** %6, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 0
  %132 = load i8*, i8** %131, align 8
  br label %134

133:                                              ; preds = %126
  br label %134

134:                                              ; preds = %133, %129
  %135 = phi i8* [ %132, %129 ], [ null, %133 ]
  %136 = call i32 @bisect_reset(i8* %135)
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  store i32 %140, i32* %4, align 4
  br label %252

141:                                              ; preds = %81
  %142 = load i32, i32* %5, align 4
  %143 = icmp ne i32 %142, 4
  br i1 %143, label %144, label %152

144:                                              ; preds = %141
  %145 = load i32, i32* %5, align 4
  %146 = icmp ne i32 %145, 5
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.27, i64 0, i64 0))
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  %151 = call i32 (i8*, ...) @error(i8* %150)
  store i32 %151, i32* %4, align 4
  br label %252

152:                                              ; preds = %144, %141
  %153 = load i8**, i8*** %6, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 3
  %155 = load i8*, i8** %154, align 8
  %156 = load i8**, i8*** %6, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 2
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @set_terms(%struct.bisect_terms* %13, i8* %155, i8* %158)
  %160 = load i8**, i8*** %6, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 0
  %162 = load i8*, i8** %161, align 8
  %163 = load i8**, i8*** %6, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 1
  %165 = load i8*, i8** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @bisect_write(i8* %162, i8* %165, %struct.bisect_terms* %13, i32 %166)
  store i32 %167, i32* %10, align 4
  br label %245

168:                                              ; preds = %81
  %169 = load i32, i32* %5, align 4
  %170 = icmp ne i32 %169, 3
  br i1 %170, label %171, label %176

171:                                              ; preds = %168
  %172 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.28, i64 0, i64 0))
  %173 = sext i32 %172 to i64
  %174 = inttoptr i64 %173 to i8*
  %175 = call i32 (i8*, ...) @error(i8* %174)
  store i32 %175, i32* %4, align 4
  br label %252

176:                                              ; preds = %168
  %177 = load i8**, i8*** %6, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i64 2
  %179 = load i8*, i8** %178, align 8
  %180 = load i8**, i8*** %6, align 8
  %181 = getelementptr inbounds i8*, i8** %180, i64 1
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @set_terms(%struct.bisect_terms* %13, i8* %179, i8* %182)
  %184 = load i8**, i8*** %6, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i64 0
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @check_and_set_terms(%struct.bisect_terms* %13, i8* %186)
  store i32 %187, i32* %10, align 4
  br label %245

188:                                              ; preds = %81
  %189 = load i32, i32* %5, align 4
  %190 = icmp ne i32 %189, 2
  br i1 %190, label %191, label %199

191:                                              ; preds = %188
  %192 = load i32, i32* %5, align 4
  %193 = icmp ne i32 %192, 3
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.29, i64 0, i64 0))
  %196 = sext i32 %195 to i64
  %197 = inttoptr i64 %196 to i8*
  %198 = call i32 (i8*, ...) @error(i8* %197)
  store i32 %198, i32* %4, align 4
  br label %252

199:                                              ; preds = %191, %188
  %200 = load i8**, i8*** %6, align 8
  %201 = getelementptr inbounds i8*, i8** %200, i64 1
  %202 = load i8*, i8** %201, align 8
  %203 = load i8**, i8*** %6, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 0
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @set_terms(%struct.bisect_terms* %13, i8* %202, i8* %205)
  %207 = load i32, i32* %5, align 4
  %208 = icmp eq i32 %207, 3
  br i1 %208, label %209, label %213

209:                                              ; preds = %199
  %210 = load i8**, i8*** %6, align 8
  %211 = getelementptr inbounds i8*, i8** %210, i64 2
  %212 = load i8*, i8** %211, align 8
  br label %214

213:                                              ; preds = %199
  br label %214

214:                                              ; preds = %213, %209
  %215 = phi i8* [ %212, %209 ], [ null, %213 ]
  %216 = call i32 @bisect_next_check(%struct.bisect_terms* %13, i8* %215)
  store i32 %216, i32* %10, align 4
  br label %245

217:                                              ; preds = %81
  %218 = load i32, i32* %5, align 4
  %219 = icmp sgt i32 %218, 1
  br i1 %219, label %220, label %225

220:                                              ; preds = %217
  %221 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0))
  %222 = sext i32 %221 to i64
  %223 = inttoptr i64 %222 to i8*
  %224 = call i32 (i8*, ...) @error(i8* %223)
  store i32 %224, i32* %4, align 4
  br label %252

225:                                              ; preds = %217
  %226 = load i32, i32* %5, align 4
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %228, label %232

228:                                              ; preds = %225
  %229 = load i8**, i8*** %6, align 8
  %230 = getelementptr inbounds i8*, i8** %229, i64 0
  %231 = load i8*, i8** %230, align 8
  br label %233

232:                                              ; preds = %225
  br label %233

233:                                              ; preds = %232, %228
  %234 = phi i8* [ %231, %228 ], [ null, %232 ]
  %235 = call i32 @bisect_terms(%struct.bisect_terms* %13, i8* %234)
  store i32 %235, i32* %10, align 4
  br label %245

236:                                              ; preds = %81
  %237 = call i32 @set_terms(%struct.bisect_terms* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  %238 = load i32, i32* %9, align 4
  %239 = load i8**, i8*** %6, align 8
  %240 = load i32, i32* %5, align 4
  %241 = call i32 @bisect_start(%struct.bisect_terms* %13, i32 %238, i8** %239, i32 %240)
  store i32 %241, i32* %10, align 4
  br label %245

242:                                              ; preds = %81
  %243 = load i32, i32* %8, align 4
  %244 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i64 0, i64 0), i32 %243)
  store i32 %244, i32* %4, align 4
  br label %252

245:                                              ; preds = %236, %233, %214, %176, %152
  %246 = call i32 @free_terms(%struct.bisect_terms* %13)
  %247 = load i32, i32* %10, align 4
  %248 = icmp ne i32 %247, 0
  %249 = xor i1 %248, true
  %250 = xor i1 %249, true
  %251 = zext i1 %250 to i32
  store i32 %251, i32* %4, align 4
  br label %252

252:                                              ; preds = %245, %242, %220, %194, %171, %147, %134, %121, %114, %112, %107, %96, %91, %83
  %253 = load i32, i32* %4, align 4
  ret i32 %253
}

declare dso_local i32 @OPT_CMDMODE(i32, i8*, i32*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_BOOL(i32, i8*, i32*, i32) #1

declare dso_local i32 @OPT_END(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

declare dso_local i32 @bisect_next_all(i32, i8*, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @write_terms(i8*, i8*) #1

declare dso_local i32 @bisect_clean_state(...) #1

declare dso_local i32 @check_expected_revs(i8**, i32) #1

declare dso_local i32 @bisect_reset(i8*) #1

declare dso_local i32 @set_terms(%struct.bisect_terms*, i8*, i8*) #1

declare dso_local i32 @bisect_write(i8*, i8*, %struct.bisect_terms*, i32) #1

declare dso_local i32 @check_and_set_terms(%struct.bisect_terms*, i8*) #1

declare dso_local i32 @bisect_next_check(%struct.bisect_terms*, i8*) #1

declare dso_local i32 @bisect_terms(%struct.bisect_terms*, i8*) #1

declare dso_local i32 @bisect_start(%struct.bisect_terms*, i32, i8**, i32) #1

declare dso_local i32 @free_terms(%struct.bisect_terms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
