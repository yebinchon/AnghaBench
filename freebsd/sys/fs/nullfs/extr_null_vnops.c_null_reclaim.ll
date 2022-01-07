; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vnops.c_null_reclaim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vnops.c_null_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_reclaim_args = type { %struct.vnode* }
%struct.vnode = type { i32, i32, i32*, i32*, i32* }
%struct.null_node = type { i32, %struct.vnode* }

@.str = private unnamed_addr constant [36 x i8] c"Reclaiming incomplete null vnode %p\00", align 1
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@NULLV_NOUNLOCK = common dso_local global i32 0, align 4
@M_NULLFSNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_reclaim_args*)* @null_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_reclaim(%struct.vop_reclaim_args* %0) #0 {
  %2 = alloca %struct.vop_reclaim_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.null_node*, align 8
  %5 = alloca %struct.vnode*, align 8
  store %struct.vop_reclaim_args* %0, %struct.vop_reclaim_args** %2, align 8
  %6 = load %struct.vop_reclaim_args*, %struct.vop_reclaim_args** %2, align 8
  %7 = getelementptr inbounds %struct.vop_reclaim_args, %struct.vop_reclaim_args* %6, i32 0, i32 0
  %8 = load %struct.vnode*, %struct.vnode** %7, align 8
  store %struct.vnode* %8, %struct.vnode** %3, align 8
  %9 = load %struct.vnode*, %struct.vnode** %3, align 8
  %10 = call %struct.null_node* @VTONULL(%struct.vnode* %9)
  store %struct.null_node* %10, %struct.null_node** %4, align 8
  %11 = load %struct.null_node*, %struct.null_node** %4, align 8
  %12 = getelementptr inbounds %struct.null_node, %struct.null_node* %11, i32 0, i32 1
  %13 = load %struct.vnode*, %struct.vnode** %12, align 8
  store %struct.vnode* %13, %struct.vnode** %5, align 8
  %14 = load %struct.vnode*, %struct.vnode** %5, align 8
  %15 = icmp ne %struct.vnode* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.vnode*, %struct.vnode** %3, align 8
  %18 = getelementptr inbounds %struct.vnode, %struct.vnode* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.vnode*, %struct.vnode** %3, align 8
  %21 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 1
  %22 = icmp ne i32* %19, %21
  br label %23

23:                                               ; preds = %16, %1
  %24 = phi i1 [ false, %1 ], [ %22, %16 ]
  %25 = zext i1 %24 to i32
  %26 = load %struct.vnode*, %struct.vnode** %3, align 8
  %27 = bitcast %struct.vnode* %26 to i8*
  %28 = call i32 @KASSERT(i32 %25, i8* %27)
  %29 = load %struct.null_node*, %struct.null_node** %4, align 8
  %30 = call i32 @null_hashrem(%struct.null_node* %29)
  %31 = load %struct.vnode*, %struct.vnode** %3, align 8
  %32 = getelementptr inbounds %struct.vnode, %struct.vnode* %31, i32 0, i32 1
  %33 = load i32, i32* @LK_EXCLUSIVE, align 4
  %34 = call i32 @lockmgr(i32* %32, i32 %33, i32* null)
  %35 = load %struct.vnode*, %struct.vnode** %3, align 8
  %36 = call i32 @VI_LOCK(%struct.vnode* %35)
  %37 = load %struct.vnode*, %struct.vnode** %3, align 8
  %38 = getelementptr inbounds %struct.vnode, %struct.vnode* %37, i32 0, i32 4
  store i32* null, i32** %38, align 8
  %39 = load %struct.vnode*, %struct.vnode** %3, align 8
  %40 = getelementptr inbounds %struct.vnode, %struct.vnode* %39, i32 0, i32 3
  store i32* null, i32** %40, align 8
  %41 = load %struct.vnode*, %struct.vnode** %3, align 8
  %42 = getelementptr inbounds %struct.vnode, %struct.vnode* %41, i32 0, i32 1
  %43 = load %struct.vnode*, %struct.vnode** %3, align 8
  %44 = getelementptr inbounds %struct.vnode, %struct.vnode* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  %45 = load %struct.vnode*, %struct.vnode** %3, align 8
  %46 = getelementptr inbounds %struct.vnode, %struct.vnode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %23
  %50 = load %struct.vnode*, %struct.vnode** %5, align 8
  %51 = load %struct.vnode*, %struct.vnode** %3, align 8
  %52 = getelementptr inbounds %struct.vnode, %struct.vnode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 0, %53
  %55 = call i32 @VOP_ADD_WRITECOUNT(%struct.vnode* %50, i32 %54)
  br label %65

56:                                               ; preds = %23
  %57 = load %struct.vnode*, %struct.vnode** %3, align 8
  %58 = getelementptr inbounds %struct.vnode, %struct.vnode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.vnode*, %struct.vnode** %3, align 8
  %63 = getelementptr inbounds %struct.vnode, %struct.vnode* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  br label %64

64:                                               ; preds = %61, %56
  br label %65

65:                                               ; preds = %64, %49
  %66 = load %struct.vnode*, %struct.vnode** %3, align 8
  %67 = call i32 @VI_UNLOCK(%struct.vnode* %66)
  %68 = load %struct.null_node*, %struct.null_node** %4, align 8
  %69 = getelementptr inbounds %struct.null_node, %struct.null_node* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @NULLV_NOUNLOCK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load %struct.vnode*, %struct.vnode** %5, align 8
  %76 = call i32 @vunref(%struct.vnode* %75)
  br label %80

77:                                               ; preds = %65
  %78 = load %struct.vnode*, %struct.vnode** %5, align 8
  %79 = call i32 @vput(%struct.vnode* %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load %struct.null_node*, %struct.null_node** %4, align 8
  %82 = load i32, i32* @M_NULLFSNODE, align 4
  %83 = call i32 @free(%struct.null_node* %81, i32 %82)
  ret i32 0
}

declare dso_local %struct.null_node* @VTONULL(%struct.vnode*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @null_hashrem(%struct.null_node*) #1

declare dso_local i32 @lockmgr(i32*, i32, i32*) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @VOP_ADD_WRITECOUNT(%struct.vnode*, i32) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i32 @vunref(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @free(%struct.null_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
