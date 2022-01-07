; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_testsoftfloat.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_testsoftfloat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"testsoftfloat\00", align 1
@fail_programName = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@trueName = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@testName = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@errorStop = common dso_local global i8* null, align 8
@forever = common dso_local global i8* null, align 8
@maxErrorCount = common dso_local global i32 0, align 4
@slow_float_exception_flags = common dso_local global i32 0, align 4
@trueFlagsPtr = common dso_local global i32* null, align 8
@clearFlags = common dso_local global i32 0, align 4
@testFlagsFunctionPtr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.4 = private unnamed_addr constant [1383 x i8] c"testsoftfloat [<option>...] <function>\0A  <option>:  (* is default)\0A    -help            --Write this message and exit.\0A    -level <num>     --Testing level <num> (1 or 2).\0A *  -level 1\0A    -errors <num>    --Stop each function test after <num> errors.\0A *  -errors 20\0A    -errorstop       --Exit after first function with any error.\0A    -forever         --Test one function repeatedly (implies `-level 2').\0A    -nearesteven     --Only test rounding to nearest/even.\0A    -tozero          --Only test rounding to zero.\0A    -down            --Only test rounding down.\0A    -up              --Only test rounding up.\0A    -tininessbefore  --Only test underflow tininess before rounding.\0A    -tininessafter   --Only test underflow tininess after rounding.\0A  <function>:\0A    int32_to_<float>                 <float>_add   <float>_eq\0A    <float>_to_int32                 <float>_sub   <float>_le\0A    <float>_to_int32_round_to_zero   <float>_mul   <float>_lt\0A    <float>_to_<float>               <float>_div   <float>_eq_signaling\0A    <float>_round_to_int             <float>_rem   <float>_le_quiet\0A    <float>_sqrt                                   <float>_lt_quiet\0A    -all1            --All 1-operand functions.\0A    -all2            --All 2-operand functions.\0A    -all             --All functions.\0A  <float>:\0A    float32          --Single precision.\0A    float64          --Double precision.\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"level1\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"level2\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"`%s' option requires numeric argument\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"errorstop\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"forever\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"nearesteven\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"nearest_even\00", align 1
@ROUND_NEAREST_EVEN = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"tozero\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"to_zero\00", align 1
@ROUND_TO_ZERO = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@ROUND_DOWN = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@ROUND_UP = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [15 x i8] c"tininessbefore\00", align 1
@TININESS_BEFORE_ROUNDING = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [14 x i8] c"tininessafter\00", align 1
@TININESS_AFTER_ROUNDING = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"all1\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"all2\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@NUM_FUNCTIONS = common dso_local global i64 0, align 8
@functions = common dso_local global %struct.TYPE_2__* null, align 8
@.str.23 = private unnamed_addr constant [32 x i8] c"Invalid option or function `%s'\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"Function argument required\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@catchSIGINT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4

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
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** @fail_programName, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp sle i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %50

16:                                               ; preds = %2
  %17 = call i32 @testCases_setLevel(i32 1)
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** @trueName, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** @testName, align 8
  %18 = load i8*, i8** @FALSE, align 8
  store i8* %18, i8** @errorStop, align 8
  %19 = load i8*, i8** @FALSE, align 8
  store i8* %19, i8** @forever, align 8
  store i32 20, i32* @maxErrorCount, align 4
  store i32* @slow_float_exception_flags, i32** @trueFlagsPtr, align 8
  %20 = load i32, i32* @clearFlags, align 4
  store i32 %20, i32* @testFlagsFunctionPtr, align 4
  %21 = load i8*, i8** @FALSE, align 8
  store i8* %21, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i32 1
  store i8** %25, i8*** %5, align 8
  br label %26

26:                                               ; preds = %226, %16
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %6, align 8
  %33 = icmp ne i8* %32, null
  br label %34

34:                                               ; preds = %29, %26
  %35 = phi i1 [ false, %26 ], [ %33, %29 ]
  br i1 %35, label %36, label %231

36:                                               ; preds = %34
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 45
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %6, align 8
  br label %45

45:                                               ; preds = %42, %36
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %49, %15
  %51 = load i32, i32* @stdout, align 4
  %52 = call i32 @fputs(i8* getelementptr inbounds ([1383 x i8], [1383 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %53, i32* %3, align 4
  br label %335

54:                                               ; preds = %45
  %55 = load i8*, i8** %6, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 2
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %92

62:                                               ; preds = %58
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @atoi(i8* %65)
  %67 = call i32 @testCases_setLevel(i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %4, align 4
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i32 1
  store i8** %71, i8*** %5, align 8
  br label %225

72:                                               ; preds = %54
  %73 = load i8*, i8** %6, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 @testCases_setLevel(i32 1)
  br label %224

78:                                               ; preds = %72
  %79 = load i8*, i8** %6, align 8
  %80 = call i64 @strcmp(i8* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 @testCases_setLevel(i32 2)
  br label %223

84:                                               ; preds = %78
  %85 = load i8*, i8** %6, align 8
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %84
  %89 = load i32, i32* %4, align 4
  %90 = icmp slt i32 %89, 2
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  br label %92

92:                                               ; preds = %91, %61
  %93 = load i8**, i8*** %5, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %92, %88
  %98 = load i8**, i8*** %5, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @atoi(i8* %100)
  store i32 %101, i32* @maxErrorCount, align 4
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %4, align 4
  %104 = load i8**, i8*** %5, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i32 1
  store i8** %105, i8*** %5, align 8
  br label %222

106:                                              ; preds = %84
  %107 = load i8*, i8** %6, align 8
  %108 = call i64 @strcmp(i8* %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i8*, i8** @TRUE, align 8
  store i8* %111, i8** @errorStop, align 8
  br label %221

112:                                              ; preds = %106
  %113 = load i8*, i8** %6, align 8
  %114 = call i64 @strcmp(i8* %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = call i32 @testCases_setLevel(i32 2)
  %118 = load i8*, i8** @TRUE, align 8
  store i8* %118, i8** @forever, align 8
  br label %220

119:                                              ; preds = %112
  %120 = load i8*, i8** %6, align 8
  %121 = call i64 @strcmp(i8* %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = load i8*, i8** %6, align 8
  %125 = call i64 @strcmp(i8* %124, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123, %119
  %128 = load i32, i32* @ROUND_NEAREST_EVEN, align 4
  store i32 %128, i32* %11, align 4
  br label %219

129:                                              ; preds = %123
  %130 = load i8*, i8** %6, align 8
  %131 = call i64 @strcmp(i8* %130, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = load i8*, i8** %6, align 8
  %135 = call i64 @strcmp(i8* %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %133, %129
  %138 = load i32, i32* @ROUND_TO_ZERO, align 4
  store i32 %138, i32* %11, align 4
  br label %218

139:                                              ; preds = %133
  %140 = load i8*, i8** %6, align 8
  %141 = call i64 @strcmp(i8* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i32, i32* @ROUND_DOWN, align 4
  store i32 %144, i32* %11, align 4
  br label %217

145:                                              ; preds = %139
  %146 = load i8*, i8** %6, align 8
  %147 = call i64 @strcmp(i8* %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i32, i32* @ROUND_UP, align 4
  store i32 %150, i32* %11, align 4
  br label %216

151:                                              ; preds = %145
  %152 = load i8*, i8** %6, align 8
  %153 = call i64 @strcmp(i8* %152, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i32, i32* @TININESS_BEFORE_ROUNDING, align 4
  store i32 %156, i32* %12, align 4
  br label %215

157:                                              ; preds = %151
  %158 = load i8*, i8** %6, align 8
  %159 = call i64 @strcmp(i8* %158, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0))
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = load i32, i32* @TININESS_AFTER_ROUNDING, align 4
  store i32 %162, i32* %12, align 4
  br label %214

163:                                              ; preds = %157
  %164 = load i8*, i8** %6, align 8
  %165 = call i64 @strcmp(i8* %164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = load i8*, i8** @TRUE, align 8
  store i8* %168, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 1, i32* %9, align 4
  br label %213

169:                                              ; preds = %163
  %170 = load i8*, i8** %6, align 8
  %171 = call i64 @strcmp(i8* %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load i8*, i8** @TRUE, align 8
  store i8* %174, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 2, i32* %9, align 4
  br label %212

175:                                              ; preds = %169
  %176 = load i8*, i8** %6, align 8
  %177 = call i64 @strcmp(i8* %176, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = load i8*, i8** @TRUE, align 8
  store i8* %180, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %211

181:                                              ; preds = %175
  store i64 1, i64* %8, align 8
  br label %182

182:                                              ; preds = %197, %181
  %183 = load i64, i64* %8, align 8
  %184 = load i64, i64* @NUM_FUNCTIONS, align 8
  %185 = icmp ult i64 %183, %184
  br i1 %185, label %186, label %200

186:                                              ; preds = %182
  %187 = load i8*, i8** %6, align 8
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** @functions, align 8
  %189 = load i64, i64* %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = call i64 @strcmp(i8* %187, i8* %192)
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %186
  br label %200

196:                                              ; preds = %186
  br label %197

197:                                              ; preds = %196
  %198 = load i64, i64* %8, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %8, align 8
  br label %182

200:                                              ; preds = %195, %182
  %201 = load i64, i64* %8, align 8
  %202 = load i64, i64* @NUM_FUNCTIONS, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %209

204:                                              ; preds = %200
  %205 = load i8**, i8*** %5, align 8
  %206 = getelementptr inbounds i8*, i8** %205, i64 0
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0), i8* %207)
  br label %209

209:                                              ; preds = %204, %200
  %210 = load i8*, i8** @TRUE, align 8
  store i8* %210, i8** %7, align 8
  br label %211

211:                                              ; preds = %209, %179
  br label %212

212:                                              ; preds = %211, %173
  br label %213

213:                                              ; preds = %212, %167
  br label %214

214:                                              ; preds = %213, %161
  br label %215

215:                                              ; preds = %214, %155
  br label %216

216:                                              ; preds = %215, %149
  br label %217

217:                                              ; preds = %216, %143
  br label %218

218:                                              ; preds = %217, %137
  br label %219

219:                                              ; preds = %218, %127
  br label %220

220:                                              ; preds = %219, %116
  br label %221

221:                                              ; preds = %220, %110
  br label %222

222:                                              ; preds = %221, %97
  br label %223

223:                                              ; preds = %222, %82
  br label %224

224:                                              ; preds = %223, %76
  br label %225

225:                                              ; preds = %224, %62
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %4, align 4
  %228 = add nsw i32 %227, -1
  store i32 %228, i32* %4, align 4
  %229 = load i8**, i8*** %5, align 8
  %230 = getelementptr inbounds i8*, i8** %229, i32 1
  store i8** %230, i8*** %5, align 8
  br label %26

231:                                              ; preds = %34
  %232 = load i8*, i8** %7, align 8
  %233 = icmp ne i8* %232, null
  br i1 %233, label %236, label %234

234:                                              ; preds = %231
  %235 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0))
  br label %236

236:                                              ; preds = %234, %231
  %237 = load i32, i32* @SIGINT, align 4
  %238 = load i32, i32* @catchSIGINT, align 4
  %239 = call i32 @signal(i32 %237, i32 %238)
  %240 = load i32, i32* @SIGTERM, align 4
  %241 = load i32, i32* @catchSIGINT, align 4
  %242 = call i32 @signal(i32 %240, i32 %241)
  %243 = load i64, i64* %8, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %264

245:                                              ; preds = %236
  %246 = load i8*, i8** @forever, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %248, label %258

248:                                              ; preds = %245
  %249 = load i32, i32* %10, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %248
  store i32 80, i32* %10, align 4
  br label %252

252:                                              ; preds = %251, %248
  %253 = load i32, i32* %11, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %257, label %255

255:                                              ; preds = %252
  %256 = load i32, i32* @ROUND_NEAREST_EVEN, align 4
  store i32 %256, i32* %11, align 4
  br label %257

257:                                              ; preds = %255, %252
  br label %258

258:                                              ; preds = %257, %245
  %259 = load i64, i64* %8, align 8
  %260 = load i32, i32* %10, align 4
  %261 = load i32, i32* %11, align 4
  %262 = load i32, i32* %12, align 4
  %263 = call i32 @testFunction(i64 %259, i32 %260, i32 %261, i32 %262)
  br label %333

264:                                              ; preds = %236
  %265 = load i32, i32* %9, align 4
  %266 = icmp eq i32 %265, 1
  br i1 %266, label %267, label %290

267:                                              ; preds = %264
  store i64 1, i64* %8, align 8
  br label %268

268:                                              ; preds = %286, %267
  %269 = load i64, i64* %8, align 8
  %270 = load i64, i64* @NUM_FUNCTIONS, align 8
  %271 = icmp ult i64 %269, %270
  br i1 %271, label %272, label %289

272:                                              ; preds = %268
  %273 = load %struct.TYPE_2__*, %struct.TYPE_2__** @functions, align 8
  %274 = load i64, i64* %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = icmp eq i32 %277, 1
  br i1 %278, label %279, label %285

279:                                              ; preds = %272
  %280 = load i64, i64* %8, align 8
  %281 = load i32, i32* %10, align 4
  %282 = load i32, i32* %11, align 4
  %283 = load i32, i32* %12, align 4
  %284 = call i32 @testFunction(i64 %280, i32 %281, i32 %282, i32 %283)
  br label %285

285:                                              ; preds = %279, %272
  br label %286

286:                                              ; preds = %285
  %287 = load i64, i64* %8, align 8
  %288 = add i64 %287, 1
  store i64 %288, i64* %8, align 8
  br label %268

289:                                              ; preds = %268
  br label %332

290:                                              ; preds = %264
  %291 = load i32, i32* %9, align 4
  %292 = icmp eq i32 %291, 2
  br i1 %292, label %293, label %316

293:                                              ; preds = %290
  store i64 1, i64* %8, align 8
  br label %294

294:                                              ; preds = %312, %293
  %295 = load i64, i64* %8, align 8
  %296 = load i64, i64* @NUM_FUNCTIONS, align 8
  %297 = icmp ult i64 %295, %296
  br i1 %297, label %298, label %315

298:                                              ; preds = %294
  %299 = load %struct.TYPE_2__*, %struct.TYPE_2__** @functions, align 8
  %300 = load i64, i64* %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %299, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = icmp eq i32 %303, 2
  br i1 %304, label %305, label %311

305:                                              ; preds = %298
  %306 = load i64, i64* %8, align 8
  %307 = load i32, i32* %10, align 4
  %308 = load i32, i32* %11, align 4
  %309 = load i32, i32* %12, align 4
  %310 = call i32 @testFunction(i64 %306, i32 %307, i32 %308, i32 %309)
  br label %311

311:                                              ; preds = %305, %298
  br label %312

312:                                              ; preds = %311
  %313 = load i64, i64* %8, align 8
  %314 = add i64 %313, 1
  store i64 %314, i64* %8, align 8
  br label %294

315:                                              ; preds = %294
  br label %331

316:                                              ; preds = %290
  store i64 1, i64* %8, align 8
  br label %317

317:                                              ; preds = %327, %316
  %318 = load i64, i64* %8, align 8
  %319 = load i64, i64* @NUM_FUNCTIONS, align 8
  %320 = icmp ult i64 %318, %319
  br i1 %320, label %321, label %330

321:                                              ; preds = %317
  %322 = load i64, i64* %8, align 8
  %323 = load i32, i32* %10, align 4
  %324 = load i32, i32* %11, align 4
  %325 = load i32, i32* %12, align 4
  %326 = call i32 @testFunction(i64 %322, i32 %323, i32 %324, i32 %325)
  br label %327

327:                                              ; preds = %321
  %328 = load i64, i64* %8, align 8
  %329 = add i64 %328, 1
  store i64 %329, i64* %8, align 8
  br label %317

330:                                              ; preds = %317
  br label %331

331:                                              ; preds = %330, %315
  br label %332

332:                                              ; preds = %331, %289
  br label %333

333:                                              ; preds = %332, %258
  %334 = call i32 (...) @exitWithStatus()
  br label %335

335:                                              ; preds = %333, %50
  %336 = load i32, i32* %3, align 4
  ret i32 %336
}

declare dso_local i32 @testCases_setLevel(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @fail(i8*, ...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @testFunction(i64, i32, i32, i32) #1

declare dso_local i32 @exitWithStatus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
