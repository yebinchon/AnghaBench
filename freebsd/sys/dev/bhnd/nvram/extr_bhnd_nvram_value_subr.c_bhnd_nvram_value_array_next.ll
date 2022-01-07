; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value_subr.c_bhnd_nvram_value_array_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value_subr.c_bhnd_nvram_value_array_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"invalid cookiep\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"short element of type %s -- misaligned representation\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bhnd_nvram_value_array_next(i8* %0, i64 %1, i32 %2, i8* %3, i64* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %5
  %17 = load i64, i64* %8, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i8* null, i8** %6, align 8
  br label %66

20:                                               ; preds = %16
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @bhnd_nvram_value_size(i8* %21, i64 %22, i32 %23, i32 1)
  %25 = load i64*, i64** %11, align 8
  store i64 %24, i64* %25, align 8
  %26 = load i8*, i8** %7, align 8
  store i8* %26, i8** %6, align 8
  br label %66

27:                                               ; preds = %5
  %28 = load i8*, i8** %10, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp uge i8* %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @BHND_NV_ASSERT(i32 %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %33 = load i8*, i8** %10, align 8
  %34 = load i64*, i64** %11, align 8
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr i8, i8* %33, i64 %35
  store i8* %36, i8** %12, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp uge i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %27
  store i8* null, i8** %6, align 8
  br label %66

46:                                               ; preds = %27
  %47 = load i8*, i8** %12, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %13, align 8
  %50 = sub i64 %48, %49
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @bhnd_nvram_value_size(i8* %47, i64 %50, i32 %51, i32 1)
  %53 = load i64*, i64** %11, align 8
  store i64 %52, i64* %53, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %13, align 8
  %56 = sub i64 %54, %55
  %57 = load i64*, i64** %11, align 8
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %56, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %46
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @bhnd_nvram_type_name(i32 %61)
  %63 = call i32 @BHND_NV_LOG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  store i8* null, i8** %6, align 8
  br label %66

64:                                               ; preds = %46
  %65 = load i8*, i8** %12, align 8
  store i8* %65, i8** %6, align 8
  br label %66

66:                                               ; preds = %64, %60, %45, %20, %19
  %67 = load i8*, i8** %6, align 8
  ret i8* %67
}

declare dso_local i64 @bhnd_nvram_value_size(i8*, i64, i32, i32) #1

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local i32 @BHND_NV_LOG(i8*, i32) #1

declare dso_local i32 @bhnd_nvram_type_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
