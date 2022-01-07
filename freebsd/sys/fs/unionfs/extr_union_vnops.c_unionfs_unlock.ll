; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.vop_unlock_args = type { i32, %struct.vnode* }
%struct.unionfs_node = type { %struct.vnode*, %struct.vnode* }

@LK_RELEASE = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.vnode* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_unlock_args*)* @unionfs_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_unlock(%struct.vop_unlock_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_unlock_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.unionfs_node*, align 8
  store %struct.vop_unlock_args* %0, %struct.vop_unlock_args** %3, align 8
  %11 = load %struct.vop_unlock_args*, %struct.vop_unlock_args** %3, align 8
  %12 = getelementptr inbounds %struct.vop_unlock_args, %struct.vop_unlock_args* %11, i32 0, i32 1
  %13 = load %struct.vnode*, %struct.vnode** %12, align 8
  %14 = call i32 @KASSERT_UNIONFS_VNODE(%struct.vnode* %13)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %15 = load %struct.vop_unlock_args*, %struct.vop_unlock_args** %3, align 8
  %16 = getelementptr inbounds %struct.vop_unlock_args, %struct.vop_unlock_args* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @LK_RELEASE, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.vop_unlock_args*, %struct.vop_unlock_args** %3, align 8
  %21 = getelementptr inbounds %struct.vop_unlock_args, %struct.vop_unlock_args* %20, i32 0, i32 1
  %22 = load %struct.vnode*, %struct.vnode** %21, align 8
  store %struct.vnode* %22, %struct.vnode** %7, align 8
  %23 = load %struct.vnode*, %struct.vnode** %7, align 8
  %24 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %23)
  store %struct.unionfs_node* %24, %struct.unionfs_node** %10, align 8
  %25 = load %struct.unionfs_node*, %struct.unionfs_node** %10, align 8
  %26 = icmp eq %struct.unionfs_node* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %72

28:                                               ; preds = %1
  %29 = load %struct.unionfs_node*, %struct.unionfs_node** %10, align 8
  %30 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %29, i32 0, i32 1
  %31 = load %struct.vnode*, %struct.vnode** %30, align 8
  store %struct.vnode* %31, %struct.vnode** %8, align 8
  %32 = load %struct.unionfs_node*, %struct.unionfs_node** %10, align 8
  %33 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %32, i32 0, i32 0
  %34 = load %struct.vnode*, %struct.vnode** %33, align 8
  store %struct.vnode* %34, %struct.vnode** %9, align 8
  %35 = load %struct.vnode*, %struct.vnode** %8, align 8
  %36 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %37 = icmp ne %struct.vnode* %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = load %struct.vnode*, %struct.vnode** %8, align 8
  %40 = call i32 @vholdnz(%struct.vnode* %39)
  %41 = load %struct.vnode*, %struct.vnode** %8, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @VOP_UNLOCK(%struct.vnode* %41, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %38, %28
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load %struct.vnode*, %struct.vnode** %9, align 8
  %49 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %50 = icmp ne %struct.vnode* %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load %struct.vnode*, %struct.vnode** %9, align 8
  %53 = call i32 @vholdnz(%struct.vnode* %52)
  store i32 1, i32* %6, align 4
  %54 = load %struct.vnode*, %struct.vnode** %9, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @VOP_UNLOCK(%struct.vnode* %54, i32 %55)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %51, %47, %44
  %58 = load %struct.vnode*, %struct.vnode** %8, align 8
  %59 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %60 = icmp ne %struct.vnode* %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load %struct.vnode*, %struct.vnode** %8, align 8
  %63 = call i32 @vdrop(%struct.vnode* %62)
  br label %64

64:                                               ; preds = %61, %57
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.vnode*, %struct.vnode** %9, align 8
  %69 = call i32 @vdrop(%struct.vnode* %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %75

72:                                               ; preds = %27
  %73 = load %struct.vop_unlock_args*, %struct.vop_unlock_args** %3, align 8
  %74 = call i32 @vop_stdunlock(%struct.vop_unlock_args* %73)
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %72, %70
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @KASSERT_UNIONFS_VNODE(%struct.vnode*) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(%struct.vnode*) #1

declare dso_local i32 @vholdnz(%struct.vnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vdrop(%struct.vnode*) #1

declare dso_local i32 @vop_stdunlock(%struct.vop_unlock_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
