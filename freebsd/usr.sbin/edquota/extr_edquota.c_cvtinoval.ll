; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/edquota/extr_edquota.c_cvtinoval.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/edquota/extr_edquota.c_cvtinoval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c"No space permitted between value and units for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"%ju%c: unknown units for %s, specify none, K, M, G, T, P, or E\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvtinoval(i32 %0, i8 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8 %1, i8* %5, align 1
  store i8* %2, i8** %6, align 8
  %7 = load i8, i8* %5, align 1
  %8 = sext i8 %7 to i32
  switch i32 %8, label %37 [
    i32 66, label %9
    i32 98, label %9
    i32 0, label %9
    i32 44, label %9
    i32 41, label %9
    i32 75, label %10
    i32 107, label %10
    i32 77, label %13
    i32 109, label %13
    i32 71, label %16
    i32 103, label %16
    i32 84, label %19
    i32 116, label %19
    i32 80, label %24
    i32 112, label %24
    i32 69, label %29
    i32 101, label %29
    i32 32, label %34
  ]

9:                                                ; preds = %3, %3, %3, %3, %3
  br label %45

10:                                               ; preds = %3, %3
  %11 = load i32, i32* %4, align 4
  %12 = mul nsw i32 %11, 1000
  store i32 %12, i32* %4, align 4
  br label %45

13:                                               ; preds = %3, %3
  %14 = load i32, i32* %4, align 4
  %15 = mul nsw i32 %14, 1000000
  store i32 %15, i32* %4, align 4
  br label %45

16:                                               ; preds = %3, %3
  %17 = load i32, i32* %4, align 4
  %18 = mul nsw i32 %17, 1000000000
  store i32 %18, i32* %4, align 4
  br label %45

19:                                               ; preds = %3, %3
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = mul nsw i64 %21, 1000000000000
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %4, align 4
  br label %45

24:                                               ; preds = %3, %3
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = mul nsw i64 %26, 1000000000000000
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %4, align 4
  br label %45

29:                                               ; preds = %3, %3
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = mul nsw i64 %31, 1000000000000000000
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %4, align 4
  br label %45

34:                                               ; preds = %3
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 (i32, i8*, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %45

37:                                               ; preds = %3
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = load i8, i8* %5, align 1
  %42 = sext i8 %41 to i32
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 (i32, i8*, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8* %40, i32 %42, i8* %43)
  br label %45

45:                                               ; preds = %37, %34, %29, %24, %19, %16, %13, %10, %9
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @errx(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
