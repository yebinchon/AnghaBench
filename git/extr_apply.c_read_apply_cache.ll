; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_read_apply_cache.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_read_apply_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*)* @read_apply_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_apply_cache(%struct.apply_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.apply_state*, align 8
  store %struct.apply_state* %0, %struct.apply_state** %3, align 8
  %4 = load %struct.apply_state*, %struct.apply_state** %3, align 8
  %5 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.apply_state*, %struct.apply_state** %3, align 8
  %10 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.apply_state*, %struct.apply_state** %3, align 8
  %15 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 (...) @get_git_dir()
  %18 = call i32 @read_index_from(i32 %13, i64 %16, i32 %17)
  store i32 %18, i32* %2, align 4
  br label %24

19:                                               ; preds = %1
  %20 = load %struct.apply_state*, %struct.apply_state** %3, align 8
  %21 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 @repo_read_index(%struct.TYPE_2__* %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %19, %8
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @read_index_from(i32, i64, i32) #1

declare dso_local i32 @get_git_dir(...) #1

declare dso_local i32 @repo_read_index(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
