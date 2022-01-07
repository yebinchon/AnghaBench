; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_testfloat.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_testfloat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"testfloat\00", align 1
@fail_programName = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@trueName = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"syst\00", align 1
@testName = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@errorStop = common dso_local global i8* null, align 8
@forever = common dso_local global i8* null, align 8
@maxErrorCount = common dso_local global i32 0, align 4
@float_exception_flags = common dso_local global i32 0, align 4
@trueFlagsPtr = common dso_local global i32* null, align 8
@syst_float_flags_clear = common dso_local global i32 0, align 4
@testFlagsFunctionPtr = common dso_local global i32 0, align 4
@tininessModeName = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.4 = private unnamed_addr constant [1507 x i8] c"testfloat [<option>...] <function>\0A  <option>:  (* is default)\0A    -help            --Write this message and exit.\0A    -list            --List all testable functions and exit.\0A    -level <num>     --Testing level <num> (1 or 2).\0A *  -level 1\0A    -errors <num>    --Stop each function test after <num> errors.\0A *  -errors 20\0A    -errorstop       --Exit after first function with any error.\0A    -forever         --Test one function repeatedly (implies `-level 2').\0A    -checkNaNs       --Check for bitwise correctness of NaN results.\0A    -nearesteven     --Only test rounding to nearest/even.\0A    -tozero          --Only test rounding to zero.\0A    -down            --Only test rounding down.\0A    -up              --Only test rounding up.\0A    -tininessbefore  --Underflow tininess detected before rounding.\0A    -tininessafter   --Underflow tininess detected after rounding.\0A  <function>:\0A    int32_to_<float>                 <float>_add   <float>_eq\0A    <float>_to_int32                 <float>_sub   <float>_le\0A    <float>_to_int32_round_to_zero   <float>_mul   <float>_lt\0A    <float>_to_<float>               <float>_div   <float>_eq_signaling\0A    <float>_round_to_int             <float>_rem   <float>_le_quiet\0A    <float>_sqrt                                   <float>_lt_quiet\0A    -all1            --All 1-operand functions.\0A    -all2            --All 2-operand functions.\0A    -all             --All functions.\0A  <float>:\0A    float32          --Single precision.\0A    float64          --Double precision.\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@NUM_FUNCTIONS = common dso_local global i64 0, align 8
@functionExists = common dso_local global i64* null, align 8
@functions = common dso_local global %struct.TYPE_2__* null, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"level1\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"level2\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"`%s' option requires numeric argument\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"errorstop\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"forever\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"checkNaNs\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"checknans\00", align 1
@checkNaNs = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [12 x i8] c"nearesteven\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"nearest_even\00", align 1
@ROUND_NEAREST_EVEN = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"tozero\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"to_zero\00", align 1
@ROUND_TO_ZERO = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@ROUND_DOWN = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@ROUND_UP = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [15 x i8] c"tininessbefore\00", align 1
@float_tininess_before_rounding = common dso_local global i32 0, align 4
@float_detect_tininess = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [14 x i8] c"tininessafter\00", align 1
@float_tininess_after_rounding = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [5 x i8] c"all1\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"all2\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"Invalid option or function `%s'\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"Function `%s' is not supported or cannot be tested\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"Function argument required\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@catchSIGINT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [50 x i8] c"Can only test one function with `-forever' option\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** @fail_programName, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp sle i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %49

15:                                               ; preds = %2
  %16 = call i32 @testCases_setLevel(i32 1)
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** @trueName, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** @testName, align 8
  %17 = load i8*, i8** @FALSE, align 8
  store i8* %17, i8** @errorStop, align 8
  %18 = load i8*, i8** @FALSE, align 8
  store i8* %18, i8** @forever, align 8
  store i32 20, i32* @maxErrorCount, align 4
  store i32* @float_exception_flags, i32** @trueFlagsPtr, align 8
  %19 = load i32, i32* @syst_float_flags_clear, align 4
  store i32 %19, i32* @testFlagsFunctionPtr, align 4
  store i64 0, i64* @tininessModeName, align 8
  %20 = load i8*, i8** @FALSE, align 8
  store i8* %20, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i32 1
  store i8** %24, i8*** %5, align 8
  br label %25

25:                                               ; preds = %274, %15
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i1 [ false, %25 ], [ %32, %28 ]
  br i1 %34, label %35, label %279

35:                                               ; preds = %33
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 45
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %6, align 8
  br label %44

44:                                               ; preds = %41, %35
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %14
  %50 = load i32, i32* @stdout, align 4
  %51 = call i32 @fputs(i8* getelementptr inbounds ([1507 x i8], [1507 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %52, i32* %3, align 4
  br label %403

53:                                               ; preds = %44
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %53
  store i64 1, i64* %8, align 8
  br label %58

58:                                               ; preds = %76, %57
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @NUM_FUNCTIONS, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %58
  %63 = load i64*, i64** @functionExists, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @functions, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @puts(i8* %73)
  br label %75

75:                                               ; preds = %68, %62
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %8, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %8, align 8
  br label %58

79:                                               ; preds = %58
  %80 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %80, i32* %3, align 4
  br label %403

81:                                               ; preds = %53
  %82 = load i8*, i8** %6, align 8
  %83 = call i64 @strcmp(i8* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %81
  %86 = load i32, i32* %4, align 4
  %87 = icmp slt i32 %86, 2
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %119

89:                                               ; preds = %85
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @atoi(i8* %92)
  %94 = call i32 @testCases_setLevel(i32 %93)
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %4, align 4
  %97 = load i8**, i8*** %5, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i32 1
  store i8** %98, i8*** %5, align 8
  br label %272

99:                                               ; preds = %81
  %100 = load i8*, i8** %6, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = call i32 @testCases_setLevel(i32 1)
  br label %271

105:                                              ; preds = %99
  %106 = load i8*, i8** %6, align 8
  %107 = call i64 @strcmp(i8* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = call i32 @testCases_setLevel(i32 2)
  br label %270

111:                                              ; preds = %105
  %112 = load i8*, i8** %6, align 8
  %113 = call i64 @strcmp(i8* %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %133

115:                                              ; preds = %111
  %116 = load i32, i32* %4, align 4
  %117 = icmp slt i32 %116, 2
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  br label %119

119:                                              ; preds = %118, %88
  %120 = load i8**, i8*** %5, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* %122)
  br label %124

124:                                              ; preds = %119, %115
  %125 = load i8**, i8*** %5, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @atoi(i8* %127)
  store i32 %128, i32* @maxErrorCount, align 4
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %4, align 4
  %131 = load i8**, i8*** %5, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i32 1
  store i8** %132, i8*** %5, align 8
  br label %269

133:                                              ; preds = %111
  %134 = load i8*, i8** %6, align 8
  %135 = call i64 @strcmp(i8* %134, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i8*, i8** @TRUE, align 8
  store i8* %138, i8** @errorStop, align 8
  br label %268

139:                                              ; preds = %133
  %140 = load i8*, i8** %6, align 8
  %141 = call i64 @strcmp(i8* %140, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = call i32 @testCases_setLevel(i32 2)
  %145 = load i8*, i8** @TRUE, align 8
  store i8* %145, i8** @forever, align 8
  br label %267

146:                                              ; preds = %139
  %147 = load i8*, i8** %6, align 8
  %148 = call i64 @strcmp(i8* %147, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = load i8*, i8** %6, align 8
  %152 = call i64 @strcmp(i8* %151, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %150, %146
  %155 = load i8*, i8** @TRUE, align 8
  store i8* %155, i8** @checkNaNs, align 8
  br label %266

156:                                              ; preds = %150
  %157 = load i8*, i8** %6, align 8
  %158 = call i64 @strcmp(i8* %157, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %156
  %161 = load i8*, i8** %6, align 8
  %162 = call i64 @strcmp(i8* %161, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %160, %156
  %165 = load i32, i32* @ROUND_NEAREST_EVEN, align 4
  store i32 %165, i32* %11, align 4
  br label %265

166:                                              ; preds = %160
  %167 = load i8*, i8** %6, align 8
  %168 = call i64 @strcmp(i8* %167, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = load i8*, i8** %6, align 8
  %172 = call i64 @strcmp(i8* %171, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %170, %166
  %175 = load i32, i32* @ROUND_TO_ZERO, align 4
  store i32 %175, i32* %11, align 4
  br label %264

176:                                              ; preds = %170
  %177 = load i8*, i8** %6, align 8
  %178 = call i64 @strcmp(i8* %177, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = load i32, i32* @ROUND_DOWN, align 4
  store i32 %181, i32* %11, align 4
  br label %263

182:                                              ; preds = %176
  %183 = load i8*, i8** %6, align 8
  %184 = call i64 @strcmp(i8* %183, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = load i32, i32* @ROUND_UP, align 4
  store i32 %187, i32* %11, align 4
  br label %262

188:                                              ; preds = %182
  %189 = load i8*, i8** %6, align 8
  %190 = call i64 @strcmp(i8* %189, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  %193 = load i32, i32* @float_tininess_before_rounding, align 4
  store i32 %193, i32* @float_detect_tininess, align 4
  br label %261

194:                                              ; preds = %188
  %195 = load i8*, i8** %6, align 8
  %196 = call i64 @strcmp(i8* %195, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = load i32, i32* @float_tininess_after_rounding, align 4
  store i32 %199, i32* @float_detect_tininess, align 4
  br label %260

200:                                              ; preds = %194
  %201 = load i8*, i8** %6, align 8
  %202 = call i64 @strcmp(i8* %201, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = load i8*, i8** @TRUE, align 8
  store i8* %205, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 1, i32* %9, align 4
  br label %259

206:                                              ; preds = %200
  %207 = load i8*, i8** %6, align 8
  %208 = call i64 @strcmp(i8* %207, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = load i8*, i8** @TRUE, align 8
  store i8* %211, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 2, i32* %9, align 4
  br label %258

212:                                              ; preds = %206
  %213 = load i8*, i8** %6, align 8
  %214 = call i64 @strcmp(i8* %213, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  %217 = load i8*, i8** @TRUE, align 8
  store i8* %217, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %257

218:                                              ; preds = %212
  store i64 1, i64* %8, align 8
  br label %219

219:                                              ; preds = %234, %218
  %220 = load i64, i64* %8, align 8
  %221 = load i64, i64* @NUM_FUNCTIONS, align 8
  %222 = icmp ult i64 %220, %221
  br i1 %222, label %223, label %237

223:                                              ; preds = %219
  %224 = load i8*, i8** %6, align 8
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** @functions, align 8
  %226 = load i64, i64* %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  %230 = call i64 @strcmp(i8* %224, i8* %229)
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %223
  br label %237

233:                                              ; preds = %223
  br label %234

234:                                              ; preds = %233
  %235 = load i64, i64* %8, align 8
  %236 = add i64 %235, 1
  store i64 %236, i64* %8, align 8
  br label %219

237:                                              ; preds = %232, %219
  %238 = load i64, i64* %8, align 8
  %239 = load i64, i64* @NUM_FUNCTIONS, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %246

241:                                              ; preds = %237
  %242 = load i8**, i8*** %5, align 8
  %243 = getelementptr inbounds i8*, i8** %242, i64 0
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i64 0, i64 0), i8* %244)
  br label %246

246:                                              ; preds = %241, %237
  %247 = load i64*, i64** @functionExists, align 8
  %248 = load i64, i64* %8, align 8
  %249 = getelementptr inbounds i64, i64* %247, i64 %248
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %246
  %253 = load i8*, i8** %6, align 8
  %254 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i8* %253)
  br label %255

255:                                              ; preds = %252, %246
  %256 = load i8*, i8** @TRUE, align 8
  store i8* %256, i8** %7, align 8
  br label %257

257:                                              ; preds = %255, %216
  br label %258

258:                                              ; preds = %257, %210
  br label %259

259:                                              ; preds = %258, %204
  br label %260

260:                                              ; preds = %259, %198
  br label %261

261:                                              ; preds = %260, %192
  br label %262

262:                                              ; preds = %261, %186
  br label %263

263:                                              ; preds = %262, %180
  br label %264

264:                                              ; preds = %263, %174
  br label %265

265:                                              ; preds = %264, %164
  br label %266

266:                                              ; preds = %265, %154
  br label %267

267:                                              ; preds = %266, %143
  br label %268

268:                                              ; preds = %267, %137
  br label %269

269:                                              ; preds = %268, %124
  br label %270

270:                                              ; preds = %269, %109
  br label %271

271:                                              ; preds = %270, %103
  br label %272

272:                                              ; preds = %271, %89
  br label %273

273:                                              ; preds = %272
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %4, align 4
  %276 = add nsw i32 %275, -1
  store i32 %276, i32* %4, align 4
  %277 = load i8**, i8*** %5, align 8
  %278 = getelementptr inbounds i8*, i8** %277, i32 1
  store i8** %278, i8*** %5, align 8
  br label %25

279:                                              ; preds = %33
  %280 = load i8*, i8** %7, align 8
  %281 = icmp ne i8* %280, null
  br i1 %281, label %284, label %282

282:                                              ; preds = %279
  %283 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0))
  br label %284

284:                                              ; preds = %282, %279
  %285 = load i32, i32* @SIGINT, align 4
  %286 = load i32, i32* @catchSIGINT, align 4
  %287 = call i32 @signal(i32 %285, i32 %286)
  %288 = load i32, i32* @SIGTERM, align 4
  %289 = load i32, i32* @catchSIGINT, align 4
  %290 = call i32 @signal(i32 %288, i32 %289)
  %291 = load i64, i64* %8, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %311

293:                                              ; preds = %284
  %294 = load i8*, i8** @forever, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %296, label %306

296:                                              ; preds = %293
  %297 = load i32, i32* %10, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %300, label %299

299:                                              ; preds = %296
  store i32 80, i32* %10, align 4
  br label %300

300:                                              ; preds = %299, %296
  %301 = load i32, i32* %11, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %305, label %303

303:                                              ; preds = %300
  %304 = load i32, i32* @ROUND_NEAREST_EVEN, align 4
  store i32 %304, i32* %11, align 4
  br label %305

305:                                              ; preds = %303, %300
  br label %306

306:                                              ; preds = %305, %293
  %307 = load i64, i64* %8, align 8
  %308 = load i32, i32* %10, align 4
  %309 = load i32, i32* %11, align 4
  %310 = call i32 @testFunction(i64 %307, i32 %308, i32 %309)
  br label %401

311:                                              ; preds = %284
  %312 = load i8*, i8** @forever, align 8
  %313 = icmp ne i8* %312, null
  br i1 %313, label %314, label %316

314:                                              ; preds = %311
  %315 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.29, i64 0, i64 0))
  br label %316

316:                                              ; preds = %314, %311
  %317 = load i32, i32* %9, align 4
  %318 = icmp eq i32 %317, 1
  br i1 %318, label %319, label %347

319:                                              ; preds = %316
  store i64 1, i64* %8, align 8
  br label %320

320:                                              ; preds = %343, %319
  %321 = load i64, i64* %8, align 8
  %322 = load i64, i64* @NUM_FUNCTIONS, align 8
  %323 = icmp ult i64 %321, %322
  br i1 %323, label %324, label %346

324:                                              ; preds = %320
  %325 = load i64*, i64** @functionExists, align 8
  %326 = load i64, i64* %8, align 8
  %327 = getelementptr inbounds i64, i64* %325, i64 %326
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %342

330:                                              ; preds = %324
  %331 = load %struct.TYPE_2__*, %struct.TYPE_2__** @functions, align 8
  %332 = load i64, i64* %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %331, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = icmp eq i32 %335, 1
  br i1 %336, label %337, label %342

337:                                              ; preds = %330
  %338 = load i64, i64* %8, align 8
  %339 = load i32, i32* %10, align 4
  %340 = load i32, i32* %11, align 4
  %341 = call i32 @testFunction(i64 %338, i32 %339, i32 %340)
  br label %342

342:                                              ; preds = %337, %330, %324
  br label %343

343:                                              ; preds = %342
  %344 = load i64, i64* %8, align 8
  %345 = add i64 %344, 1
  store i64 %345, i64* %8, align 8
  br label %320

346:                                              ; preds = %320
  br label %400

347:                                              ; preds = %316
  %348 = load i32, i32* %9, align 4
  %349 = icmp eq i32 %348, 2
  br i1 %349, label %350, label %378

350:                                              ; preds = %347
  store i64 1, i64* %8, align 8
  br label %351

351:                                              ; preds = %374, %350
  %352 = load i64, i64* %8, align 8
  %353 = load i64, i64* @NUM_FUNCTIONS, align 8
  %354 = icmp ult i64 %352, %353
  br i1 %354, label %355, label %377

355:                                              ; preds = %351
  %356 = load i64*, i64** @functionExists, align 8
  %357 = load i64, i64* %8, align 8
  %358 = getelementptr inbounds i64, i64* %356, i64 %357
  %359 = load i64, i64* %358, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %373

361:                                              ; preds = %355
  %362 = load %struct.TYPE_2__*, %struct.TYPE_2__** @functions, align 8
  %363 = load i64, i64* %8, align 8
  %364 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %362, i64 %363
  %365 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 8
  %367 = icmp eq i32 %366, 2
  br i1 %367, label %368, label %373

368:                                              ; preds = %361
  %369 = load i64, i64* %8, align 8
  %370 = load i32, i32* %10, align 4
  %371 = load i32, i32* %11, align 4
  %372 = call i32 @testFunction(i64 %369, i32 %370, i32 %371)
  br label %373

373:                                              ; preds = %368, %361, %355
  br label %374

374:                                              ; preds = %373
  %375 = load i64, i64* %8, align 8
  %376 = add i64 %375, 1
  store i64 %376, i64* %8, align 8
  br label %351

377:                                              ; preds = %351
  br label %399

378:                                              ; preds = %347
  store i64 1, i64* %8, align 8
  br label %379

379:                                              ; preds = %395, %378
  %380 = load i64, i64* %8, align 8
  %381 = load i64, i64* @NUM_FUNCTIONS, align 8
  %382 = icmp ult i64 %380, %381
  br i1 %382, label %383, label %398

383:                                              ; preds = %379
  %384 = load i64*, i64** @functionExists, align 8
  %385 = load i64, i64* %8, align 8
  %386 = getelementptr inbounds i64, i64* %384, i64 %385
  %387 = load i64, i64* %386, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %394

389:                                              ; preds = %383
  %390 = load i64, i64* %8, align 8
  %391 = load i32, i32* %10, align 4
  %392 = load i32, i32* %11, align 4
  %393 = call i32 @testFunction(i64 %390, i32 %391, i32 %392)
  br label %394

394:                                              ; preds = %389, %383
  br label %395

395:                                              ; preds = %394
  %396 = load i64, i64* %8, align 8
  %397 = add i64 %396, 1
  store i64 %397, i64* %8, align 8
  br label %379

398:                                              ; preds = %379
  br label %399

399:                                              ; preds = %398, %377
  br label %400

400:                                              ; preds = %399, %346
  br label %401

401:                                              ; preds = %400, %306
  %402 = call i32 (...) @exitWithStatus()
  br label %403

403:                                              ; preds = %401, %79, %49
  %404 = load i32, i32* %3, align 4
  ret i32 %404
}

declare dso_local i32 @testCases_setLevel(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @fail(i8*, ...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @testFunction(i64, i32, i32) #1

declare dso_local i32 @exitWithStatus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
