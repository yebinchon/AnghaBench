; ModuleID = '/home/carl/AnghaBench/git/extr_column.c_layout.c'
source_filename = "/home/carl/AnghaBench/git/extr_column.c_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.column_data = type { i32*, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.column_data*, i32*)* @layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @layout(%struct.column_data* %0, i32* %1) #0 {
  %3 = alloca %struct.column_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.column_data* %0, %struct.column_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %36, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.column_data*, %struct.column_data** %3, align 8
  %10 = getelementptr inbounds %struct.column_data, %struct.column_data* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %7
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.column_data*, %struct.column_data** %3, align 8
  %19 = getelementptr inbounds %struct.column_data, %struct.column_data* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %17, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %15
  %27 = load %struct.column_data*, %struct.column_data** %3, align 8
  %28 = getelementptr inbounds %struct.column_data, %struct.column_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %4, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %26, %15
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %7

39:                                               ; preds = %7
  %40 = load %struct.column_data*, %struct.column_data** %3, align 8
  %41 = getelementptr inbounds %struct.column_data, %struct.column_data* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %43
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  %49 = load %struct.column_data*, %struct.column_data** %3, align 8
  %50 = getelementptr inbounds %struct.column_data, %struct.column_data* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.column_data*, %struct.column_data** %3, align 8
  %54 = getelementptr inbounds %struct.column_data, %struct.column_data* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @strlen(i32 %56)
  %58 = sub nsw i32 %52, %57
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %58, %60
  %62 = load %struct.column_data*, %struct.column_data** %3, align 8
  %63 = getelementptr inbounds %struct.column_data, %struct.column_data* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.column_data*, %struct.column_data** %3, align 8
  %65 = getelementptr inbounds %struct.column_data, %struct.column_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %39
  %69 = load %struct.column_data*, %struct.column_data** %3, align 8
  %70 = getelementptr inbounds %struct.column_data, %struct.column_data* %69, i32 0, i32 1
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %39
  %72 = load %struct.column_data*, %struct.column_data** %3, align 8
  %73 = getelementptr inbounds %struct.column_data, %struct.column_data* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.column_data*, %struct.column_data** %3, align 8
  %78 = getelementptr inbounds %struct.column_data, %struct.column_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @DIV_ROUND_UP(i32 %76, i32 %79)
  %81 = load %struct.column_data*, %struct.column_data** %3, align 8
  %82 = getelementptr inbounds %struct.column_data, %struct.column_data* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  ret void
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
