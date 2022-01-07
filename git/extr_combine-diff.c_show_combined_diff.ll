; ModuleID = '/home/carl/AnghaBench/git/extr_combine-diff.c_show_combined_diff.c'
source_filename = "/home/carl/AnghaBench/git/extr_combine-diff.c_show_combined_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.combine_diff_path = type { i32 }
%struct.rev_info = type { %struct.diff_options }
%struct.diff_options = type { i32 }

@DIFF_FORMAT_RAW = common dso_local global i32 0, align 4
@DIFF_FORMAT_NAME = common dso_local global i32 0, align 4
@DIFF_FORMAT_NAME_STATUS = common dso_local global i32 0, align 4
@DIFF_FORMAT_PATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_combined_diff(%struct.combine_diff_path* %0, i32 %1, i32 %2, %struct.rev_info* %3) #0 {
  %5 = alloca %struct.combine_diff_path*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rev_info*, align 8
  %9 = alloca %struct.diff_options*, align 8
  store %struct.combine_diff_path* %0, %struct.combine_diff_path** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.rev_info* %3, %struct.rev_info** %8, align 8
  %10 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %11 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %10, i32 0, i32 0
  store %struct.diff_options* %11, %struct.diff_options** %9, align 8
  %12 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %13 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DIFF_FORMAT_RAW, align 4
  %16 = load i32, i32* @DIFF_FORMAT_NAME, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @DIFF_FORMAT_NAME_STATUS, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %14, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.combine_diff_path*, %struct.combine_diff_path** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %26 = call i32 @show_raw_diff(%struct.combine_diff_path* %23, i32 %24, %struct.rev_info* %25)
  br label %41

27:                                               ; preds = %4
  %28 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %29 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DIFF_FORMAT_PATCH, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.combine_diff_path*, %struct.combine_diff_path** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %39 = call i32 @show_patch_diff(%struct.combine_diff_path* %35, i32 %36, i32 %37, i32 1, %struct.rev_info* %38)
  br label %40

40:                                               ; preds = %34, %27
  br label %41

41:                                               ; preds = %40, %22
  ret void
}

declare dso_local i32 @show_raw_diff(%struct.combine_diff_path*, i32, %struct.rev_info*) #1

declare dso_local i32 @show_patch_diff(%struct.combine_diff_path*, i32, i32, i32, %struct.rev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
