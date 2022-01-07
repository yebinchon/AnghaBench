; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/gbdk/libc/extr_scanf.c_scan_int.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/gbdk/libc/extr_scanf.c_scan_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i64*)* @scan_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scan_int(i8* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %11, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %23 [
    i32 45, label %17
    i32 43, label %20
  ]

17:                                               ; preds = %4
  %18 = load i64, i64* %11, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %11, align 8
  br label %20

20:                                               ; preds = %4, %17
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %6, align 8
  br label %23

23:                                               ; preds = %4, %20
  br label %24

24:                                               ; preds = %23, %63
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @isdigit(i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = sub nsw i32 %36, 48
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %10, align 8
  br label %58

39:                                               ; preds = %24
  %40 = load i8*, i8** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = call i64 @isalpha(i8 signext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load i8*, i8** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = call signext i8 @toupper(i8 signext %50)
  %52 = sext i8 %51 to i32
  %53 = sub nsw i32 %52, 65
  %54 = add nsw i32 %53, 10
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %10, align 8
  br label %57

56:                                               ; preds = %39
  br label %71

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57, %31
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp uge i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %71

63:                                               ; preds = %58
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %9, align 8
  %66 = mul i64 %64, %65
  %67 = load i64, i64* %10, align 8
  %68 = add i64 %66, %67
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %6, align 8
  br label %24

71:                                               ; preds = %62, %56
  %72 = load i64, i64* %11, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i64, i64* %9, align 8
  br label %79

76:                                               ; preds = %71
  %77 = load i64, i64* %9, align 8
  %78 = sub i64 0, %77
  br label %79

79:                                               ; preds = %76, %74
  %80 = phi i64 [ %75, %74 ], [ %78, %76 ]
  %81 = load i64*, i64** %8, align 8
  store i64 %80, i64* %81, align 8
  %82 = load i64, i64* %6, align 8
  ret i64 %82
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local signext i8 @toupper(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
