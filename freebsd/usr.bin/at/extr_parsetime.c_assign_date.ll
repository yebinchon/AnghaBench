; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/at/extr_parsetime.c_assign_date.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/at/extr_parsetime.c_assign_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tm*, i64, i64, i64)* @assign_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assign_date(%struct.tm* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.tm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tm*, align 8
  %10 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = icmp ne i64 %11, -1
  br i1 %12, label %13, label %57

13:                                               ; preds = %4
  %14 = load i64, i64* %8, align 8
  %15 = icmp sge i64 %14, 1900
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i64, i64* %8, align 8
  %18 = sub nsw i64 %17, 1900
  store i64 %18, i64* %8, align 8
  br label %56

19:                                               ; preds = %13
  %20 = load i64, i64* %8, align 8
  %21 = icmp slt i64 %20, 100
  br i1 %21, label %22, label %55

22:                                               ; preds = %19
  %23 = call i32 @time(i32* %10)
  %24 = call %struct.tm* @localtime(i32* %10)
  store %struct.tm* %24, %struct.tm** %9, align 8
  %25 = load %struct.tm*, %struct.tm** %9, align 8
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sdiv i32 %27, 100
  %29 = mul nsw i32 %28, 100
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %8, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.tm*, %struct.tm** %9, align 8
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = icmp eq i64 %33, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %22
  %41 = load i64, i64* %8, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %8, align 8
  br label %54

43:                                               ; preds = %22
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.tm*, %struct.tm** %9, align 8
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %44, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i64, i64* %8, align 8
  %52 = add nsw i64 %51, 100
  store i64 %52, i64* %8, align 8
  br label %53

53:                                               ; preds = %50, %43
  br label %54

54:                                               ; preds = %53, %40
  br label %55

55:                                               ; preds = %54, %19
  br label %56

56:                                               ; preds = %55, %16
  br label %57

57:                                               ; preds = %56, %4
  %58 = load i64, i64* %8, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %57
  %61 = load %struct.tm*, %struct.tm** %5, align 8
  %62 = getelementptr inbounds %struct.tm, %struct.tm* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %78, label %66

66:                                               ; preds = %60
  %67 = load %struct.tm*, %struct.tm** %5, align 8
  %68 = getelementptr inbounds %struct.tm, %struct.tm* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load %struct.tm*, %struct.tm** %5, align 8
  %74 = getelementptr inbounds %struct.tm, %struct.tm* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72, %60
  %79 = load %struct.tm*, %struct.tm** %5, align 8
  %80 = getelementptr inbounds %struct.tm, %struct.tm* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %8, align 8
  br label %84

84:                                               ; preds = %78, %72, %66, %57
  %85 = load i64, i64* %6, align 8
  %86 = load %struct.tm*, %struct.tm** %5, align 8
  %87 = getelementptr inbounds %struct.tm, %struct.tm* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.tm*, %struct.tm** %5, align 8
  %90 = getelementptr inbounds %struct.tm, %struct.tm* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load i64, i64* %8, align 8
  %92 = icmp sge i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %84
  %94 = load i64, i64* %8, align 8
  %95 = trunc i64 %94 to i32
  %96 = load %struct.tm*, %struct.tm** %5, align 8
  %97 = getelementptr inbounds %struct.tm, %struct.tm* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %93, %84
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
