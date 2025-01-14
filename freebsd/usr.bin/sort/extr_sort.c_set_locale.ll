; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_sort.c_set_locale.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_sort.c_set_locale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lconv = type { i32, i32, i32, i32 }

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@symbol_decimal_point = common dso_local global i32 0, align 4
@symbol_thousands_sep = common dso_local global i32 0, align 4
@symbol_positive_sign = common dso_local global i32 0, align 4
@symbol_negative_sign = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"GNUSORT_NUMERIC_COMPATIBILITY\00", align 1
@gnusort_numeric_compatibility = common dso_local global i32 0, align 4
@LC_COLLATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@byte_sort = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_locale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_locale() #0 {
  %1 = alloca %struct.lconv*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = load i32, i32* @LC_ALL, align 4
  %7 = call i8* @setlocale(i32 %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %8 = call %struct.lconv* (...) @localeconv()
  store %struct.lconv* %8, %struct.lconv** %1, align 8
  %9 = load %struct.lconv*, %struct.lconv** %1, align 8
  %10 = icmp ne %struct.lconv* %9, null
  br i1 %10, label %11, label %32

11:                                               ; preds = %0
  %12 = load %struct.lconv*, %struct.lconv** %1, align 8
  %13 = getelementptr inbounds %struct.lconv, %struct.lconv* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @symbol_decimal_point, align 4
  %16 = call i32 @conv_mbtowc(i32* @symbol_decimal_point, i32 %14, i32 %15)
  %17 = load %struct.lconv*, %struct.lconv** %1, align 8
  %18 = getelementptr inbounds %struct.lconv, %struct.lconv* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @symbol_thousands_sep, align 4
  %21 = call i32 @conv_mbtowc(i32* @symbol_thousands_sep, i32 %19, i32 %20)
  %22 = load %struct.lconv*, %struct.lconv** %1, align 8
  %23 = getelementptr inbounds %struct.lconv, %struct.lconv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @symbol_positive_sign, align 4
  %26 = call i32 @conv_mbtowc(i32* @symbol_positive_sign, i32 %24, i32 %25)
  %27 = load %struct.lconv*, %struct.lconv** %1, align 8
  %28 = getelementptr inbounds %struct.lconv, %struct.lconv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @symbol_negative_sign, align 4
  %31 = call i32 @conv_mbtowc(i32* @symbol_negative_sign, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %11, %0
  %33 = call i64 @getenv(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 1, i32* @gnusort_numeric_compatibility, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* @LC_COLLATE, align 4
  %38 = call i8* @setlocale(i32 %37, i8* null)
  store i8* %38, i8** %2, align 8
  %39 = load i8*, i8** %2, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %72

41:                                               ; preds = %36
  %42 = load i8*, i8** %2, align 8
  %43 = call i8* @sort_strdup(i8* %42)
  store i8* %43, i8** %3, align 8
  %44 = load i32, i32* @LC_COLLATE, align 4
  %45 = call i8* @setlocale(i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %45, i8** %4, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load i8*, i8** %4, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @strcmp(i8* %49, i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  store i32 1, i32* @byte_sort, align 4
  br label %66

54:                                               ; preds = %48, %41
  %55 = load i32, i32* @LC_COLLATE, align 4
  %56 = call i8* @setlocale(i32 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %56, i8** %5, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i8*, i8** %5, align 8
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @strcmp(i8* %60, i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  store i32 1, i32* @byte_sort, align 4
  br label %65

65:                                               ; preds = %64, %59, %54
  br label %66

66:                                               ; preds = %65, %53
  %67 = load i32, i32* @LC_COLLATE, align 4
  %68 = load i8*, i8** %3, align 8
  %69 = call i8* @setlocale(i32 %67, i8* %68)
  %70 = load i8*, i8** %3, align 8
  %71 = call i32 @sort_free(i8* %70)
  br label %72

72:                                               ; preds = %66, %36
  ret void
}

declare dso_local i8* @setlocale(i32, i8*) #1

declare dso_local %struct.lconv* @localeconv(...) #1

declare dso_local i32 @conv_mbtowc(i32*, i32, i32) #1

declare dso_local i64 @getenv(i8*) #1

declare dso_local i8* @sort_strdup(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @sort_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
