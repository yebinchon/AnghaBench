; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rctl/extr_rctl.c_expand_amount.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rctl/extr_rctl.c_expand_amount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"=/\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"malformed rule '%s': invalid numeric value '%s'\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%s:%s:%s:%s=%ju\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"%s:%s:%s:%s=%ju/%s\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @expand_amount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @expand_amount(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @strdup(i8* %17)
  store i8* %18, i8** %13, align 8
  store i8* %18, i8** %15, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %104

23:                                               ; preds = %2
  %24 = call i8* @strsep(i8** %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %24, i8** %7, align 8
  %25 = call i8* @strsep(i8** %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %25, i8** %8, align 8
  %26 = call i8* @strsep(i8** %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %9, align 8
  %27 = call i8* @strsep(i8** %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %27, i8** %10, align 8
  %28 = call i8* @strsep(i8** %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %13, align 8
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %23
  %33 = load i8*, i8** %11, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %32, %23
  %37 = load i8*, i8** %15, align 8
  %38 = call i32 @free(i8* %37)
  %39 = load i8*, i8** %4, align 8
  %40 = call i8* @strdup(i8* %39)
  store i8* %40, i8** %13, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %104

45:                                               ; preds = %36
  %46 = load i8*, i8** %13, align 8
  store i8* %46, i8** %3, align 8
  br label %104

47:                                               ; preds = %32
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i8*, i8** %8, align 8
  %53 = icmp ne i8* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i8*, i8** %9, align 8
  %57 = icmp ne i8* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i8*, i8** %10, align 8
  %61 = icmp ne i8* %60, null
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i8*, i8** %11, align 8
  %65 = call i64 @expand_number(i8* %64, i64* %6)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %47
  %68 = load i8*, i8** %5, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* %68, i8* %69)
  %71 = load i8*, i8** %15, align 8
  %72 = call i32 @free(i8* %71)
  store i8* null, i8** %3, align 8
  br label %104

73:                                               ; preds = %47
  %74 = load i8*, i8** %12, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i8*, i8** %7, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = load i64, i64* %6, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 (i8**, i8*, i8*, i8*, i8*, i8*, i32, ...) @asprintf(i8** %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %77, i8* %78, i8* %79, i8* %80, i32 %82)
  store i32 %83, i32* %16, align 4
  br label %93

84:                                               ; preds = %73
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load i64, i64* %6, align 8
  %90 = trunc i64 %89 to i32
  %91 = load i8*, i8** %12, align 8
  %92 = call i32 (i8**, i8*, i8*, i8*, i8*, i8*, i32, ...) @asprintf(i8** %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %85, i8* %86, i8* %87, i8* %88, i32 %90, i8* %91)
  store i32 %92, i32* %16, align 4
  br label %93

93:                                               ; preds = %84, %76
  %94 = load i32, i32* %16, align 4
  %95 = icmp sle i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %98 = load i8*, i8** %15, align 8
  %99 = call i32 @free(i8* %98)
  store i8* null, i8** %3, align 8
  br label %104

100:                                              ; preds = %93
  %101 = load i8*, i8** %15, align 8
  %102 = call i32 @free(i8* %101)
  %103 = load i8*, i8** %14, align 8
  store i8* %103, i8** %3, align 8
  br label %104

104:                                              ; preds = %100, %96, %67, %45, %43, %21
  %105 = load i8*, i8** %3, align 8
  ret i8* %105
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @expand_number(i8*, i64*) #1

declare dso_local i32 @warnx(i8*, i8*, i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*, i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
