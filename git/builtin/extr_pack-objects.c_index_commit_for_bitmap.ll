; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_index_commit_for_bitmap.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_index_commit_for_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }

@indexed_commits_nr = common dso_local global i32 0, align 4
@indexed_commits_alloc = common dso_local global i32 0, align 4
@indexed_commits = common dso_local global %struct.commit** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit*)* @index_commit_for_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @index_commit_for_bitmap(%struct.commit* %0) #0 {
  %2 = alloca %struct.commit*, align 8
  store %struct.commit* %0, %struct.commit** %2, align 8
  %3 = load i32, i32* @indexed_commits_nr, align 4
  %4 = load i32, i32* @indexed_commits_alloc, align 4
  %5 = icmp sge i32 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i32, i32* @indexed_commits_alloc, align 4
  %8 = add nsw i32 %7, 32
  %9 = mul nsw i32 %8, 2
  store i32 %9, i32* @indexed_commits_alloc, align 4
  %10 = load %struct.commit**, %struct.commit*** @indexed_commits, align 8
  %11 = load i32, i32* @indexed_commits_alloc, align 4
  %12 = call i32 @REALLOC_ARRAY(%struct.commit** %10, i32 %11)
  br label %13

13:                                               ; preds = %6, %1
  %14 = load %struct.commit*, %struct.commit** %2, align 8
  %15 = load %struct.commit**, %struct.commit*** @indexed_commits, align 8
  %16 = load i32, i32* @indexed_commits_nr, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @indexed_commits_nr, align 4
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds %struct.commit*, %struct.commit** %15, i64 %18
  store %struct.commit* %14, %struct.commit** %19, align 8
  ret void
}

declare dso_local i32 @REALLOC_ARRAY(%struct.commit**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
