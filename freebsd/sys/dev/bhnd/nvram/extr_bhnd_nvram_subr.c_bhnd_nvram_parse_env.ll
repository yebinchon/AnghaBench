; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_subr.c_bhnd_nvram_parse_env.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_subr.c_bhnd_nvram_parse_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"delimiter '%c' not found in '%.*s'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_nvram_parse_env(i8* %0, i64 %1, i8 signext %2, i8** %3, i64* %4, i8** %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8 %2, i8* %11, align 1
  store i8** %3, i8*** %12, align 8
  store i64* %4, i64** %13, align 8
  store i8** %5, i8*** %14, align 8
  store i64* %6, i64** %15, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i8, i8* %11, align 1
  %19 = load i64, i64* %10, align 8
  %20 = call i8* @memchr(i8* %17, i8 signext %18, i64 %19)
  store i8* %20, i8** %16, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %7
  %23 = load i8, i8* %11, align 1
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @BHND_NV_PRINT_WIDTH(i64 %24)
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @BHND_NV_LOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8 signext %23, i32 %25, i8* %26)
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %8, align 4
  br label %66

29:                                               ; preds = %7
  %30 = load i8**, i8*** %12, align 8
  %31 = icmp ne i8** %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** %9, align 8
  %34 = load i8**, i8*** %12, align 8
  store i8* %33, i8** %34, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i64*, i64** %13, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i8*, i8** %16, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = load i64*, i64** %13, align 8
  store i64 %43, i64* %44, align 8
  br label %45

45:                                               ; preds = %38, %35
  %46 = load i8*, i8** %16, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %16, align 8
  %48 = load i8**, i8*** %14, align 8
  %49 = icmp ne i8** %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i8*, i8** %16, align 8
  %52 = load i8**, i8*** %14, align 8
  store i8* %51, i8** %52, align 8
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i64*, i64** %15, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i64, i64* %10, align 8
  %58 = load i8*, i8** %16, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = sub i64 %57, %62
  %64 = load i64*, i64** %15, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %56, %53
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %65, %22
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @BHND_NV_LOG(i8*, i8 signext, i32, i8*) #1

declare dso_local i32 @BHND_NV_PRINT_WIDTH(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
