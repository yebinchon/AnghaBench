; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_vsort.c_find_suffix.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_vsort.c_find_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64*)* @find_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_suffix(i64 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %11 = load i64*, i64** %6, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %54, %3
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @bws_get_iter_value(i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i1 [ false, %12 ], [ %19, %16 ]
  br i1 %21, label %22, label %59

22:                                               ; preds = %20
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @isalpha_clocale(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 126
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %32, %29, %25
  br label %54

34:                                               ; preds = %22
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 46
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  store i32 1, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  store i32 1, i32* %10, align 4
  %41 = load i64, i64* %8, align 8
  %42 = load i64*, i64** %6, align 8
  store i64 %41, i64* %42, align 8
  br label %43

43:                                               ; preds = %40, %37
  br label %53

44:                                               ; preds = %34
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @isalnum_clocale(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 126
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %51, %48, %44
  br label %53

53:                                               ; preds = %52, %43
  br label %54

54:                                               ; preds = %53, %33
  %55 = load i64, i64* %4, align 8
  %56 = call i64 @bws_iterator_inc(i64 %55, i32 1)
  store i64 %56, i64* %4, align 8
  %57 = load i64, i64* %8, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %8, align 8
  br label %12

59:                                               ; preds = %20
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i64, i64* %8, align 8
  %64 = load i64*, i64** %6, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %59
  ret void
}

declare dso_local i32 @bws_get_iter_value(i64) #1

declare dso_local i32 @isalpha_clocale(i32) #1

declare dso_local i32 @isalnum_clocale(i32) #1

declare dso_local i64 @bws_iterator_inc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
