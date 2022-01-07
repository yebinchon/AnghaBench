; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_verify_index_match.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_verify_index_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cache_entry = type { i32 }
%struct.stat = type { i32 }

@CE_MATCH_IGNORE_VALID = common dso_local global i32 0, align 4
@CE_MATCH_IGNORE_SKIP_WORKTREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, %struct.cache_entry*, %struct.stat*)* @verify_index_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_index_match(%struct.apply_state* %0, %struct.cache_entry* %1, %struct.stat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.apply_state*, align 8
  %6 = alloca %struct.cache_entry*, align 8
  %7 = alloca %struct.stat*, align 8
  store %struct.apply_state* %0, %struct.apply_state** %5, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %6, align 8
  store %struct.stat* %2, %struct.stat** %7, align 8
  %8 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %9 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @S_ISGITLINK(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load %struct.stat*, %struct.stat** %7, align 8
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @S_ISDIR(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %33

20:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %33

21:                                               ; preds = %3
  %22 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %23 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %28 = load %struct.stat*, %struct.stat** %7, align 8
  %29 = load i32, i32* @CE_MATCH_IGNORE_VALID, align 4
  %30 = load i32, i32* @CE_MATCH_IGNORE_SKIP_WORKTREE, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @ie_match_stat(i32 %26, %struct.cache_entry* %27, %struct.stat* %28, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %21, %20, %19
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @ie_match_stat(i32, %struct.cache_entry*, %struct.stat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
