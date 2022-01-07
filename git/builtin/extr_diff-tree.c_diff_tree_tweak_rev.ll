; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_diff-tree.c_diff_tree_tweak_rev.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_diff-tree.c_diff_tree_tweak_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.setup_revision_opt = type { i32 }

@DIFF_FORMAT_PATCH = common dso_local global i64 0, align 8
@DIFF_FORMAT_RAW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*, %struct.setup_revision_opt*)* @diff_tree_tweak_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diff_tree_tweak_rev(%struct.rev_info* %0, %struct.setup_revision_opt* %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.setup_revision_opt*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store %struct.setup_revision_opt* %1, %struct.setup_revision_opt** %4, align 8
  %5 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %6 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %2
  %11 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %12 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i64, i64* @DIFF_FORMAT_PATCH, align 8
  %17 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %18 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  br label %25

20:                                               ; preds = %10
  %21 = load i64, i64* @DIFF_FORMAT_RAW, align 8
  %22 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %23 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i64 %21, i64* %24, align 8
  br label %25

25:                                               ; preds = %20, %15
  br label %26

26:                                               ; preds = %25, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
