; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_append_parent.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_append_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.commit_list = type { i32 }
%struct.object_id = type { i32 }
%struct.commit = type { i32 }
%struct.TYPE_2__ = type { %struct.commit_list* }

@.str = private unnamed_addr constant [18 x i8] c"no such commit %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit_list** (%struct.repository*, %struct.commit_list**, %struct.object_id*)* @append_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit_list** @append_parent(%struct.repository* %0, %struct.commit_list** %1, %struct.object_id* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.commit_list**, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca %struct.commit*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.commit_list** %1, %struct.commit_list*** %5, align 8
  store %struct.object_id* %2, %struct.object_id** %6, align 8
  %8 = load %struct.repository*, %struct.repository** %4, align 8
  %9 = load %struct.object_id*, %struct.object_id** %6, align 8
  %10 = call %struct.commit* @lookup_commit_reference(%struct.repository* %8, %struct.object_id* %9)
  store %struct.commit* %10, %struct.commit** %7, align 8
  %11 = load %struct.commit*, %struct.commit** %7, align 8
  %12 = icmp ne %struct.commit* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load %struct.object_id*, %struct.object_id** %6, align 8
  %15 = call i32 @oid_to_hex(%struct.object_id* %14)
  %16 = call i32 @die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %13, %3
  %18 = load %struct.commit*, %struct.commit** %7, align 8
  %19 = load %struct.commit_list**, %struct.commit_list*** %5, align 8
  %20 = call %struct.TYPE_2__* @commit_list_insert(%struct.commit* %18, %struct.commit_list** %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  ret %struct.commit_list** %21
}

declare dso_local %struct.commit* @lookup_commit_reference(%struct.repository*, %struct.object_id*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local %struct.TYPE_2__* @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
