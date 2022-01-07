; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_log_setup_revisions_tweak.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_log_setup_revisions_tweak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i64, i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.setup_revision_opt = type { i32 }

@DIFF_FORMAT_PATCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*, %struct.setup_revision_opt*)* @log_setup_revisions_tweak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_setup_revisions_tweak(%struct.rev_info* %0, %struct.setup_revision_opt* %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.setup_revision_opt*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store %struct.setup_revision_opt* %1, %struct.setup_revision_opt** %4, align 8
  %5 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %6 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %13 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %19 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %22

22:                                               ; preds = %17, %11, %2
  %23 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %24 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %22
  %29 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %30 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i64, i64* @DIFF_FORMAT_PATCH, align 8
  %35 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %36 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  br label %38

38:                                               ; preds = %33, %28, %22
  %39 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %40 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %45 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %43, %38
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
