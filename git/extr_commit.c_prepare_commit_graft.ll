; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_prepare_commit_graft.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_prepare_commit_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.repository = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@startup_info = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prepare_commit_graft(%struct.repository* %0) #0 {
  %2 = alloca %struct.repository*, align 8
  %3 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %2, align 8
  %4 = load %struct.repository*, %struct.repository** %2, align 8
  %5 = getelementptr inbounds %struct.repository, %struct.repository* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %29

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @startup_info, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %29

17:                                               ; preds = %11
  %18 = load %struct.repository*, %struct.repository** %2, align 8
  %19 = call i8* @get_graft_file(%struct.repository* %18)
  store i8* %19, i8** %3, align 8
  %20 = load %struct.repository*, %struct.repository** %2, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @read_graft_file(%struct.repository* %20, i8* %21)
  %23 = load %struct.repository*, %struct.repository** %2, align 8
  %24 = call i32 @is_repository_shallow(%struct.repository* %23)
  %25 = load %struct.repository*, %struct.repository** %2, align 8
  %26 = getelementptr inbounds %struct.repository, %struct.repository* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %17, %16, %10
  ret void
}

declare dso_local i8* @get_graft_file(%struct.repository*) #1

declare dso_local i32 @read_graft_file(%struct.repository*, i8*) #1

declare dso_local i32 @is_repository_shallow(%struct.repository*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
