; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_release_commit_memory.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_release_commit_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_object_pool = type { i32 }
%struct.commit = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @release_commit_memory(%struct.parsed_object_pool* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.parsed_object_pool*, align 8
  %4 = alloca %struct.commit*, align 8
  store %struct.parsed_object_pool* %0, %struct.parsed_object_pool** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  %5 = load %struct.commit*, %struct.commit** %4, align 8
  %6 = call i32 @set_commit_tree(%struct.commit* %5, i32* null)
  %7 = load %struct.parsed_object_pool*, %struct.parsed_object_pool** %3, align 8
  %8 = load %struct.commit*, %struct.commit** %4, align 8
  %9 = call i32 @free_commit_buffer(%struct.parsed_object_pool* %7, %struct.commit* %8)
  %10 = load %struct.commit*, %struct.commit** %4, align 8
  %11 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.commit*, %struct.commit** %4, align 8
  %13 = getelementptr inbounds %struct.commit, %struct.commit* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @free_commit_list(i32 %14)
  %16 = load %struct.commit*, %struct.commit** %4, align 8
  %17 = getelementptr inbounds %struct.commit, %struct.commit* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  ret void
}

declare dso_local i32 @set_commit_tree(%struct.commit*, i32*) #1

declare dso_local i32 @free_commit_buffer(%struct.parsed_object_pool*, %struct.commit*) #1

declare dso_local i32 @free_commit_list(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
