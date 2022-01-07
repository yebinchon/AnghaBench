; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcov_fs.c_release_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcov_fs.c_release_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_node = type { i64, %struct.gcov_node*, i32 }

@children_entry = common dso_local global i32 0, align 4
@all_entry = common dso_local global i32 0, align 4
@M_GCOV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gcov_node*)* @release_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_node(%struct.gcov_node* %0) #0 {
  %2 = alloca %struct.gcov_node*, align 8
  store %struct.gcov_node* %0, %struct.gcov_node** %2, align 8
  %3 = load %struct.gcov_node*, %struct.gcov_node** %2, align 8
  %4 = load i32, i32* @children_entry, align 4
  %5 = call i32 @LIST_REMOVE(%struct.gcov_node* %3, i32 %4)
  %6 = load %struct.gcov_node*, %struct.gcov_node** %2, align 8
  %7 = load i32, i32* @all_entry, align 4
  %8 = call i32 @LIST_REMOVE(%struct.gcov_node* %6, i32 %7)
  %9 = load %struct.gcov_node*, %struct.gcov_node** %2, align 8
  %10 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @debugfs_remove(i32 %11)
  %13 = load %struct.gcov_node*, %struct.gcov_node** %2, align 8
  %14 = call i32 @remove_links(%struct.gcov_node* %13)
  %15 = load %struct.gcov_node*, %struct.gcov_node** %2, align 8
  %16 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %15, i32 0, i32 1
  %17 = load %struct.gcov_node*, %struct.gcov_node** %16, align 8
  %18 = load i32, i32* @M_GCOV, align 4
  %19 = call i32 @free(%struct.gcov_node* %17, i32 %18)
  %20 = load %struct.gcov_node*, %struct.gcov_node** %2, align 8
  %21 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.gcov_node*, %struct.gcov_node** %2, align 8
  %26 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @gcov_info_free(i64 %27)
  br label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.gcov_node*, %struct.gcov_node** %2, align 8
  %31 = load i32, i32* @M_GCOV, align 4
  %32 = call i32 @free(%struct.gcov_node* %30, i32 %31)
  ret void
}

declare dso_local i32 @LIST_REMOVE(%struct.gcov_node*, i32) #1

declare dso_local i32 @debugfs_remove(i32) #1

declare dso_local i32 @remove_links(%struct.gcov_node*) #1

declare dso_local i32 @free(%struct.gcov_node*, i32) #1

declare dso_local i32 @gcov_info_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
