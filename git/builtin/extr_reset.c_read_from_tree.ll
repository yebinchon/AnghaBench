; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_reset.c_read_from_tree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_reset.c_read_from_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pathspec = type { i32 }
%struct.object_id = type { i32 }
%struct.diff_options = type { i32*, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@DIFF_FORMAT_CALLBACK = common dso_local global i32 0, align 4
@update_index_from_diff = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pathspec*, %struct.object_id*, i32)* @read_from_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_from_tree(%struct.pathspec* %0, %struct.object_id* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pathspec*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.diff_options, align 8
  store %struct.pathspec* %0, %struct.pathspec** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call i32 @memset(%struct.diff_options* %8, i32 0, i32 32)
  %10 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 1
  %11 = load %struct.pathspec*, %struct.pathspec** %5, align 8
  %12 = call i32 @copy_pathspec(i32* %10, %struct.pathspec* %11)
  %13 = load i32, i32* @DIFF_FORMAT_CALLBACK, align 4
  %14 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 5
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* @update_index_from_diff, align 4
  %16 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 4
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 0
  store i32* %7, i32** %17, align 8
  %18 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load i32, i32* @the_repository, align 4
  %21 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load %struct.object_id*, %struct.object_id** %6, align 8
  %23 = call i64 @do_diff_cache(%struct.object_id* %22, %struct.diff_options* %8)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %31

26:                                               ; preds = %3
  %27 = call i32 @diffcore_std(%struct.diff_options* %8)
  %28 = call i32 @diff_flush(%struct.diff_options* %8)
  %29 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 1
  %30 = call i32 @clear_pathspec(i32* %29)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %25
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @memset(%struct.diff_options*, i32, i32) #1

declare dso_local i32 @copy_pathspec(i32*, %struct.pathspec*) #1

declare dso_local i64 @do_diff_cache(%struct.object_id*, %struct.diff_options*) #1

declare dso_local i32 @diffcore_std(%struct.diff_options*) #1

declare dso_local i32 @diff_flush(%struct.diff_options*) #1

declare dso_local i32 @clear_pathspec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
