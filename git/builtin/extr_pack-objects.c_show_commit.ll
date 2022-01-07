; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_show_commit.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_show_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@OBJ_COMMIT = common dso_local global i32 0, align 4
@OBJECT_ADDED = common dso_local global i32 0, align 4
@write_bitmap_index = common dso_local global i64 0, align 8
@use_delta_islands = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit*, i8*)* @show_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_commit(%struct.commit* %0, i8* %1) #0 {
  %3 = alloca %struct.commit*, align 8
  %4 = alloca i8*, align 8
  store %struct.commit* %0, %struct.commit** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.commit*, %struct.commit** %3, align 8
  %6 = getelementptr inbounds %struct.commit, %struct.commit* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* @OBJ_COMMIT, align 4
  %9 = call i32 @add_object_entry(i32* %7, i32 %8, i32* null, i32 0)
  %10 = load i32, i32* @OBJECT_ADDED, align 4
  %11 = load %struct.commit*, %struct.commit** %3, align 8
  %12 = getelementptr inbounds %struct.commit, %struct.commit* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %10
  store i32 %15, i32* %13, align 4
  %16 = load i64, i64* @write_bitmap_index, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.commit*, %struct.commit** %3, align 8
  %20 = call i32 @index_commit_for_bitmap(%struct.commit* %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i64, i64* @use_delta_islands, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.commit*, %struct.commit** %3, align 8
  %26 = call i32 @propagate_island_marks(%struct.commit* %25)
  br label %27

27:                                               ; preds = %24, %21
  ret void
}

declare dso_local i32 @add_object_entry(i32*, i32, i32*, i32) #1

declare dso_local i32 @index_commit_for_bitmap(%struct.commit*) #1

declare dso_local i32 @propagate_island_marks(%struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
