; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_closeextattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_closeextattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.vop_closeextattr_args = type { i32, i32, i32, %struct.vnode* }
%struct.unionfs_node = type { i32, %struct.vnode*, %struct.vnode* }

@NULLVP = common dso_local global %struct.vnode* null, align 8
@UNIONFS_OPENEXTU = common dso_local global i32 0, align 4
@UNIONFS_OPENEXTL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@LK_UPGRADE = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@LK_DOWNGRADE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_closeextattr_args*)* @unionfs_closeextattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_closeextattr(%struct.vop_closeextattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_closeextattr_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.unionfs_node*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnode*, align 8
  store %struct.vop_closeextattr_args* %0, %struct.vop_closeextattr_args** %3, align 8
  %8 = load %struct.vop_closeextattr_args*, %struct.vop_closeextattr_args** %3, align 8
  %9 = getelementptr inbounds %struct.vop_closeextattr_args, %struct.vop_closeextattr_args* %8, i32 0, i32 3
  %10 = load %struct.vnode*, %struct.vnode** %9, align 8
  %11 = call i32 @KASSERT_UNIONFS_VNODE(%struct.vnode* %10)
  %12 = load %struct.vop_closeextattr_args*, %struct.vop_closeextattr_args** %3, align 8
  %13 = getelementptr inbounds %struct.vop_closeextattr_args, %struct.vop_closeextattr_args* %12, i32 0, i32 3
  %14 = load %struct.vnode*, %struct.vnode** %13, align 8
  store %struct.vnode* %14, %struct.vnode** %6, align 8
  %15 = load %struct.vnode*, %struct.vnode** %6, align 8
  %16 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %15)
  store %struct.unionfs_node* %16, %struct.unionfs_node** %5, align 8
  %17 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  store %struct.vnode* %17, %struct.vnode** %7, align 8
  %18 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %19 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @UNIONFS_OPENEXTU, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %26 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %25, i32 0, i32 1
  %27 = load %struct.vnode*, %struct.vnode** %26, align 8
  store %struct.vnode* %27, %struct.vnode** %7, align 8
  br label %40

28:                                               ; preds = %1
  %29 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %30 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @UNIONFS_OPENEXTL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %37 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %36, i32 0, i32 2
  %38 = load %struct.vnode*, %struct.vnode** %37, align 8
  store %struct.vnode* %38, %struct.vnode** %7, align 8
  br label %39

39:                                               ; preds = %35, %28
  br label %40

40:                                               ; preds = %39, %24
  %41 = load %struct.vnode*, %struct.vnode** %7, align 8
  %42 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %43 = icmp eq %struct.vnode* %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %45, i32* %2, align 4
  br label %99

46:                                               ; preds = %40
  %47 = load %struct.vnode*, %struct.vnode** %7, align 8
  %48 = load %struct.vop_closeextattr_args*, %struct.vop_closeextattr_args** %3, align 8
  %49 = getelementptr inbounds %struct.vop_closeextattr_args, %struct.vop_closeextattr_args* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.vop_closeextattr_args*, %struct.vop_closeextattr_args** %3, align 8
  %52 = getelementptr inbounds %struct.vop_closeextattr_args, %struct.vop_closeextattr_args* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.vop_closeextattr_args*, %struct.vop_closeextattr_args** %3, align 8
  %55 = getelementptr inbounds %struct.vop_closeextattr_args, %struct.vop_closeextattr_args* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @VOP_CLOSEEXTATTR(%struct.vnode* %47, i32 %50, i32 %53, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %97

60:                                               ; preds = %46
  %61 = load %struct.vnode*, %struct.vnode** %6, align 8
  %62 = load i32, i32* @LK_UPGRADE, align 4
  %63 = call i64 @vn_lock(%struct.vnode* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.vnode*, %struct.vnode** %6, align 8
  %67 = load i32, i32* @LK_EXCLUSIVE, align 4
  %68 = load i32, i32* @LK_RETRY, align 4
  %69 = or i32 %67, %68
  %70 = call i64 @vn_lock(%struct.vnode* %66, i32 %69)
  br label %71

71:                                               ; preds = %65, %60
  %72 = load %struct.vnode*, %struct.vnode** %7, align 8
  %73 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %74 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %73, i32 0, i32 1
  %75 = load %struct.vnode*, %struct.vnode** %74, align 8
  %76 = icmp eq %struct.vnode* %72, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load i32, i32* @UNIONFS_OPENEXTU, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %81 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %91

84:                                               ; preds = %71
  %85 = load i32, i32* @UNIONFS_OPENEXTL, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %88 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %84, %77
  %92 = load %struct.vnode*, %struct.vnode** %6, align 8
  %93 = load i32, i32* @LK_DOWNGRADE, align 4
  %94 = load i32, i32* @LK_RETRY, align 4
  %95 = or i32 %93, %94
  %96 = call i64 @vn_lock(%struct.vnode* %92, i32 %95)
  br label %97

97:                                               ; preds = %91, %46
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %44
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @KASSERT_UNIONFS_VNODE(%struct.vnode*) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(%struct.vnode*) #1

declare dso_local i32 @VOP_CLOSEEXTATTR(%struct.vnode*, i32, i32, i32) #1

declare dso_local i64 @vn_lock(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
