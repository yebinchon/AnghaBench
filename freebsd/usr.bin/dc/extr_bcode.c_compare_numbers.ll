; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_compare_numbers.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_compare_numbers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.number = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.number*, %struct.number*)* @compare_numbers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_numbers(i32 %0, %struct.number* %1, %struct.number* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.number*, align 8
  %7 = alloca %struct.number*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.number* %1, %struct.number** %6, align 8
  store %struct.number* %2, %struct.number** %7, align 8
  %10 = load %struct.number*, %struct.number** %6, align 8
  %11 = getelementptr inbounds %struct.number, %struct.number* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.number*, %struct.number** %7, align 8
  %14 = getelementptr inbounds %struct.number, %struct.number* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @max(i64 %12, i64 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.number*, %struct.number** %6, align 8
  %19 = getelementptr inbounds %struct.number, %struct.number* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.number*, %struct.number** %6, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @normalize(%struct.number* %23, i64 %24)
  br label %37

26:                                               ; preds = %3
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.number*, %struct.number** %7, align 8
  %29 = getelementptr inbounds %struct.number, %struct.number* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.number*, %struct.number** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @normalize(%struct.number* %33, i64 %34)
  br label %36

36:                                               ; preds = %32, %26
  br label %37

37:                                               ; preds = %36, %22
  %38 = load %struct.number*, %struct.number** %6, align 8
  %39 = getelementptr inbounds %struct.number, %struct.number* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.number*, %struct.number** %7, align 8
  %42 = getelementptr inbounds %struct.number, %struct.number* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @BN_cmp(i32 %40, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.number*, %struct.number** %6, align 8
  %46 = call i32 @free_number(%struct.number* %45)
  %47 = load %struct.number*, %struct.number** %7, align 8
  %48 = call i32 @free_number(%struct.number* %47)
  %49 = load i32, i32* %5, align 4
  switch i32 %49, label %74 [
    i32 133, label %50
    i32 130, label %54
    i32 131, label %58
    i32 128, label %62
    i32 132, label %66
    i32 129, label %70
  ]

50:                                               ; preds = %37
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %75

54:                                               ; preds = %37
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %4, align 4
  br label %75

58:                                               ; preds = %37
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %4, align 4
  br label %75

62:                                               ; preds = %37
  %63 = load i32, i32* %9, align 4
  %64 = icmp sge i32 %63, 0
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %4, align 4
  br label %75

66:                                               ; preds = %37
  %67 = load i32, i32* %9, align 4
  %68 = icmp sgt i32 %67, 0
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %4, align 4
  br label %75

70:                                               ; preds = %37
  %71 = load i32, i32* %9, align 4
  %72 = icmp sle i32 %71, 0
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %4, align 4
  br label %75

74:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %70, %66, %62, %58, %54, %50
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @normalize(%struct.number*, i64) #1

declare dso_local i32 @BN_cmp(i32, i32) #1

declare dso_local i32 @free_number(%struct.number*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
