; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_subr.c_unionfs_tryrem_node_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_subr.c_unionfs_tryrem_node_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unionfs_node = type { i32 }
%struct.unionfs_node_status = type { i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"null pointer\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"unionfs_get_node_status\00", align 1
@uns_list = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unionfs_tryrem_node_status(%struct.unionfs_node* %0, %struct.unionfs_node_status* %1) #0 {
  %3 = alloca %struct.unionfs_node*, align 8
  %4 = alloca %struct.unionfs_node_status*, align 8
  store %struct.unionfs_node* %0, %struct.unionfs_node** %3, align 8
  store %struct.unionfs_node_status* %1, %struct.unionfs_node_status** %4, align 8
  %5 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %4, align 8
  %6 = icmp ne %struct.unionfs_node_status* null, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.unionfs_node*, %struct.unionfs_node** %3, align 8
  %10 = call i32 @UNIONFSTOV(%struct.unionfs_node* %9)
  %11 = call i32 @ASSERT_VOP_ELOCKED(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %12 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %4, align 8
  %13 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 0, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %4, align 8
  %18 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 0, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %2
  br label %29

22:                                               ; preds = %16
  %23 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %4, align 8
  %24 = load i32, i32* @uns_list, align 4
  %25 = call i32 @LIST_REMOVE(%struct.unionfs_node_status* %23, i32 %24)
  %26 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %4, align 8
  %27 = load i32, i32* @M_TEMP, align 4
  %28 = call i32 @free(%struct.unionfs_node_status* %26, i32 %27)
  br label %29

29:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ASSERT_VOP_ELOCKED(i32, i8*) #1

declare dso_local i32 @UNIONFSTOV(%struct.unionfs_node*) #1

declare dso_local i32 @LIST_REMOVE(%struct.unionfs_node_status*, i32) #1

declare dso_local i32 @free(%struct.unionfs_node_status*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
