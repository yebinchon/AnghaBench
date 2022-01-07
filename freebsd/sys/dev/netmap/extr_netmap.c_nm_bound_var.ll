; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_nm_bound_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_nm_bound_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"Bump\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Clamp\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%s %s to %d (was %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nm_bound_var(i64* %0, i64 %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i64*, i64** %6, align 8
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %11, align 8
  store i8* null, i8** %12, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %18, %5
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i64, i64* %9, align 8
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = load i64*, i64** %6, align 8
  store i64 %31, i64* %32, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %41

33:                                               ; preds = %26
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i64, i64* %9, align 8
  %39 = load i64*, i64** %6, align 8
  store i64 %38, i64* %39, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %40

40:                                               ; preds = %37, %33
  br label %41

41:                                               ; preds = %40, %30
  %42 = load i8*, i8** %12, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i8*, i8** %10, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i8*, i8** %12, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i64*, i64** %6, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @nm_prinf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %48, i8* %49, i64 %51, i64 %52)
  br label %54

54:                                               ; preds = %47, %44, %41
  %55 = load i64*, i64** %6, align 8
  %56 = load i64, i64* %55, align 8
  ret i64 %56
}

declare dso_local i32 @nm_prinf(i8*, i8*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
