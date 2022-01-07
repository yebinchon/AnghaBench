; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_testFunction.c_testFunctionVariety.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_testFunction.c_testFunctionVariety.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@functions = common dso_local global %struct.TYPE_2__* null, align 8
@functionName = common dso_local global i32 0, align 4
@roundingModeName = common dso_local global i8* null, align 8
@float_round_nearest_even = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"nearest_even\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"to_zero\00", align 1
@float_round_to_zero = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@float_round_down = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@float_round_up = common dso_local global i64 0, align 8
@float_rounding_mode = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"Testing \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
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
@float32_add = common dso_local global i32 0, align 4
@float32_div = common dso_local global i32 0, align 4
@float32_eq = common dso_local global i32 0, align 4
@float32_eq_signaling = common dso_local global i32 0, align 4
@float32_le = common dso_local global i32 0, align 4
@float32_le_quiet = common dso_local global i32 0, align 4
@float32_lt = common dso_local global i32 0, align 4
@float32_lt_quiet = common dso_local global i32 0, align 4
@float32_mul = common dso_local global i32 0, align 4
@float32_rem = common dso_local global i32 0, align 4
@float32_round_to_int = common dso_local global i32 0, align 4
@float32_sqrt = common dso_local global i32 0, align 4
@float32_sub = common dso_local global i32 0, align 4
@float32_to_float128 = common dso_local global i32 0, align 4
@float32_to_float64 = common dso_local global i32 0, align 4
@float32_to_floatx80 = common dso_local global i32 0, align 4
@float32_to_int32 = common dso_local global i32 0, align 4
@float32_to_int32_round_to_zero = common dso_local global i32 0, align 4
@float32_to_int64 = common dso_local global i32 0, align 4
@float32_to_int64_round_to_zero = common dso_local global i32 0, align 4
@float64_add = common dso_local global i32 0, align 4
@float64_div = common dso_local global i32 0, align 4
@float64_eq = common dso_local global i32 0, align 4
@float64_eq_signaling = common dso_local global i32 0, align 4
@float64_le = common dso_local global i32 0, align 4
@float64_le_quiet = common dso_local global i32 0, align 4
@float64_lt = common dso_local global i32 0, align 4
@float64_lt_quiet = common dso_local global i32 0, align 4
@float64_mul = common dso_local global i32 0, align 4
@float64_rem = common dso_local global i32 0, align 4
@float64_round_to_int = common dso_local global i32 0, align 4
@float64_sqrt = common dso_local global i32 0, align 4
@float64_sub = common dso_local global i32 0, align 4
@float64_to_float128 = common dso_local global i32 0, align 4
@float64_to_float32 = common dso_local global i32 0, align 4
@float64_to_floatx80 = common dso_local global i32 0, align 4
@float64_to_int32 = common dso_local global i32 0, align 4
@float64_to_int32_round_to_zero = common dso_local global i32 0, align 4
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
@int32_to_float32 = common dso_local global i32 0, align 4
@int32_to_float64 = common dso_local global i32 0, align 4
@int32_to_floatx80 = common dso_local global i32 0, align 4
@int64_to_float128 = common dso_local global i32 0, align 4
@int64_to_float32 = common dso_local global i32 0, align 4
@int64_to_float64 = common dso_local global i32 0, align 4
@int64_to_floatx80 = common dso_local global i32 0, align 4
@roundingPrecisionName = common dso_local global i8* null, align 8
@syst_float128_add = common dso_local global i32 0, align 4
@syst_float128_div = common dso_local global i32 0, align 4
@syst_float128_eq = common dso_local global i32 0, align 4
@syst_float128_eq_signaling = common dso_local global i32 0, align 4
@syst_float128_le = common dso_local global i32 0, align 4
@syst_float128_le_quiet = common dso_local global i32 0, align 4
@syst_float128_lt = common dso_local global i32 0, align 4
@syst_float128_lt_quiet = common dso_local global i32 0, align 4
@syst_float128_mul = common dso_local global i32 0, align 4
@syst_float128_rem = common dso_local global i32 0, align 4
@syst_float128_round_to_int = common dso_local global i32 0, align 4
@syst_float128_sqrt = common dso_local global i32 0, align 4
@syst_float128_sub = common dso_local global i32 0, align 4
@syst_float128_to_float32 = common dso_local global i32 0, align 4
@syst_float128_to_float64 = common dso_local global i32 0, align 4
@syst_float128_to_floatx80 = common dso_local global i32 0, align 4
@syst_float128_to_int32 = common dso_local global i32 0, align 4
@syst_float128_to_int32_round_to_zero = common dso_local global i32 0, align 4
@syst_float128_to_int64 = common dso_local global i32 0, align 4
@syst_float128_to_int64_round_to_zero = common dso_local global i32 0, align 4
@syst_float32_add = common dso_local global i32 0, align 4
@syst_float32_div = common dso_local global i32 0, align 4
@syst_float32_eq = common dso_local global i32 0, align 4
@syst_float32_eq_signaling = common dso_local global i32 0, align 4
@syst_float32_le = common dso_local global i32 0, align 4
@syst_float32_le_quiet = common dso_local global i32 0, align 4
@syst_float32_lt = common dso_local global i32 0, align 4
@syst_float32_lt_quiet = common dso_local global i32 0, align 4
@syst_float32_mul = common dso_local global i32 0, align 4
@syst_float32_rem = common dso_local global i32 0, align 4
@syst_float32_round_to_int = common dso_local global i32 0, align 4
@syst_float32_sqrt = common dso_local global i32 0, align 4
@syst_float32_sub = common dso_local global i32 0, align 4
@syst_float32_to_float128 = common dso_local global i32 0, align 4
@syst_float32_to_float64 = common dso_local global i32 0, align 4
@syst_float32_to_floatx80 = common dso_local global i32 0, align 4
@syst_float32_to_int32 = common dso_local global i32 0, align 4
@syst_float32_to_int32_round_to_zero = common dso_local global i32 0, align 4
@syst_float32_to_int64 = common dso_local global i32 0, align 4
@syst_float32_to_int64_round_to_zero = common dso_local global i32 0, align 4
@syst_float64_add = common dso_local global i32 0, align 4
@syst_float64_div = common dso_local global i32 0, align 4
@syst_float64_eq = common dso_local global i32 0, align 4
@syst_float64_eq_signaling = common dso_local global i32 0, align 4
@syst_float64_le = common dso_local global i32 0, align 4
@syst_float64_le_quiet = common dso_local global i32 0, align 4
@syst_float64_lt = common dso_local global i32 0, align 4
@syst_float64_lt_quiet = common dso_local global i32 0, align 4
@syst_float64_mul = common dso_local global i32 0, align 4
@syst_float64_rem = common dso_local global i32 0, align 4
@syst_float64_round_to_int = common dso_local global i32 0, align 4
@syst_float64_sqrt = common dso_local global i32 0, align 4
@syst_float64_sub = common dso_local global i32 0, align 4
@syst_float64_to_float128 = common dso_local global i32 0, align 4
@syst_float64_to_float32 = common dso_local global i32 0, align 4
@syst_float64_to_floatx80 = common dso_local global i32 0, align 4
@syst_float64_to_int32 = common dso_local global i32 0, align 4
@syst_float64_to_int32_round_to_zero = common dso_local global i32 0, align 4
@syst_float64_to_int64 = common dso_local global i32 0, align 4
@syst_float64_to_int64_round_to_zero = common dso_local global i32 0, align 4
@syst_floatx80_add = common dso_local global i32 0, align 4
@syst_floatx80_div = common dso_local global i32 0, align 4
@syst_floatx80_eq = common dso_local global i32 0, align 4
@syst_floatx80_eq_signaling = common dso_local global i32 0, align 4
@syst_floatx80_le = common dso_local global i32 0, align 4
@syst_floatx80_le_quiet = common dso_local global i32 0, align 4
@syst_floatx80_lt = common dso_local global i32 0, align 4
@syst_floatx80_lt_quiet = common dso_local global i32 0, align 4
@syst_floatx80_mul = common dso_local global i32 0, align 4
@syst_floatx80_rem = common dso_local global i32 0, align 4
@syst_floatx80_round_to_int = common dso_local global i32 0, align 4
@syst_floatx80_sqrt = common dso_local global i32 0, align 4
@syst_floatx80_sub = common dso_local global i32 0, align 4
@syst_floatx80_to_float128 = common dso_local global i32 0, align 4
@syst_floatx80_to_float32 = common dso_local global i32 0, align 4
@syst_floatx80_to_float64 = common dso_local global i32 0, align 4
@syst_floatx80_to_int32 = common dso_local global i32 0, align 4
@syst_floatx80_to_int32_round_to_zero = common dso_local global i32 0, align 4
@syst_floatx80_to_int64 = common dso_local global i32 0, align 4
@syst_floatx80_to_int64_round_to_zero = common dso_local global i32 0, align 4
@syst_int32_to_float128 = common dso_local global i32 0, align 4
@syst_int32_to_float32 = common dso_local global i32 0, align 4
@syst_int32_to_float64 = common dso_local global i32 0, align 4
@syst_int32_to_floatx80 = common dso_local global i32 0, align 4
@syst_int64_to_float128 = common dso_local global i32 0, align 4
@syst_int64_to_float32 = common dso_local global i32 0, align 4
@syst_int64_to_float64 = common dso_local global i32 0, align 4
@syst_int64_to_floatx80 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32)* @testFunctionVariety to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testFunctionVariety(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @functions, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* @functionName, align 4
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %24 [
    i32 0, label %14
    i32 130, label %16
    i32 129, label %18
    i32 131, label %20
    i32 128, label %22
  ]

14:                                               ; preds = %3
  store i8* null, i8** @roundingModeName, align 8
  %15 = load i64, i64* @float_round_nearest_even, align 8
  store i64 %15, i64* %7, align 8
  br label %24

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** @roundingModeName, align 8
  %17 = load i64, i64* @float_round_nearest_even, align 8
  store i64 %17, i64* %7, align 8
  br label %24

18:                                               ; preds = %3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** @roundingModeName, align 8
  %19 = load i64, i64* @float_round_to_zero, align 8
  store i64 %19, i64* %7, align 8
  br label %24

20:                                               ; preds = %3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** @roundingModeName, align 8
  %21 = load i64, i64* @float_round_down, align 8
  store i64 %21, i64* %7, align 8
  br label %24

22:                                               ; preds = %3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** @roundingModeName, align 8
  %23 = load i64, i64* @float_round_up, align 8
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %3, %22, %20, %18, %16, %14
  %25 = load i64, i64* %7, align 8
  store i64 %25, i64* @float_rounding_mode, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @syst_float_set_rounding_mode(i64 %26)
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 @writeFunctionName(i32 %30)
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %32)
  %34 = load i64, i64* %4, align 8
  switch i64 %34, label %35 [
  ]

35:                                               ; preds = %24
  %36 = load i64, i64* @errorStop, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i64, i64* @anyErrors, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38, %35
  %42 = load i64, i64* @stop, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41, %38
  %45 = call i32 (...) @exitWithStatus()
  br label %46

46:                                               ; preds = %44, %41
  ret void
}

declare dso_local i32 @syst_float_set_rounding_mode(i64) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @writeFunctionName(i32) #1

declare dso_local i32 @exitWithStatus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
