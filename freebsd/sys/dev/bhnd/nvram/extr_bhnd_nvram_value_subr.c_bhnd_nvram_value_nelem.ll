; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value_subr.c_bhnd_nvram_value_nelem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value_subr.c_bhnd_nvram_value_nelem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"NULL inp\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"invalid width\00", align 1
@EFTYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"bhnd nvram type %u unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_nvram_value_nelem(i8* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @BHND_NV_ASSERT(i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @bhnd_nvram_value_check_aligned(i8* %19, i64 %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %91

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %88 [
    i32 147, label %28
    i32 138, label %30
    i32 137, label %37
    i32 136, label %39
    i32 128, label %68
    i32 134, label %68
    i32 132, label %68
    i32 130, label %68
    i32 139, label %68
    i32 145, label %68
    i32 143, label %68
    i32 141, label %68
    i32 148, label %68
    i32 150, label %68
    i32 140, label %79
    i32 129, label %79
    i32 149, label %79
    i32 146, label %79
    i32 135, label %79
    i32 144, label %79
    i32 133, label %79
    i32 142, label %79
    i32 131, label %79
    i32 151, label %79
  ]

28:                                               ; preds = %26
  %29 = load i64*, i64** %9, align 8
  store i64 1, i64* %29, align 8
  store i32 0, i32* %5, align 4
  br label %91

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @EFAULT, align 4
  store i32 %34, i32* %5, align 4
  br label %91

35:                                               ; preds = %30
  %36 = load i64*, i64** %9, align 8
  store i64 1, i64* %36, align 8
  store i32 0, i32* %5, align 4
  br label %91

37:                                               ; preds = %26
  %38 = load i64*, i64** %9, align 8
  store i64 1, i64* %38, align 8
  store i32 0, i32* %5, align 4
  br label %91

39:                                               ; preds = %26
  %40 = load i8*, i8** %6, align 8
  store i8* %40, i8** %11, align 8
  %41 = load i64, i64* %7, align 8
  store i64 %41, i64* %12, align 8
  %42 = load i64*, i64** %9, align 8
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %66, %39
  %44 = load i64, i64* %12, align 8
  %45 = icmp ugt i64 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %43
  %47 = load i64*, i64** %9, align 8
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i64 @strnlen(i8* %50, i64 %51)
  store i64 %52, i64* %13, align 8
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* %12, align 8
  %55 = sub i64 %54, %53
  store i64 %55, i64* %12, align 8
  %56 = load i64, i64* %13, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 %56
  store i8* %58, i8** %11, align 8
  %59 = load i64, i64* %12, align 8
  %60 = icmp ugt i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %46
  %62 = load i64, i64* %12, align 8
  %63 = add i64 %62, -1
  store i64 %63, i64* %12, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %11, align 8
  br label %66

66:                                               ; preds = %61, %46
  br label %43

67:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %91

68:                                               ; preds = %26, %26, %26, %26, %26, %26, %26, %26, %26, %26
  %69 = load i32, i32* %8, align 4
  %70 = call i64 @bhnd_nvram_type_width(i32 %69)
  store i64 %70, i64* %14, align 8
  %71 = load i64, i64* %14, align 8
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @BHND_NV_ASSERT(i32 %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %14, align 8
  %77 = udiv i64 %75, %76
  %78 = load i64*, i64** %9, align 8
  store i64 %77, i64* %78, align 8
  store i32 0, i32* %5, align 4
  br label %91

79:                                               ; preds = %26, %26, %26, %26, %26, %26, %26, %26, %26, %26
  %80 = load i64, i64* %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i64 @bhnd_nvram_type_width(i32 %81)
  %83 = icmp ne i64 %80, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @EFTYPE, align 4
  store i32 %85, i32* %5, align 4
  br label %91

86:                                               ; preds = %79
  %87 = load i64*, i64** %9, align 8
  store i64 1, i64* %87, align 8
  store i32 0, i32* %5, align 4
  br label %91

88:                                               ; preds = %26
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @BHND_NV_PANIC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %88, %86, %84, %68, %67, %37, %35, %33, %28, %24
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local i32 @bhnd_nvram_value_check_aligned(i8*, i64, i32) #1

declare dso_local i64 @strnlen(i8*, i64) #1

declare dso_local i64 @bhnd_nvram_type_width(i32) #1

declare dso_local i32 @BHND_NV_PANIC(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
