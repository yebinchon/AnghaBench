; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_testsoftfloat.c_testFunctionVariety.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_testsoftfloat.c_testFunctionVariety.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@functions = common dso_local global %struct.TYPE_2__* null, align 8
@functionName = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"32\00", align 1
@roundingPrecisionName = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"64\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@roundingModeName = common dso_local global i8* null, align 8
@float_round_nearest_even = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"nearest_even\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"to_zero\00", align 1
@float_round_to_zero = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@float_round_down = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@float_round_up = common dso_local global i64 0, align 8
@float_rounding_mode = common dso_local global i64 0, align 8
@slow_float_rounding_mode = common dso_local global i64 0, align 8
@tininessModeName = common dso_local global i8* null, align 8
@float_tininess_after_rounding = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"before\00", align 1
@float_tininess_before_rounding = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"after\00", align 1
@float_detect_tininess = common dso_local global i32 0, align 4
@slow_float_detect_tininess = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"Testing \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@slow_int32_to_float32 = common dso_local global i32 0, align 4
@int32_to_float32 = common dso_local global i32 0, align 4
@slow_int32_to_float64 = common dso_local global i32 0, align 4
@int32_to_float64 = common dso_local global i32 0, align 4
@slow_float32_to_int32 = common dso_local global i32 0, align 4
@float32_to_int32 = common dso_local global i32 0, align 4
@slow_float32_to_int32_round_to_zero = common dso_local global i32 0, align 4
@float32_to_int32_round_to_zero = common dso_local global i32 0, align 4
@slow_float32_to_float64 = common dso_local global i32 0, align 4
@float32_to_float64 = common dso_local global i32 0, align 4
@slow_float32_round_to_int = common dso_local global i32 0, align 4
@float32_round_to_int = common dso_local global i32 0, align 4
@slow_float32_add = common dso_local global i32 0, align 4
@float32_add = common dso_local global i32 0, align 4
@slow_float32_sub = common dso_local global i32 0, align 4
@float32_sub = common dso_local global i32 0, align 4
@slow_float32_mul = common dso_local global i32 0, align 4
@float32_mul = common dso_local global i32 0, align 4
@slow_float32_div = common dso_local global i32 0, align 4
@float32_div = common dso_local global i32 0, align 4
@slow_float32_rem = common dso_local global i32 0, align 4
@float32_rem = common dso_local global i32 0, align 4
@slow_float32_sqrt = common dso_local global i32 0, align 4
@float32_sqrt = common dso_local global i32 0, align 4
@slow_float32_eq = common dso_local global i32 0, align 4
@float32_eq = common dso_local global i32 0, align 4
@slow_float32_le = common dso_local global i32 0, align 4
@float32_le = common dso_local global i32 0, align 4
@slow_float32_lt = common dso_local global i32 0, align 4
@float32_lt = common dso_local global i32 0, align 4
@slow_float32_eq_signaling = common dso_local global i32 0, align 4
@float32_eq_signaling = common dso_local global i32 0, align 4
@slow_float32_le_quiet = common dso_local global i32 0, align 4
@float32_le_quiet = common dso_local global i32 0, align 4
@slow_float32_lt_quiet = common dso_local global i32 0, align 4
@float32_lt_quiet = common dso_local global i32 0, align 4
@slow_float64_to_int32 = common dso_local global i32 0, align 4
@float64_to_int32 = common dso_local global i32 0, align 4
@slow_float64_to_int32_round_to_zero = common dso_local global i32 0, align 4
@float64_to_int32_round_to_zero = common dso_local global i32 0, align 4
@slow_float64_to_float32 = common dso_local global i32 0, align 4
@float64_to_float32 = common dso_local global i32 0, align 4
@slow_float64_round_to_int = common dso_local global i32 0, align 4
@float64_round_to_int = common dso_local global i32 0, align 4
@slow_float64_add = common dso_local global i32 0, align 4
@float64_add = common dso_local global i32 0, align 4
@slow_float64_sub = common dso_local global i32 0, align 4
@float64_sub = common dso_local global i32 0, align 4
@slow_float64_mul = common dso_local global i32 0, align 4
@float64_mul = common dso_local global i32 0, align 4
@slow_float64_div = common dso_local global i32 0, align 4
@float64_div = common dso_local global i32 0, align 4
@slow_float64_rem = common dso_local global i32 0, align 4
@float64_rem = common dso_local global i32 0, align 4
@slow_float64_sqrt = common dso_local global i32 0, align 4
@float64_sqrt = common dso_local global i32 0, align 4
@slow_float64_eq = common dso_local global i32 0, align 4
@float64_eq = common dso_local global i32 0, align 4
@slow_float64_le = common dso_local global i32 0, align 4
@float64_le = common dso_local global i32 0, align 4
@slow_float64_lt = common dso_local global i32 0, align 4
@float64_lt = common dso_local global i32 0, align 4
@slow_float64_eq_signaling = common dso_local global i32 0, align 4
@float64_eq_signaling = common dso_local global i32 0, align 4
@slow_float64_le_quiet = common dso_local global i32 0, align 4
@float64_le_quiet = common dso_local global i32 0, align 4
@slow_float64_lt_quiet = common dso_local global i32 0, align 4
@float64_lt_quiet = common dso_local global i32 0, align 4
@errorStop = common dso_local global i64 0, align 8
@anyErrors = common dso_local global i64 0, align 8
@stop = common dso_local global i64 0, align 8
@float128_add = common dso_local global i32 0, align 4
@float128_div = common dso_local global i32 0, align 4
@float128_eq = common dso_local global i32 0, align 4
@float128_eq_signaling = common dso_local global i32 0, align 4
@float128_le = common dso_local global i32 0, align 4
@float128_le_quiet = common dso_local global i32 0, align 4
@float128_lt = common dso_local global i32 0, align 4
@float128_lt_quiet = common dso_local global i32 0, align 4
@float128_mul = common dso_local global i32 0, align 4
@float128_rem = common dso_local global i32 0, align 4
@float128_round_to_int = common dso_local global i32 0, align 4
@float128_sqrt = common dso_local global i32 0, align 4
@float128_sub = common dso_local global i32 0, align 4
@float128_to_float32 = common dso_local global i32 0, align 4
@float128_to_float64 = common dso_local global i32 0, align 4
@float128_to_floatx80 = common dso_local global i32 0, align 4
@float128_to_int32 = common dso_local global i32 0, align 4
@float128_to_int32_round_to_zero = common dso_local global i32 0, align 4
@float128_to_int64 = common dso_local global i32 0, align 4
@float128_to_int64_round_to_zero = common dso_local global i32 0, align 4
@float32_to_float128 = common dso_local global i32 0, align 4
@float32_to_floatx80 = common dso_local global i32 0, align 4
@float32_to_int64 = common dso_local global i32 0, align 4
@float32_to_int64_round_to_zero = common dso_local global i32 0, align 4
@float64_to_float128 = common dso_local global i32 0, align 4
@float64_to_floatx80 = common dso_local global i32 0, align 4
@float64_to_int64 = common dso_local global i32 0, align 4
@float64_to_int64_round_to_zero = common dso_local global i32 0, align 4
@floatx80_add = common dso_local global i32 0, align 4
@floatx80_div = common dso_local global i32 0, align 4
@floatx80_eq = common dso_local global i32 0, align 4
@floatx80_eq_signaling = common dso_local global i32 0, align 4
@floatx80_le = common dso_local global i32 0, align 4
@floatx80_le_quiet = common dso_local global i32 0, align 4
@floatx80_lt = common dso_local global i32 0, align 4
@floatx80_lt_quiet = common dso_local global i32 0, align 4
@floatx80_mul = common dso_local global i32 0, align 4
@floatx80_rem = common dso_local global i32 0, align 4
@floatx80_round_to_int = common dso_local global i32 0, align 4
@floatx80_rounding_precision = common dso_local global i32 0, align 4
@floatx80_sqrt = common dso_local global i32 0, align 4
@floatx80_sub = common dso_local global i32 0, align 4
@floatx80_to_float128 = common dso_local global i32 0, align 4
@floatx80_to_float32 = common dso_local global i32 0, align 4
@floatx80_to_float64 = common dso_local global i32 0, align 4
@floatx80_to_int32 = common dso_local global i32 0, align 4
@floatx80_to_int32_round_to_zero = common dso_local global i32 0, align 4
@floatx80_to_int64 = common dso_local global i32 0, align 4
@floatx80_to_int64_round_to_zero = common dso_local global i32 0, align 4
@int32_to_float128 = common dso_local global i32 0, align 4
@int32_to_floatx80 = common dso_local global i32 0, align 4
@int64_to_float128 = common dso_local global i32 0, align 4
@int64_to_float32 = common dso_local global i32 0, align 4
@int64_to_float64 = common dso_local global i32 0, align 4
@int64_to_floatx80 = common dso_local global i32 0, align 4
@slow_float128_add = common dso_local global i32 0, align 4
@slow_float128_div = common dso_local global i32 0, align 4
@slow_float128_eq = common dso_local global i32 0, align 4
@slow_float128_eq_signaling = common dso_local global i32 0, align 4
@slow_float128_le = common dso_local global i32 0, align 4
@slow_float128_le_quiet = common dso_local global i32 0, align 4
@slow_float128_lt = common dso_local global i32 0, align 4
@slow_float128_lt_quiet = common dso_local global i32 0, align 4
@slow_float128_mul = common dso_local global i32 0, align 4
@slow_float128_rem = common dso_local global i32 0, align 4
@slow_float128_round_to_int = common dso_local global i32 0, align 4
@slow_float128_sqrt = common dso_local global i32 0, align 4
@slow_float128_sub = common dso_local global i32 0, align 4
@slow_float128_to_float32 = common dso_local global i32 0, align 4
@slow_float128_to_float64 = common dso_local global i32 0, align 4
@slow_float128_to_floatx80 = common dso_local global i32 0, align 4
@slow_float128_to_int32 = common dso_local global i32 0, align 4
@slow_float128_to_int32_round_to_zero = common dso_local global i32 0, align 4
@slow_float128_to_int64 = common dso_local global i32 0, align 4
@slow_float128_to_int64_round_to_zero = common dso_local global i32 0, align 4
@slow_float32_to_float128 = common dso_local global i32 0, align 4
@slow_float32_to_floatx80 = common dso_local global i32 0, align 4
@slow_float32_to_int64 = common dso_local global i32 0, align 4
@slow_float32_to_int64_round_to_zero = common dso_local global i32 0, align 4
@slow_float64_to_float128 = common dso_local global i32 0, align 4
@slow_float64_to_floatx80 = common dso_local global i32 0, align 4
@slow_float64_to_int64 = common dso_local global i32 0, align 4
@slow_float64_to_int64_round_to_zero = common dso_local global i32 0, align 4
@slow_floatx80_add = common dso_local global i32 0, align 4
@slow_floatx80_div = common dso_local global i32 0, align 4
@slow_floatx80_eq = common dso_local global i32 0, align 4
@slow_floatx80_eq_signaling = common dso_local global i32 0, align 4
@slow_floatx80_le = common dso_local global i32 0, align 4
@slow_floatx80_le_quiet = common dso_local global i32 0, align 4
@slow_floatx80_lt = common dso_local global i32 0, align 4
@slow_floatx80_lt_quiet = common dso_local global i32 0, align 4
@slow_floatx80_mul = common dso_local global i32 0, align 4
@slow_floatx80_rem = common dso_local global i32 0, align 4
@slow_floatx80_round_to_int = common dso_local global i32 0, align 4
@slow_floatx80_rounding_precision = common dso_local global i32 0, align 4
@slow_floatx80_sqrt = common dso_local global i32 0, align 4
@slow_floatx80_sub = common dso_local global i32 0, align 4
@slow_floatx80_to_float128 = common dso_local global i32 0, align 4
@slow_floatx80_to_float32 = common dso_local global i32 0, align 4
@slow_floatx80_to_float64 = common dso_local global i32 0, align 4
@slow_floatx80_to_int32 = common dso_local global i32 0, align 4
@slow_floatx80_to_int32_round_to_zero = common dso_local global i32 0, align 4
@slow_floatx80_to_int64 = common dso_local global i32 0, align 4
@slow_floatx80_to_int64_round_to_zero = common dso_local global i32 0, align 4
@slow_int32_to_float128 = common dso_local global i32 0, align 4
@slow_int32_to_floatx80 = common dso_local global i32 0, align 4
@slow_int64_to_float128 = common dso_local global i32 0, align 4
@slow_int64_to_float32 = common dso_local global i32 0, align 4
@slow_int64_to_float64 = common dso_local global i32 0, align 4
@slow_int64_to_floatx80 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32, i32)* @testFunctionVariety to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testFunctionVariety(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @functions, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* @functionName, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 32
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** @roundingPrecisionName, align 8
  br label %30

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 64
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** @roundingPrecisionName, align 8
  br label %29

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 80
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** @roundingPrecisionName, align 8
  br label %28

27:                                               ; preds = %23
  store i8* null, i8** @roundingPrecisionName, align 8
  br label %28

28:                                               ; preds = %27, %26
  br label %29

29:                                               ; preds = %28, %22
  br label %30

30:                                               ; preds = %29, %18
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %32 [
    i32 132, label %34
    i32 131, label %36
    i32 133, label %38
    i32 130, label %40
  ]

32:                                               ; preds = %30
  store i8* null, i8** @roundingModeName, align 8
  %33 = load i64, i64* @float_round_nearest_even, align 8
  store i64 %33, i64* %9, align 8
  br label %42

34:                                               ; preds = %30
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** @roundingModeName, align 8
  %35 = load i64, i64* @float_round_nearest_even, align 8
  store i64 %35, i64* %9, align 8
  br label %42

36:                                               ; preds = %30
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** @roundingModeName, align 8
  %37 = load i64, i64* @float_round_to_zero, align 8
  store i64 %37, i64* %9, align 8
  br label %42

38:                                               ; preds = %30
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** @roundingModeName, align 8
  %39 = load i64, i64* @float_round_down, align 8
  store i64 %39, i64* %9, align 8
  br label %42

40:                                               ; preds = %30
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** @roundingModeName, align 8
  %41 = load i64, i64* @float_round_up, align 8
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %40, %38, %36, %34, %32
  %43 = load i64, i64* %9, align 8
  store i64 %43, i64* @float_rounding_mode, align 8
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* @slow_float_rounding_mode, align 8
  %45 = load i32, i32* %8, align 4
  switch i32 %45, label %46 [
    i32 128, label %48
    i32 129, label %50
  ]

46:                                               ; preds = %42
  store i8* null, i8** @tininessModeName, align 8
  %47 = load i32, i32* @float_tininess_after_rounding, align 4
  store i32 %47, i32* %10, align 4
  br label %52

48:                                               ; preds = %42
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** @tininessModeName, align 8
  %49 = load i32, i32* @float_tininess_before_rounding, align 4
  store i32 %49, i32* %10, align 4
  br label %52

50:                                               ; preds = %42
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** @tininessModeName, align 8
  %51 = load i32, i32* @float_tininess_after_rounding, align 4
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %50, %48, %46
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* @float_detect_tininess, align 4
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* @slow_float_detect_tininess, align 4
  %55 = load i32, i32* @stderr, align 4
  %56 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @stderr, align 4
  %58 = call i32 @writeFunctionName(i32 %57)
  %59 = load i32, i32* @stderr, align 4
  %60 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %59)
  %61 = load i64, i64* %5, align 8
  switch i64 %61, label %198 [
    i64 140, label %62
    i64 139, label %66
    i64 185, label %70
    i64 184, label %74
    i64 187, label %78
    i64 191, label %82
    i64 201, label %86
    i64 189, label %90
    i64 193, label %94
    i64 200, label %98
    i64 192, label %102
    i64 190, label %106
    i64 199, label %110
    i64 197, label %114
    i64 195, label %118
    i64 198, label %122
    i64 196, label %126
    i64 194, label %130
    i64 165, label %134
    i64 164, label %138
    i64 167, label %142
    i64 171, label %146
    i64 181, label %150
    i64 169, label %154
    i64 173, label %158
    i64 180, label %162
    i64 172, label %166
    i64 170, label %170
    i64 179, label %174
    i64 177, label %178
    i64 175, label %182
    i64 178, label %186
    i64 176, label %190
    i64 174, label %194
  ]

62:                                               ; preds = %52
  %63 = load i32, i32* @slow_int32_to_float32, align 4
  %64 = load i32, i32* @int32_to_float32, align 4
  %65 = call i32 @test_a_int32_z_float32(i32 %63, i32 %64)
  br label %198

66:                                               ; preds = %52
  %67 = load i32, i32* @slow_int32_to_float64, align 4
  %68 = load i32, i32* @int32_to_float64, align 4
  %69 = call i32 @test_a_int32_z_float64(i32 %67, i32 %68)
  br label %198

70:                                               ; preds = %52
  %71 = load i32, i32* @slow_float32_to_int32, align 4
  %72 = load i32, i32* @float32_to_int32, align 4
  %73 = call i32 @test_a_float32_z_int32(i32 %71, i32 %72)
  br label %198

74:                                               ; preds = %52
  %75 = load i32, i32* @slow_float32_to_int32_round_to_zero, align 4
  %76 = load i32, i32* @float32_to_int32_round_to_zero, align 4
  %77 = call i32 @test_a_float32_z_int32(i32 %75, i32 %76)
  br label %198

78:                                               ; preds = %52
  %79 = load i32, i32* @slow_float32_to_float64, align 4
  %80 = load i32, i32* @float32_to_float64, align 4
  %81 = call i32 @test_a_float32_z_float64(i32 %79, i32 %80)
  br label %198

82:                                               ; preds = %52
  %83 = load i32, i32* @slow_float32_round_to_int, align 4
  %84 = load i32, i32* @float32_round_to_int, align 4
  %85 = call i32 @test_az_float32(i32 %83, i32 %84)
  br label %198

86:                                               ; preds = %52
  %87 = load i32, i32* @slow_float32_add, align 4
  %88 = load i32, i32* @float32_add, align 4
  %89 = call i32 @test_abz_float32(i32 %87, i32 %88)
  br label %198

90:                                               ; preds = %52
  %91 = load i32, i32* @slow_float32_sub, align 4
  %92 = load i32, i32* @float32_sub, align 4
  %93 = call i32 @test_abz_float32(i32 %91, i32 %92)
  br label %198

94:                                               ; preds = %52
  %95 = load i32, i32* @slow_float32_mul, align 4
  %96 = load i32, i32* @float32_mul, align 4
  %97 = call i32 @test_abz_float32(i32 %95, i32 %96)
  br label %198

98:                                               ; preds = %52
  %99 = load i32, i32* @slow_float32_div, align 4
  %100 = load i32, i32* @float32_div, align 4
  %101 = call i32 @test_abz_float32(i32 %99, i32 %100)
  br label %198

102:                                              ; preds = %52
  %103 = load i32, i32* @slow_float32_rem, align 4
  %104 = load i32, i32* @float32_rem, align 4
  %105 = call i32 @test_abz_float32(i32 %103, i32 %104)
  br label %198

106:                                              ; preds = %52
  %107 = load i32, i32* @slow_float32_sqrt, align 4
  %108 = load i32, i32* @float32_sqrt, align 4
  %109 = call i32 @test_az_float32(i32 %107, i32 %108)
  br label %198

110:                                              ; preds = %52
  %111 = load i32, i32* @slow_float32_eq, align 4
  %112 = load i32, i32* @float32_eq, align 4
  %113 = call i32 @test_ab_float32_z_flag(i32 %111, i32 %112)
  br label %198

114:                                              ; preds = %52
  %115 = load i32, i32* @slow_float32_le, align 4
  %116 = load i32, i32* @float32_le, align 4
  %117 = call i32 @test_ab_float32_z_flag(i32 %115, i32 %116)
  br label %198

118:                                              ; preds = %52
  %119 = load i32, i32* @slow_float32_lt, align 4
  %120 = load i32, i32* @float32_lt, align 4
  %121 = call i32 @test_ab_float32_z_flag(i32 %119, i32 %120)
  br label %198

122:                                              ; preds = %52
  %123 = load i32, i32* @slow_float32_eq_signaling, align 4
  %124 = load i32, i32* @float32_eq_signaling, align 4
  %125 = call i32 @test_ab_float32_z_flag(i32 %123, i32 %124)
  br label %198

126:                                              ; preds = %52
  %127 = load i32, i32* @slow_float32_le_quiet, align 4
  %128 = load i32, i32* @float32_le_quiet, align 4
  %129 = call i32 @test_ab_float32_z_flag(i32 %127, i32 %128)
  br label %198

130:                                              ; preds = %52
  %131 = load i32, i32* @slow_float32_lt_quiet, align 4
  %132 = load i32, i32* @float32_lt_quiet, align 4
  %133 = call i32 @test_ab_float32_z_flag(i32 %131, i32 %132)
  br label %198

134:                                              ; preds = %52
  %135 = load i32, i32* @slow_float64_to_int32, align 4
  %136 = load i32, i32* @float64_to_int32, align 4
  %137 = call i32 @test_a_float64_z_int32(i32 %135, i32 %136)
  br label %198

138:                                              ; preds = %52
  %139 = load i32, i32* @slow_float64_to_int32_round_to_zero, align 4
  %140 = load i32, i32* @float64_to_int32_round_to_zero, align 4
  %141 = call i32 @test_a_float64_z_int32(i32 %139, i32 %140)
  br label %198

142:                                              ; preds = %52
  %143 = load i32, i32* @slow_float64_to_float32, align 4
  %144 = load i32, i32* @float64_to_float32, align 4
  %145 = call i32 @test_a_float64_z_float32(i32 %143, i32 %144)
  br label %198

146:                                              ; preds = %52
  %147 = load i32, i32* @slow_float64_round_to_int, align 4
  %148 = load i32, i32* @float64_round_to_int, align 4
  %149 = call i32 @test_az_float64(i32 %147, i32 %148)
  br label %198

150:                                              ; preds = %52
  %151 = load i32, i32* @slow_float64_add, align 4
  %152 = load i32, i32* @float64_add, align 4
  %153 = call i32 @test_abz_float64(i32 %151, i32 %152)
  br label %198

154:                                              ; preds = %52
  %155 = load i32, i32* @slow_float64_sub, align 4
  %156 = load i32, i32* @float64_sub, align 4
  %157 = call i32 @test_abz_float64(i32 %155, i32 %156)
  br label %198

158:                                              ; preds = %52
  %159 = load i32, i32* @slow_float64_mul, align 4
  %160 = load i32, i32* @float64_mul, align 4
  %161 = call i32 @test_abz_float64(i32 %159, i32 %160)
  br label %198

162:                                              ; preds = %52
  %163 = load i32, i32* @slow_float64_div, align 4
  %164 = load i32, i32* @float64_div, align 4
  %165 = call i32 @test_abz_float64(i32 %163, i32 %164)
  br label %198

166:                                              ; preds = %52
  %167 = load i32, i32* @slow_float64_rem, align 4
  %168 = load i32, i32* @float64_rem, align 4
  %169 = call i32 @test_abz_float64(i32 %167, i32 %168)
  br label %198

170:                                              ; preds = %52
  %171 = load i32, i32* @slow_float64_sqrt, align 4
  %172 = load i32, i32* @float64_sqrt, align 4
  %173 = call i32 @test_az_float64(i32 %171, i32 %172)
  br label %198

174:                                              ; preds = %52
  %175 = load i32, i32* @slow_float64_eq, align 4
  %176 = load i32, i32* @float64_eq, align 4
  %177 = call i32 @test_ab_float64_z_flag(i32 %175, i32 %176)
  br label %198

178:                                              ; preds = %52
  %179 = load i32, i32* @slow_float64_le, align 4
  %180 = load i32, i32* @float64_le, align 4
  %181 = call i32 @test_ab_float64_z_flag(i32 %179, i32 %180)
  br label %198

182:                                              ; preds = %52
  %183 = load i32, i32* @slow_float64_lt, align 4
  %184 = load i32, i32* @float64_lt, align 4
  %185 = call i32 @test_ab_float64_z_flag(i32 %183, i32 %184)
  br label %198

186:                                              ; preds = %52
  %187 = load i32, i32* @slow_float64_eq_signaling, align 4
  %188 = load i32, i32* @float64_eq_signaling, align 4
  %189 = call i32 @test_ab_float64_z_flag(i32 %187, i32 %188)
  br label %198

190:                                              ; preds = %52
  %191 = load i32, i32* @slow_float64_le_quiet, align 4
  %192 = load i32, i32* @float64_le_quiet, align 4
  %193 = call i32 @test_ab_float64_z_flag(i32 %191, i32 %192)
  br label %198

194:                                              ; preds = %52
  %195 = load i32, i32* @slow_float64_lt_quiet, align 4
  %196 = load i32, i32* @float64_lt_quiet, align 4
  %197 = call i32 @test_ab_float64_z_flag(i32 %195, i32 %196)
  br label %198

198:                                              ; preds = %52, %194, %190, %186, %182, %178, %174, %170, %166, %162, %158, %154, %150, %146, %142, %138, %134, %130, %126, %122, %118, %114, %110, %106, %102, %98, %94, %90, %86, %82, %78, %74, %70, %66, %62
  %199 = load i64, i64* @errorStop, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i64, i64* @anyErrors, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %201, %198
  %205 = load i64, i64* @stop, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %204, %201
  %208 = call i32 (...) @exitWithStatus()
  br label %209

209:                                              ; preds = %207, %204
  ret void
}

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @writeFunctionName(i32) #1

declare dso_local i32 @test_a_int32_z_float32(i32, i32) #1

declare dso_local i32 @test_a_int32_z_float64(i32, i32) #1

declare dso_local i32 @test_a_float32_z_int32(i32, i32) #1

declare dso_local i32 @test_a_float32_z_float64(i32, i32) #1

declare dso_local i32 @test_az_float32(i32, i32) #1

declare dso_local i32 @test_abz_float32(i32, i32) #1

declare dso_local i32 @test_ab_float32_z_flag(i32, i32) #1

declare dso_local i32 @test_a_float64_z_int32(i32, i32) #1

declare dso_local i32 @test_a_float64_z_float32(i32, i32) #1

declare dso_local i32 @test_az_float64(i32, i32) #1

declare dso_local i32 @test_abz_float64(i32, i32) #1

declare dso_local i32 @test_ab_float64_z_flag(i32, i32) #1

declare dso_local i32 @exitWithStatus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
