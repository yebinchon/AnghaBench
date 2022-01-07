; ModuleID = '/home/carl/AnghaBench/git/extr_column.c_shrink_columns.c'
source_filename = "/home/carl/AnghaBench/git/extr_column.c_shrink_columns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.column_data = type { i64*, i32, i32, %struct.TYPE_4__, i64*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.column_data*)* @shrink_columns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shrink_columns(%struct.column_data* %0) #0 {
  %2 = alloca %struct.column_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.column_data* %0, %struct.column_data** %2, align 8
  %7 = load %struct.column_data*, %struct.column_data** %2, align 8
  %8 = getelementptr inbounds %struct.column_data, %struct.column_data* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = load %struct.column_data*, %struct.column_data** %2, align 8
  %11 = getelementptr inbounds %struct.column_data, %struct.column_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @REALLOC_ARRAY(i64* %9, i32 %12)
  br label %14

14:                                               ; preds = %110, %1
  %15 = load %struct.column_data*, %struct.column_data** %2, align 8
  %16 = getelementptr inbounds %struct.column_data, %struct.column_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %111

19:                                               ; preds = %14
  %20 = load %struct.column_data*, %struct.column_data** %2, align 8
  %21 = getelementptr inbounds %struct.column_data, %struct.column_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.column_data*, %struct.column_data** %2, align 8
  %24 = getelementptr inbounds %struct.column_data, %struct.column_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  %26 = load %struct.column_data*, %struct.column_data** %2, align 8
  %27 = getelementptr inbounds %struct.column_data, %struct.column_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.column_data*, %struct.column_data** %2, align 8
  %31 = getelementptr inbounds %struct.column_data, %struct.column_data* %30, i32 0, i32 5
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.column_data*, %struct.column_data** %2, align 8
  %36 = getelementptr inbounds %struct.column_data, %struct.column_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @DIV_ROUND_UP(i32 %34, i32 %37)
  %39 = load %struct.column_data*, %struct.column_data** %2, align 8
  %40 = getelementptr inbounds %struct.column_data, %struct.column_data* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.column_data*, %struct.column_data** %2, align 8
  %42 = getelementptr inbounds %struct.column_data, %struct.column_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %19
  %47 = load %struct.column_data*, %struct.column_data** %2, align 8
  %48 = getelementptr inbounds %struct.column_data, %struct.column_data* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load %struct.column_data*, %struct.column_data** %2, align 8
  %51 = getelementptr inbounds %struct.column_data, %struct.column_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @REALLOC_ARRAY(i64* %49, i32 %52)
  br label %54

54:                                               ; preds = %46, %19
  %55 = load %struct.column_data*, %struct.column_data** %2, align 8
  %56 = call i32 @compute_column_width(%struct.column_data* %55)
  %57 = load %struct.column_data*, %struct.column_data** %2, align 8
  %58 = getelementptr inbounds %struct.column_data, %struct.column_data* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @strlen(i32 %60)
  store i32 %61, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %93, %54
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.column_data*, %struct.column_data** %2, align 8
  %65 = getelementptr inbounds %struct.column_data, %struct.column_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %62
  %69 = load %struct.column_data*, %struct.column_data** %2, align 8
  %70 = getelementptr inbounds %struct.column_data, %struct.column_data* %69, i32 0, i32 4
  %71 = load i64*, i64** %70, align 8
  %72 = load %struct.column_data*, %struct.column_data** %2, align 8
  %73 = getelementptr inbounds %struct.column_data, %struct.column_data* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i64, i64* %71, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %4, align 4
  %85 = load %struct.column_data*, %struct.column_data** %2, align 8
  %86 = getelementptr inbounds %struct.column_data, %struct.column_data* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %68
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %62

96:                                               ; preds = %62
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.column_data*, %struct.column_data** %2, align 8
  %99 = getelementptr inbounds %struct.column_data, %struct.column_data* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp sgt i32 %97, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %96
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.column_data*, %struct.column_data** %2, align 8
  %106 = getelementptr inbounds %struct.column_data, %struct.column_data* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.column_data*, %struct.column_data** %2, align 8
  %109 = getelementptr inbounds %struct.column_data, %struct.column_data* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 8
  br label %111

110:                                              ; preds = %96
  br label %14

111:                                              ; preds = %103, %14
  %112 = load %struct.column_data*, %struct.column_data** %2, align 8
  %113 = call i32 @compute_column_width(%struct.column_data* %112)
  ret void
}

declare dso_local i32 @REALLOC_ARRAY(i64*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @compute_column_width(%struct.column_data*) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
