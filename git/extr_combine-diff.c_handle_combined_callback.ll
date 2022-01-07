; ModuleID = '/home/carl/AnghaBench/git/extr_combine-diff.c_handle_combined_callback.c'
source_filename = "/home/carl/AnghaBench/git/extr_combine-diff.c_handle_combined_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_options = type { i32, i32 (%struct.diff_queue_struct*, %struct.diff_options*, i32)* }
%struct.diff_queue_struct = type { i32, i32, i32* }
%struct.combine_diff_path = type { %struct.combine_diff_path* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_options*, %struct.combine_diff_path*, i32, i32)* @handle_combined_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_combined_callback(%struct.diff_options* %0, %struct.combine_diff_path* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.diff_options*, align 8
  %6 = alloca %struct.combine_diff_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.combine_diff_path*, align 8
  %10 = alloca %struct.diff_queue_struct, align 8
  %11 = alloca i32, align 4
  store %struct.diff_options* %0, %struct.diff_options** %5, align 8
  store %struct.combine_diff_path* %1, %struct.combine_diff_path** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32* @xcalloc(i32 %12, i32 8)
  %14 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %10, i32 0, i32 2
  store i32* %13, i32** %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %10, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %10, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  store i32 0, i32* %11, align 4
  %19 = load %struct.combine_diff_path*, %struct.combine_diff_path** %6, align 8
  store %struct.combine_diff_path* %19, %struct.combine_diff_path** %9, align 8
  br label %20

20:                                               ; preds = %33, %4
  %21 = load %struct.combine_diff_path*, %struct.combine_diff_path** %9, align 8
  %22 = icmp ne %struct.combine_diff_path* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load %struct.combine_diff_path*, %struct.combine_diff_path** %9, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @combined_pair(%struct.combine_diff_path* %24, i32 %25)
  %27 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %10, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %11, align 4
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  store i32 %26, i32* %32, align 4
  br label %33

33:                                               ; preds = %23
  %34 = load %struct.combine_diff_path*, %struct.combine_diff_path** %9, align 8
  %35 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %34, i32 0, i32 0
  %36 = load %struct.combine_diff_path*, %struct.combine_diff_path** %35, align 8
  store %struct.combine_diff_path* %36, %struct.combine_diff_path** %9, align 8
  br label %20

37:                                               ; preds = %20
  %38 = load %struct.diff_options*, %struct.diff_options** %5, align 8
  %39 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %38, i32 0, i32 1
  %40 = load i32 (%struct.diff_queue_struct*, %struct.diff_options*, i32)*, i32 (%struct.diff_queue_struct*, %struct.diff_options*, i32)** %39, align 8
  %41 = load %struct.diff_options*, %struct.diff_options** %5, align 8
  %42 = load %struct.diff_options*, %struct.diff_options** %5, align 8
  %43 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 %40(%struct.diff_queue_struct* %10, %struct.diff_options* %41, i32 %44)
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %58, %37
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %10, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @free_combined_pair(i32 %56)
  br label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %46

61:                                               ; preds = %46
  %62 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %10, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @free(i32* %63)
  ret void
}

declare dso_local i32* @xcalloc(i32, i32) #1

declare dso_local i32 @combined_pair(%struct.combine_diff_path*, i32) #1

declare dso_local i32 @free_combined_pair(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
