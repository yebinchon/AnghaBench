; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_lookup_commit_graft.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_lookup_commit_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_graft = type { i32 }
%struct.repository = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.commit_graft** }
%struct.object_id = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.commit_graft* @lookup_commit_graft(%struct.repository* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.commit_graft*, align 8
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  %7 = load %struct.repository*, %struct.repository** %4, align 8
  %8 = call i32 @prepare_commit_graft(%struct.repository* %7)
  %9 = load %struct.repository*, %struct.repository** %4, align 8
  %10 = load %struct.object_id*, %struct.object_id** %5, align 8
  %11 = getelementptr inbounds %struct.object_id, %struct.object_id* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @commit_graft_pos(%struct.repository* %9, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.commit_graft* null, %struct.commit_graft** %3, align 8
  br label %27

17:                                               ; preds = %2
  %18 = load %struct.repository*, %struct.repository** %4, align 8
  %19 = getelementptr inbounds %struct.repository, %struct.repository* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.commit_graft**, %struct.commit_graft*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.commit_graft*, %struct.commit_graft** %22, i64 %24
  %26 = load %struct.commit_graft*, %struct.commit_graft** %25, align 8
  store %struct.commit_graft* %26, %struct.commit_graft** %3, align 8
  br label %27

27:                                               ; preds = %17, %16
  %28 = load %struct.commit_graft*, %struct.commit_graft** %3, align 8
  ret %struct.commit_graft* %28
}

declare dso_local i32 @prepare_commit_graft(%struct.repository*) #1

declare dso_local i32 @commit_graft_pos(%struct.repository*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
