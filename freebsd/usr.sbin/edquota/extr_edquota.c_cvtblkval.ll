; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/edquota/extr_edquota.c_cvtblkval.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/edquota/extr_edquota.c_cvtblkval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c"No space permitted between value and units for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"%ju%c: unknown units for %s, specify none, K, M, G, T, P, or E\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvtblkval(i32 %0, i8 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8 %1, i8* %5, align 1
  store i8* %2, i8** %6, align 8
  %7 = load i8, i8* %5, align 1
  %8 = sext i8 %7 to i32
  switch i32 %8, label %39 [
    i32 66, label %9
    i32 98, label %9
    i32 0, label %12
    i32 44, label %12
    i32 41, label %12
    i32 75, label %12
    i32 107, label %12
    i32 77, label %16
    i32 109, label %16
    i32 71, label %20
    i32 103, label %20
    i32 84, label %24
    i32 116, label %24
    i32 80, label %28
    i32 112, label %28
    i32 69, label %32
    i32 101, label %32
    i32 32, label %36
  ]

9:                                                ; preds = %3, %3
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @btodb(i32 %10)
  store i32 %11, i32* %4, align 4
  br label %47

12:                                               ; preds = %3, %3, %3, %3, %3
  %13 = call i32 @btodb(i32 1024)
  %14 = load i32, i32* %4, align 4
  %15 = mul nsw i32 %14, %13
  store i32 %15, i32* %4, align 4
  br label %47

16:                                               ; preds = %3, %3
  %17 = call i32 @btodb(i32 1048576)
  %18 = load i32, i32* %4, align 4
  %19 = mul nsw i32 %18, %17
  store i32 %19, i32* %4, align 4
  br label %47

20:                                               ; preds = %3, %3
  %21 = call i32 @btodb(i32 1073741824)
  %22 = load i32, i32* %4, align 4
  %23 = mul nsw i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %47

24:                                               ; preds = %3, %3
  %25 = call i32 @btodb(i32 0)
  %26 = load i32, i32* %4, align 4
  %27 = mul nsw i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %47

28:                                               ; preds = %3, %3
  %29 = call i32 @btodb(i32 0)
  %30 = load i32, i32* %4, align 4
  %31 = mul nsw i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %47

32:                                               ; preds = %3, %3
  %33 = call i32 @btodb(i32 0)
  %34 = load i32, i32* %4, align 4
  %35 = mul nsw i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %47

36:                                               ; preds = %3
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 (i32, i8*, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %37)
  br label %47

39:                                               ; preds = %3
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = load i8, i8* %5, align 1
  %44 = sext i8 %43 to i32
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 (i32, i8*, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8* %42, i32 %44, i8* %45)
  br label %47

47:                                               ; preds = %39, %36, %32, %28, %24, %20, %16, %12, %9
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @btodb(i32) #1

declare dso_local i32 @errx(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
