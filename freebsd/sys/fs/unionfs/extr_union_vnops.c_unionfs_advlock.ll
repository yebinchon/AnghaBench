; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_advlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_advlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vnode = type { i32 }
%struct.vop_advlock_args = type { i32, i32, i32, i32, %struct.vnode* }
%struct.unionfs_node = type { i32, %struct.vnode* }
%struct.unionfs_node_status = type { i64, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"unionfs_advlock: enter\0A\00", align 1
@curthread = common dso_local global %struct.thread* null, align 8
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.vnode* null, align 8
@LK_RELEASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unionfs_advlock: leave (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_advlock_args*)* @unionfs_advlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_advlock(%struct.vop_advlock_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_advlock_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.unionfs_node*, align 8
  %6 = alloca %struct.unionfs_node_status*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.thread*, align 8
  store %struct.vop_advlock_args* %0, %struct.vop_advlock_args** %3, align 8
  %10 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %12 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %11, i32 0, i32 4
  %13 = load %struct.vnode*, %struct.vnode** %12, align 8
  %14 = call i32 @KASSERT_UNIONFS_VNODE(%struct.vnode* %13)
  %15 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %16 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %15, i32 0, i32 4
  %17 = load %struct.vnode*, %struct.vnode** %16, align 8
  store %struct.vnode* %17, %struct.vnode** %7, align 8
  %18 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %18, %struct.thread** %9, align 8
  %19 = load %struct.vnode*, %struct.vnode** %7, align 8
  %20 = load i32, i32* @LK_EXCLUSIVE, align 4
  %21 = load i32, i32* @LK_RETRY, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @vn_lock(%struct.vnode* %19, i32 %22)
  %24 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %25 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %24, i32 0, i32 4
  %26 = load %struct.vnode*, %struct.vnode** %25, align 8
  %27 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %26)
  store %struct.unionfs_node* %27, %struct.unionfs_node** %5, align 8
  %28 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %29 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %28, i32 0, i32 1
  %30 = load %struct.vnode*, %struct.vnode** %29, align 8
  store %struct.vnode* %30, %struct.vnode** %8, align 8
  %31 = load %struct.vnode*, %struct.vnode** %8, align 8
  %32 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %33 = icmp eq %struct.vnode* %31, %32
  br i1 %33, label %34, label %93

34:                                               ; preds = %1
  %35 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %36 = load %struct.thread*, %struct.thread** %9, align 8
  %37 = getelementptr inbounds %struct.thread, %struct.thread* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.thread*, %struct.thread** %9, align 8
  %40 = call i32 @unionfs_copyfile(%struct.unionfs_node* %35, i32 1, i32 %38, %struct.thread* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %114

44:                                               ; preds = %34
  %45 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %46 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %45, i32 0, i32 1
  %47 = load %struct.vnode*, %struct.vnode** %46, align 8
  store %struct.vnode* %47, %struct.vnode** %8, align 8
  %48 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %49 = load %struct.thread*, %struct.thread** %9, align 8
  %50 = call i32 @unionfs_get_node_status(%struct.unionfs_node* %48, %struct.thread* %49, %struct.unionfs_node_status** %6)
  %51 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %6, align 8
  %52 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %88

55:                                               ; preds = %44
  %56 = load %struct.vnode*, %struct.vnode** %8, align 8
  %57 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %6, align 8
  %58 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.thread*, %struct.thread** %9, align 8
  %61 = getelementptr inbounds %struct.thread, %struct.thread* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.thread*, %struct.thread** %9, align 8
  %64 = call i32 @VOP_OPEN(%struct.vnode* %56, i32 %59, i32 %62, %struct.thread* %63, i32* null)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %114

68:                                               ; preds = %55
  %69 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %6, align 8
  %70 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %74 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %6, align 8
  %77 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.thread*, %struct.thread** %9, align 8
  %80 = getelementptr inbounds %struct.thread, %struct.thread* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.thread*, %struct.thread** %9, align 8
  %83 = call i32 @VOP_CLOSE(i32 %75, i32 %78, i32 %81, %struct.thread* %82)
  %84 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %6, align 8
  %85 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, -1
  store i64 %87, i64* %85, align 8
  br label %92

88:                                               ; preds = %44
  %89 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %90 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %6, align 8
  %91 = call i32 @unionfs_tryrem_node_status(%struct.unionfs_node* %89, %struct.unionfs_node_status* %90)
  br label %92

92:                                               ; preds = %88, %68
  br label %93

93:                                               ; preds = %92, %1
  %94 = load %struct.vnode*, %struct.vnode** %7, align 8
  %95 = load i32, i32* @LK_RELEASE, align 4
  %96 = call i32 @VOP_UNLOCK(%struct.vnode* %94, i32 %95)
  %97 = load %struct.vnode*, %struct.vnode** %8, align 8
  %98 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %99 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %102 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %105 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %108 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @VOP_ADVLOCK(%struct.vnode* %97, i32 %100, i32 %103, i32 %106, i32 %109)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %4, align 4
  store i32 %113, i32* %2, align 4
  br label %121

114:                                              ; preds = %67, %43
  %115 = load %struct.vnode*, %struct.vnode** %7, align 8
  %116 = load i32, i32* @LK_RELEASE, align 4
  %117 = call i32 @VOP_UNLOCK(%struct.vnode* %115, i32 %116)
  %118 = load i32, i32* %4, align 4
  %119 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %4, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %114, %93
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @UNIONFS_INTERNAL_DEBUG(i8*, ...) #1

declare dso_local i32 @KASSERT_UNIONFS_VNODE(%struct.vnode*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(%struct.vnode*) #1

declare dso_local i32 @unionfs_copyfile(%struct.unionfs_node*, i32, i32, %struct.thread*) #1

declare dso_local i32 @unionfs_get_node_status(%struct.unionfs_node*, %struct.thread*, %struct.unionfs_node_status**) #1

declare dso_local i32 @VOP_OPEN(%struct.vnode*, i32, i32, %struct.thread*, i32*) #1

declare dso_local i32 @VOP_CLOSE(i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @unionfs_tryrem_node_status(%struct.unionfs_node*, %struct.unionfs_node_status*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_ADVLOCK(%struct.vnode*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
