; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_reflog.c_keep_entry.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_reflog.c_keep_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.object_id = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit**, %struct.object_id*)* @keep_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keep_entry(%struct.commit** %0, %struct.object_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.commit**, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.commit*, align 8
  store %struct.commit** %0, %struct.commit*** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  %7 = load %struct.object_id*, %struct.object_id** %5, align 8
  %8 = call i64 @is_null_oid(%struct.object_id* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %26

11:                                               ; preds = %2
  %12 = load i32, i32* @the_repository, align 4
  %13 = load %struct.object_id*, %struct.object_id** %5, align 8
  %14 = call %struct.commit* @lookup_commit_reference_gently(i32 %12, %struct.object_id* %13, i32 1)
  store %struct.commit* %14, %struct.commit** %6, align 8
  %15 = load %struct.commit*, %struct.commit** %6, align 8
  %16 = icmp ne %struct.commit* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %26

18:                                               ; preds = %11
  %19 = load %struct.commit*, %struct.commit** %6, align 8
  %20 = call i32 @commit_is_complete(%struct.commit* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %26

23:                                               ; preds = %18
  %24 = load %struct.commit*, %struct.commit** %6, align 8
  %25 = load %struct.commit**, %struct.commit*** %4, align 8
  store %struct.commit* %24, %struct.commit** %25, align 8
  store i32 1, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %22, %17, %10
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @is_null_oid(%struct.object_id*) #1

declare dso_local %struct.commit* @lookup_commit_reference_gently(i32, %struct.object_id*, i32) #1

declare dso_local i32 @commit_is_complete(%struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
