; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_ref_node_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_ref_node_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmpfs_node = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"node %p zero refcount\00", align 1
@UINT_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"node %p refcount %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tmpfs_ref_node_locked(%struct.tmpfs_node* %0) #0 {
  %2 = alloca %struct.tmpfs_node*, align 8
  store %struct.tmpfs_node* %0, %struct.tmpfs_node** %2, align 8
  %3 = load %struct.tmpfs_node*, %struct.tmpfs_node** %2, align 8
  %4 = call i32 @TMPFS_NODE_ASSERT_LOCKED(%struct.tmpfs_node* %3)
  %5 = load %struct.tmpfs_node*, %struct.tmpfs_node** %2, align 8
  %6 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = load %struct.tmpfs_node*, %struct.tmpfs_node** %2, align 8
  %11 = bitcast %struct.tmpfs_node* %10 to i8*
  %12 = call i32 @KASSERT(i32 %9, i8* %11)
  %13 = load %struct.tmpfs_node*, %struct.tmpfs_node** %2, align 8
  %14 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @UINT_MAX, align 8
  %17 = icmp slt i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load %struct.tmpfs_node*, %struct.tmpfs_node** %2, align 8
  %20 = load %struct.tmpfs_node*, %struct.tmpfs_node** %2, align 8
  %21 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @KASSERT(i32 %18, i8* %23)
  %25 = load %struct.tmpfs_node*, %struct.tmpfs_node** %2, align 8
  %26 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  ret void
}

declare dso_local i32 @TMPFS_NODE_ASSERT_LOCKED(%struct.tmpfs_node*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
