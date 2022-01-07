; ModuleID = '/home/carl/AnghaBench/git/extr_column.c_compute_column_width.c'
source_filename = "/home/carl/AnghaBench/git/extr_column.c_compute_column_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.column_data = type { i32, i64*, i32, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.column_data*)* @compute_column_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_column_width(%struct.column_data* %0) #0 {
  %2 = alloca %struct.column_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.column_data* %0, %struct.column_data** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %77, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.column_data*, %struct.column_data** %2, align 8
  %9 = getelementptr inbounds %struct.column_data, %struct.column_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %80

12:                                               ; preds = %6
  %13 = load %struct.column_data*, %struct.column_data** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i8* @XY2LINEAR(%struct.column_data* %13, i32 %14, i32 0)
  %16 = ptrtoint i8* %15 to i64
  %17 = load %struct.column_data*, %struct.column_data** %2, align 8
  %18 = getelementptr inbounds %struct.column_data, %struct.column_data* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  store i64 %16, i64* %22, align 8
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %73, %12
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.column_data*, %struct.column_data** %2, align 8
  %26 = getelementptr inbounds %struct.column_data, %struct.column_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %76

29:                                               ; preds = %23
  %30 = load %struct.column_data*, %struct.column_data** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i8* @XY2LINEAR(%struct.column_data* %30, i32 %31, i32 %32)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.column_data*, %struct.column_data** %2, align 8
  %37 = getelementptr inbounds %struct.column_data, %struct.column_data* %36, i32 0, i32 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %35, %40
  br i1 %41, label %42, label %72

42:                                               ; preds = %29
  %43 = load %struct.column_data*, %struct.column_data** %2, align 8
  %44 = getelementptr inbounds %struct.column_data, %struct.column_data* %43, i32 0, i32 3
  %45 = load i64*, i64** %44, align 8
  %46 = load %struct.column_data*, %struct.column_data** %2, align 8
  %47 = getelementptr inbounds %struct.column_data, %struct.column_data* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i64, i64* %45, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.column_data*, %struct.column_data** %2, align 8
  %56 = getelementptr inbounds %struct.column_data, %struct.column_data* %55, i32 0, i32 3
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %54, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %42
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = load %struct.column_data*, %struct.column_data** %2, align 8
  %67 = getelementptr inbounds %struct.column_data, %struct.column_data* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  store i64 %65, i64* %71, align 8
  br label %72

72:                                               ; preds = %63, %42, %29
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %23

76:                                               ; preds = %23
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %6

80:                                               ; preds = %6
  ret void
}

declare dso_local i8* @XY2LINEAR(%struct.column_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
