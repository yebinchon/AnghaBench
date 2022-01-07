; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_show-branch.c_interesting.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_show-branch.c_interesting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.commit_list = type { %struct.commit_list*, %struct.commit* }

@UNINTERESTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit* (%struct.commit_list*)* @interesting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit* @interesting(%struct.commit_list* %0) #0 {
  %2 = alloca %struct.commit*, align 8
  %3 = alloca %struct.commit_list*, align 8
  %4 = alloca %struct.commit*, align 8
  store %struct.commit_list* %0, %struct.commit_list** %3, align 8
  br label %5

5:                                                ; preds = %22, %1
  %6 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %7 = icmp ne %struct.commit_list* %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %5
  %9 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %10 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %9, i32 0, i32 1
  %11 = load %struct.commit*, %struct.commit** %10, align 8
  store %struct.commit* %11, %struct.commit** %4, align 8
  %12 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %13 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %12, i32 0, i32 0
  %14 = load %struct.commit_list*, %struct.commit_list** %13, align 8
  store %struct.commit_list* %14, %struct.commit_list** %3, align 8
  %15 = load %struct.commit*, %struct.commit** %4, align 8
  %16 = getelementptr inbounds %struct.commit, %struct.commit* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @UNINTERESTING, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %8
  br label %5

23:                                               ; preds = %8
  %24 = load %struct.commit*, %struct.commit** %4, align 8
  store %struct.commit* %24, %struct.commit** %2, align 8
  br label %26

25:                                               ; preds = %5
  store %struct.commit* null, %struct.commit** %2, align 8
  br label %26

26:                                               ; preds = %25, %23
  %27 = load %struct.commit*, %struct.commit** %2, align 8
  ret %struct.commit* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
