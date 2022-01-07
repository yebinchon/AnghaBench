; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_openextattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_openextattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.vop_openextattr_args = type { i32, i32, %struct.vnode* }
%struct.unionfs_node = type { i32, %struct.vnode*, %struct.vnode* }

@NULLVP = common dso_local global %struct.vnode* null, align 8
@UNIONFS_OPENEXTU = common dso_local global i32 0, align 4
@UNIONFS_OPENEXTL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@LK_UPGRADE = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@LK_DOWNGRADE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_openextattr_args*)* @unionfs_openextattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_openextattr(%struct.vop_openextattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_openextattr_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.unionfs_node*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnode*, align 8
  store %struct.vop_openextattr_args* %0, %struct.vop_openextattr_args** %3, align 8
  %8 = load %struct.vop_openextattr_args*, %struct.vop_openextattr_args** %3, align 8
  %9 = getelementptr inbounds %struct.vop_openextattr_args, %struct.vop_openextattr_args* %8, i32 0, i32 2
  %10 = load %struct.vnode*, %struct.vnode** %9, align 8
  %11 = call i32 @KASSERT_UNIONFS_VNODE(%struct.vnode* %10)
  %12 = load %struct.vop_openextattr_args*, %struct.vop_openextattr_args** %3, align 8
  %13 = getelementptr inbounds %struct.vop_openextattr_args, %struct.vop_openextattr_args* %12, i32 0, i32 2
  %14 = load %struct.vnode*, %struct.vnode** %13, align 8
  store %struct.vnode* %14, %struct.vnode** %6, align 8
  %15 = load %struct.vnode*, %struct.vnode** %6, align 8
  %16 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %15)
  store %struct.unionfs_node* %16, %struct.unionfs_node** %5, align 8
  %17 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %18 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %17, i32 0, i32 1
  %19 = load %struct.vnode*, %struct.vnode** %18, align 8
  %20 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %21 = icmp ne %struct.vnode* %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %24 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %23, i32 0, i32 1
  %25 = load %struct.vnode*, %struct.vnode** %24, align 8
  br label %30

26:                                               ; preds = %1
  %27 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %28 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %27, i32 0, i32 2
  %29 = load %struct.vnode*, %struct.vnode** %28, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi %struct.vnode* [ %25, %22 ], [ %29, %26 ]
  store %struct.vnode* %31, %struct.vnode** %7, align 8
  %32 = load %struct.vnode*, %struct.vnode** %7, align 8
  %33 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %34 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %33, i32 0, i32 1
  %35 = load %struct.vnode*, %struct.vnode** %34, align 8
  %36 = icmp eq %struct.vnode* %32, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %39 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @UNIONFS_OPENEXTU, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %37, %30
  %45 = load %struct.vnode*, %struct.vnode** %7, align 8
  %46 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %47 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %46, i32 0, i32 2
  %48 = load %struct.vnode*, %struct.vnode** %47, align 8
  %49 = icmp eq %struct.vnode* %45, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %52 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @UNIONFS_OPENEXTL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50, %37
  %58 = load i32, i32* @EBUSY, align 4
  store i32 %58, i32* %2, align 4
  br label %107

59:                                               ; preds = %50, %44
  %60 = load %struct.vnode*, %struct.vnode** %7, align 8
  %61 = load %struct.vop_openextattr_args*, %struct.vop_openextattr_args** %3, align 8
  %62 = getelementptr inbounds %struct.vop_openextattr_args, %struct.vop_openextattr_args* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.vop_openextattr_args*, %struct.vop_openextattr_args** %3, align 8
  %65 = getelementptr inbounds %struct.vop_openextattr_args, %struct.vop_openextattr_args* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @VOP_OPENEXTATTR(%struct.vnode* %60, i32 %63, i32 %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %105

70:                                               ; preds = %59
  %71 = load %struct.vnode*, %struct.vnode** %6, align 8
  %72 = load i32, i32* @LK_UPGRADE, align 4
  %73 = call i64 @vn_lock(%struct.vnode* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.vnode*, %struct.vnode** %6, align 8
  %77 = load i32, i32* @LK_EXCLUSIVE, align 4
  %78 = load i32, i32* @LK_RETRY, align 4
  %79 = or i32 %77, %78
  %80 = call i64 @vn_lock(%struct.vnode* %76, i32 %79)
  br label %81

81:                                               ; preds = %75, %70
  %82 = load %struct.vnode*, %struct.vnode** %7, align 8
  %83 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %84 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %83, i32 0, i32 1
  %85 = load %struct.vnode*, %struct.vnode** %84, align 8
  %86 = icmp eq %struct.vnode* %82, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load i32, i32* @UNIONFS_OPENEXTU, align 4
  %89 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %90 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %99

93:                                               ; preds = %81
  %94 = load i32, i32* @UNIONFS_OPENEXTL, align 4
  %95 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %96 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %93, %87
  %100 = load %struct.vnode*, %struct.vnode** %6, align 8
  %101 = load i32, i32* @LK_DOWNGRADE, align 4
  %102 = load i32, i32* @LK_RETRY, align 4
  %103 = or i32 %101, %102
  %104 = call i64 @vn_lock(%struct.vnode* %100, i32 %103)
  br label %105

105:                                              ; preds = %99, %59
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %57
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @KASSERT_UNIONFS_VNODE(%struct.vnode*) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(%struct.vnode*) #1

declare dso_local i32 @VOP_OPENEXTATTR(%struct.vnode*, i32, i32) #1

declare dso_local i64 @vn_lock(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
