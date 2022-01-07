; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value_subr.c_bhnd_nvram_value_check_aligned.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value_subr.c_bhnd_nvram_value_check_aligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BHND_NVRAM_TYPE_NULL = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid zero alignment\00", align 1
@EFTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_nvram_value_check_aligned(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @BHND_NVRAM_TYPE_NULL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @EFAULT, align 4
  store i32 %17, i32* %4, align 4
  br label %57

18:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %57

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @bhnd_nvram_type_host_align(i64 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @BHND_NV_ASSERT(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** %5, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = load i64, i64* %8, align 8
  %29 = urem i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* @EFAULT, align 4
  store i32 %32, i32* %4, align 4
  br label %57

33:                                               ; preds = %19
  %34 = load i64, i64* %7, align 8
  %35 = call i64 @bhnd_nvram_type_width(i64 %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %57

39:                                               ; preds = %33
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %9, align 8
  %42 = urem i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @EFAULT, align 4
  store i32 %45, i32* %4, align 4
  br label %57

46:                                               ; preds = %39
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @bhnd_nvram_is_array_type(i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @EFTYPE, align 4
  store i32 %55, i32* %4, align 4
  br label %57

56:                                               ; preds = %50, %46
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %54, %44, %38, %31, %18, %16
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @bhnd_nvram_type_host_align(i64) #1

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local i64 @bhnd_nvram_type_width(i64) #1

declare dso_local i32 @bhnd_nvram_is_array_type(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
