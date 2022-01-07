; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_add_writecount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_add_writecount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_add_writecount_args = type { i64, %struct.vnode* }
%struct.vnode = type { i64 }
%struct.unionfs_node = type { %struct.vnode*, %struct.vnode* }

@.str = private unnamed_addr constant [22 x i8] c"wrong null writecount\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"wrong writecount inc %d\00", align 1
@ETXTBSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_add_writecount_args*)* @unionfs_add_writecount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_add_writecount(%struct.vop_add_writecount_args* %0) #0 {
  %2 = alloca %struct.vop_add_writecount_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.unionfs_node*, align 8
  %6 = alloca i32, align 4
  store %struct.vop_add_writecount_args* %0, %struct.vop_add_writecount_args** %2, align 8
  %7 = load %struct.vop_add_writecount_args*, %struct.vop_add_writecount_args** %2, align 8
  %8 = getelementptr inbounds %struct.vop_add_writecount_args, %struct.vop_add_writecount_args* %7, i32 0, i32 1
  %9 = load %struct.vnode*, %struct.vnode** %8, align 8
  store %struct.vnode* %9, %struct.vnode** %4, align 8
  %10 = load %struct.vnode*, %struct.vnode** %4, align 8
  %11 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %10)
  store %struct.unionfs_node* %11, %struct.unionfs_node** %5, align 8
  %12 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %13 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %12, i32 0, i32 1
  %14 = load %struct.vnode*, %struct.vnode** %13, align 8
  %15 = icmp ne %struct.vnode* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %18 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %17, i32 0, i32 1
  %19 = load %struct.vnode*, %struct.vnode** %18, align 8
  br label %24

20:                                               ; preds = %1
  %21 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %22 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %21, i32 0, i32 0
  %23 = load %struct.vnode*, %struct.vnode** %22, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi %struct.vnode* [ %19, %16 ], [ %23, %20 ]
  store %struct.vnode* %25, %struct.vnode** %3, align 8
  %26 = load %struct.vnode*, %struct.vnode** %4, align 8
  %27 = call i32 @VI_LOCK(%struct.vnode* %26)
  %28 = load %struct.vnode*, %struct.vnode** %4, align 8
  %29 = getelementptr inbounds %struct.vnode, %struct.vnode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = load %struct.vnode*, %struct.vnode** %4, align 8
  %34 = call i32 @VNASSERT(i32 %32, %struct.vnode* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.vnode*, %struct.vnode** %4, align 8
  %36 = getelementptr inbounds %struct.vnode, %struct.vnode* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.vop_add_writecount_args*, %struct.vop_add_writecount_args** %2, align 8
  %39 = getelementptr inbounds %struct.vop_add_writecount_args, %struct.vop_add_writecount_args* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = icmp sge i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = load %struct.vnode*, %struct.vnode** %4, align 8
  %45 = load %struct.vop_add_writecount_args*, %struct.vop_add_writecount_args** %2, align 8
  %46 = getelementptr inbounds %struct.vop_add_writecount_args, %struct.vop_add_writecount_args* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @VNASSERT(i32 %43, %struct.vnode* %44, i8* %48)
  %50 = load %struct.vnode*, %struct.vnode** %3, align 8
  %51 = icmp ne %struct.vnode* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %24
  %53 = load %struct.vnode*, %struct.vnode** %3, align 8
  %54 = load %struct.vop_add_writecount_args*, %struct.vop_add_writecount_args** %2, align 8
  %55 = getelementptr inbounds %struct.vop_add_writecount_args, %struct.vop_add_writecount_args* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @VOP_ADD_WRITECOUNT(%struct.vnode* %53, i64 %56)
  store i32 %57, i32* %6, align 4
  br label %67

58:                                               ; preds = %24
  %59 = load %struct.vnode*, %struct.vnode** %4, align 8
  %60 = getelementptr inbounds %struct.vnode, %struct.vnode* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @ETXTBSY, align 4
  store i32 %64, i32* %6, align 4
  br label %66

65:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %63
  br label %67

67:                                               ; preds = %66, %52
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load %struct.vop_add_writecount_args*, %struct.vop_add_writecount_args** %2, align 8
  %72 = getelementptr inbounds %struct.vop_add_writecount_args, %struct.vop_add_writecount_args* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.vnode*, %struct.vnode** %4, align 8
  %75 = getelementptr inbounds %struct.vnode, %struct.vnode* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, %73
  store i64 %77, i64* %75, align 8
  br label %78

78:                                               ; preds = %70, %67
  %79 = load %struct.vnode*, %struct.vnode** %4, align 8
  %80 = call i32 @VI_UNLOCK(%struct.vnode* %79)
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local %struct.unionfs_node* @VTOUNIONFS(%struct.vnode*) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @VNASSERT(i32, %struct.vnode*, i8*) #1

declare dso_local i32 @VOP_ADD_WRITECOUNT(%struct.vnode*, i64) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
