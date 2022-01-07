; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_commit-tree.c_new_parent.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_commit-tree.c_new_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.object_id }
%struct.object_id = type { i32 }
%struct.commit_list = type { %struct.commit_list*, %struct.commit* }

@.str = private unnamed_addr constant [28 x i8] c"duplicate parent %s ignored\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit*, %struct.commit_list**)* @new_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @new_parent(%struct.commit* %0, %struct.commit_list** %1) #0 {
  %3 = alloca %struct.commit*, align 8
  %4 = alloca %struct.commit_list**, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.commit_list*, align 8
  store %struct.commit* %0, %struct.commit** %3, align 8
  store %struct.commit_list** %1, %struct.commit_list*** %4, align 8
  %7 = load %struct.commit*, %struct.commit** %3, align 8
  %8 = getelementptr inbounds %struct.commit, %struct.commit* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.object_id* %9, %struct.object_id** %5, align 8
  %10 = load %struct.commit_list**, %struct.commit_list*** %4, align 8
  %11 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  store %struct.commit_list* %11, %struct.commit_list** %6, align 8
  br label %12

12:                                               ; preds = %29, %2
  %13 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %14 = icmp ne %struct.commit_list* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %17 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %16, i32 0, i32 1
  %18 = load %struct.commit*, %struct.commit** %17, align 8
  %19 = load %struct.commit*, %struct.commit** %3, align 8
  %20 = icmp eq %struct.commit* %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.object_id*, %struct.object_id** %5, align 8
  %24 = call i32 @oid_to_hex(%struct.object_id* %23)
  %25 = call i32 @error(i32 %22, i32 %24)
  br label %37

26:                                               ; preds = %15
  %27 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %28 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %27, i32 0, i32 0
  store %struct.commit_list** %28, %struct.commit_list*** %4, align 8
  br label %29

29:                                               ; preds = %26
  %30 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %31 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %30, i32 0, i32 0
  %32 = load %struct.commit_list*, %struct.commit_list** %31, align 8
  store %struct.commit_list* %32, %struct.commit_list** %6, align 8
  br label %12

33:                                               ; preds = %12
  %34 = load %struct.commit*, %struct.commit** %3, align 8
  %35 = load %struct.commit_list**, %struct.commit_list*** %4, align 8
  %36 = call i32 @commit_list_insert(%struct.commit* %34, %struct.commit_list** %35)
  br label %37

37:                                               ; preds = %33, %21
  ret void
}

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
