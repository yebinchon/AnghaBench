; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_getnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_getnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getnum(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32 -1, i32* %5, align 4
  %6 = load i8**, i8*** %4, align 8
  store i8* null, i8** %6, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = call i32 @strtol(i8* %7, i8** %8, i32 0)
  store i32 %9, i32* %5, align 4
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %47

13:                                               ; preds = %2
  %14 = load i8**, i8*** %4, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %46 [
    i32 98, label %18
    i32 66, label %18
    i32 107, label %25
    i32 75, label %25
    i32 109, label %32
    i32 77, label %32
    i32 119, label %39
    i32 87, label %39
  ]

18:                                               ; preds = %13, %13
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 %19, 512
  store i32 %20, i32* %5, align 4
  %21 = load i8**, i8*** %4, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8**, i8*** %4, align 8
  store i8* %23, i8** %24, align 8
  br label %46

25:                                               ; preds = %13, %13
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 %26, 1024
  store i32 %27, i32* %5, align 4
  %28 = load i8**, i8*** %4, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8**, i8*** %4, align 8
  store i8* %30, i8** %31, align 8
  br label %46

32:                                               ; preds = %13, %13
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 %33, 1048576
  store i32 %34, i32* %5, align 4
  %35 = load i8**, i8*** %4, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8**, i8*** %4, align 8
  store i8* %37, i8** %38, align 8
  br label %46

39:                                               ; preds = %13, %13
  %40 = load i32, i32* %5, align 4
  %41 = mul nsw i32 %40, 4
  store i32 %41, i32* %5, align 4
  %42 = load i8**, i8*** %4, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8**, i8*** %4, align 8
  store i8* %44, i8** %45, align 8
  br label %46

46:                                               ; preds = %13, %39, %32, %25, %18
  br label %47

47:                                               ; preds = %46, %2
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
