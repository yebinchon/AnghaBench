; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_parse_range.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_parse_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i8*, i64*, i64*)* @parse_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_range(i8* %0, i32 %1, i32 %2, i8* %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %6
  store i32 -1, i32* %7, align 4
  br label %93

23:                                               ; preds = %18
  %24 = load i32, i32* %10, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %8, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = load i64*, i64** %12, align 8
  %33 = call i32 @parse_num(i8* %31, i64* %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %23
  store i32 -1, i32* %7, align 4
  br label %93

37:                                               ; preds = %23
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %8, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %9, align 4
  %47 = sub nsw i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load i64*, i64** %13, align 8
  store i64 1, i64* %48, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 44
  br i1 %52, label %53, label %75

53:                                               ; preds = %37
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i64*, i64** %13, align 8
  %57 = call i32 @parse_num(i8* %55, i64* %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  store i32 -1, i32* %7, align 4
  br label %93

61:                                               ; preds = %53
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i8*, i8** %8, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %70, i8** %8, align 8
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* %9, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %61, %37
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @strlen(i8* %76)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 -1, i32* %7, align 4
  br label %93

82:                                               ; preds = %75
  %83 = load i8*, i8** %8, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = load i32, i32* %15, align 4
  %86 = call i64 @memcmp(i8* %83, i8* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 -1, i32* %7, align 4
  br label %93

89:                                               ; preds = %82
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %15, align 4
  %92 = add nsw i32 %90, %91
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %89, %88, %81, %60, %36, %22
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @parse_num(i8*, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
