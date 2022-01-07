; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_show_setup_revisions_tweak.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_show_setup_revisions_tweak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.setup_revision_opt = type { i32 }

@DIFF_FORMAT_PATCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*, %struct.setup_revision_opt*)* @show_setup_revisions_tweak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_setup_revisions_tweak(%struct.rev_info* %0, %struct.setup_revision_opt* %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.setup_revision_opt*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store %struct.setup_revision_opt* %1, %struct.setup_revision_opt** %4, align 8
  %5 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %6 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %11 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %10, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %13 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %9
  %17 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %18 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %23 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %25 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %21, %16, %9
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %29 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load i64, i64* @DIFF_FORMAT_PATCH, align 8
  %35 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %36 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  br label %38

38:                                               ; preds = %33, %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
