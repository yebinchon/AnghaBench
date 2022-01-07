; ModuleID = '/home/carl/AnghaBench/git/extr_combine-diff.c_consume_hunk.c'
source_filename = "/home/carl/AnghaBench/git/extr_combine-diff.c_consume_hunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.combine_diff_state = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_2__*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i64, i64, i8*, i64)* @consume_hunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @consume_hunk(i8* %0, i64 %1, i64 %2, i64 %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.combine_diff_state*, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.combine_diff_state*
  store %struct.combine_diff_state* %17, %struct.combine_diff_state** %15, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.combine_diff_state*, %struct.combine_diff_state** %15, align 8
  %20 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load %struct.combine_diff_state*, %struct.combine_diff_state** %15, align 8
  %23 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load %struct.combine_diff_state*, %struct.combine_diff_state** %15, align 8
  %26 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load %struct.combine_diff_state*, %struct.combine_diff_state** %15, align 8
  %29 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %28, i32 0, i32 3
  store i64 %27, i64* %29, align 8
  %30 = load %struct.combine_diff_state*, %struct.combine_diff_state** %15, align 8
  %31 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.combine_diff_state*, %struct.combine_diff_state** %15, align 8
  %34 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %33, i32 0, i32 4
  store i64 %32, i64* %34, align 8
  %35 = load %struct.combine_diff_state*, %struct.combine_diff_state** %15, align 8
  %36 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %7
  %40 = load %struct.combine_diff_state*, %struct.combine_diff_state** %15, align 8
  %41 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %40, i32 0, i32 6
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load %struct.combine_diff_state*, %struct.combine_diff_state** %15, align 8
  %44 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %45
  %47 = load %struct.combine_diff_state*, %struct.combine_diff_state** %15, align 8
  %48 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %47, i32 0, i32 8
  store %struct.TYPE_2__* %46, %struct.TYPE_2__** %48, align 8
  %49 = load %struct.combine_diff_state*, %struct.combine_diff_state** %15, align 8
  %50 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %39
  %54 = load %struct.combine_diff_state*, %struct.combine_diff_state** %15, align 8
  %55 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %54, i32 0, i32 2
  store i64 1, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %39
  br label %68

57:                                               ; preds = %7
  %58 = load %struct.combine_diff_state*, %struct.combine_diff_state** %15, align 8
  %59 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %58, i32 0, i32 6
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load %struct.combine_diff_state*, %struct.combine_diff_state** %15, align 8
  %62 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %64
  %66 = load %struct.combine_diff_state*, %struct.combine_diff_state** %15, align 8
  %67 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %66, i32 0, i32 8
  store %struct.TYPE_2__* %65, %struct.TYPE_2__** %67, align 8
  br label %68

68:                                               ; preds = %57, %56
  %69 = load %struct.combine_diff_state*, %struct.combine_diff_state** %15, align 8
  %70 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %69, i32 0, i32 6
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load %struct.combine_diff_state*, %struct.combine_diff_state** %15, align 8
  %73 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %74, 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = icmp ne i64* %78, null
  br i1 %79, label %94, label %80

80:                                               ; preds = %68
  %81 = load %struct.combine_diff_state*, %struct.combine_diff_state** %15, align 8
  %82 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 8
  %84 = call i64* @xcalloc(i32 %83, i32 8)
  %85 = load %struct.combine_diff_state*, %struct.combine_diff_state** %15, align 8
  %86 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %85, i32 0, i32 6
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load %struct.combine_diff_state*, %struct.combine_diff_state** %15, align 8
  %89 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %90, 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i64* %84, i64** %93, align 8
  br label %94

94:                                               ; preds = %80, %68
  %95 = load %struct.combine_diff_state*, %struct.combine_diff_state** %15, align 8
  %96 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.combine_diff_state*, %struct.combine_diff_state** %15, align 8
  %99 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %98, i32 0, i32 6
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load %struct.combine_diff_state*, %struct.combine_diff_state** %15, align 8
  %102 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %103, 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = load %struct.combine_diff_state*, %struct.combine_diff_state** %15, align 8
  %109 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i64, i64* %107, i64 %110
  store i64 %97, i64* %111, align 8
  ret void
}

declare dso_local i64* @xcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
