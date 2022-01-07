; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_sort.c_parse_memory_buffer_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_sort.c_parse_memory_buffer_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@available_free_memory = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @parse_memory_buffer_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_memory_buffer_value(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i64, i64* @available_free_memory, align 8
  store i64 %9, i64* %2, align 8
  br label %61

10:                                               ; preds = %1
  store i8* null, i8** %4, align 8
  store i64 0, i64* @errno, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strtoll(i8* %11, i8** %4, i32 10)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* @errno, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = call i32 @getstr(i32 4)
  %17 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i64, i64* @available_free_memory, align 8
  store i64 %18, i64* %5, align 8
  br label %59

19:                                               ; preds = %10
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  switch i32 %22, label %53 [
    i32 89, label %23
    i32 90, label %26
    i32 69, label %29
    i32 80, label %32
    i32 84, label %35
    i32 71, label %38
    i32 77, label %41
    i32 0, label %44
    i32 75, label %44
    i32 98, label %47
    i32 37, label %48
  ]

23:                                               ; preds = %19
  %24 = load i64, i64* %5, align 8
  %25 = mul i64 %24, 1024
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %19, %23
  %27 = load i64, i64* %5, align 8
  %28 = mul i64 %27, 1024
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %19, %26
  %30 = load i64, i64* %5, align 8
  %31 = mul i64 %30, 1024
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %19, %29
  %33 = load i64, i64* %5, align 8
  %34 = mul i64 %33, 1024
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %19, %32
  %36 = load i64, i64* %5, align 8
  %37 = mul i64 %36, 1024
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %19, %35
  %39 = load i64, i64* %5, align 8
  %40 = mul i64 %39, 1024
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %19, %38
  %42 = load i64, i64* %5, align 8
  %43 = mul i64 %42, 1024
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %19, %19, %41
  %45 = load i64, i64* %5, align 8
  %46 = mul i64 %45, 1024
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %19, %44
  br label %58

48:                                               ; preds = %19
  %49 = load i64, i64* @available_free_memory, align 8
  %50 = load i64, i64* %5, align 8
  %51 = mul i64 %49, %50
  %52 = udiv i64 %51, 100
  store i64 %52, i64* %5, align 8
  br label %58

53:                                               ; preds = %19
  %54 = load i32, i32* @EINVAL, align 4
  %55 = load i32, i32* @optarg, align 4
  %56 = call i32 @warnc(i32 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i64, i64* @available_free_memory, align 8
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %53, %48, %47
  br label %59

59:                                               ; preds = %58, %15
  %60 = load i64, i64* %5, align 8
  store i64 %60, i64* %2, align 8
  br label %61

61:                                               ; preds = %59, %8
  %62 = load i64, i64* %2, align 8
  ret i64 %62
}

declare dso_local i64 @strtoll(i8*, i8**, i32) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @getstr(i32) #1

declare dso_local i32 @warnc(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
