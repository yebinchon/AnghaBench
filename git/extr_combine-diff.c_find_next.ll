; ModuleID = '/home/carl/AnghaBench/git/extr_combine-diff.c_find_next.c'
source_filename = "/home/carl/AnghaBench/git/extr_combine-diff.c_find_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sline = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sline*, i64, i64, i64, i32)* @find_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_next(%struct.sline* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.sline*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.sline* %0, %struct.sline** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  br label %12

12:                                               ; preds = %46, %5
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %10, align 8
  %15 = icmp ule i64 %13, %14
  br i1 %15, label %16, label %47

16:                                               ; preds = %12
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load %struct.sline*, %struct.sline** %7, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds %struct.sline, %struct.sline* %20, i64 %21
  %23 = getelementptr inbounds %struct.sline, %struct.sline* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %41, label %43

32:                                               ; preds = %16
  %33 = load %struct.sline*, %struct.sline** %7, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds %struct.sline, %struct.sline* %33, i64 %34
  %36 = getelementptr inbounds %struct.sline, %struct.sline* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32, %19
  %42 = load i64, i64* %9, align 8
  store i64 %42, i64* %6, align 8
  br label %49

43:                                               ; preds = %32, %19
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %9, align 8
  br label %46

46:                                               ; preds = %43
  br label %12

47:                                               ; preds = %12
  %48 = load i64, i64* %9, align 8
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %47, %41
  %50 = load i64, i64* %6, align 8
  ret i64 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
