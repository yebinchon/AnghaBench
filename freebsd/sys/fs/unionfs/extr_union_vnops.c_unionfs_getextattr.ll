; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_getextattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_getextattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.vop_getextattr_args = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.unionfs_node = type { i32, %struct.vnode*, %struct.vnode* }

@NULLVP = common dso_local global %struct.vnode* null, align 8
@UNIONFS_OPENEXTU = common dso_local global i32 0, align 4
@UNIONFS_OPENEXTL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_getextattr_args*)* @unionfs_getextattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_getextattr(%struct.vop_getextattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_getextattr_args*, align 8
  %4 = alloca %struct.unionfs_node*, align 8
  %5 = alloca %struct.vnode*, align 8
  store %struct.vop_getextattr_args* %0, %struct.vop_getextattr_args** %3, align 8
  %6 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %7 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @KASSERT_UNIONFS_VNODE(i32 %8)
  %10 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %11 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.unionfs_node* @VTOUNIONFS(i32 %12)
  store %struct.unionfs_node* %13, %struct.unionfs_node** %4, align 8
  %14 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  store %struct.vnode* %14, %struct.vnode** %5, align 8
  %15 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %16 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @UNIONFS_OPENEXTU, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %23 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %22, i32 0, i32 2
  %24 = load %struct.vnode*, %struct.vnode** %23, align 8
  store %struct.vnode* %24, %struct.vnode** %5, align 8
  br label %37

25:                                               ; preds = %1
  %26 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %27 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @UNIONFS_OPENEXTL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %34 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %33, i32 0, i32 1
  %35 = load %struct.vnode*, %struct.vnode** %34, align 8
  store %struct.vnode* %35, %struct.vnode** %5, align 8
  br label %36

36:                                               ; preds = %32, %25
  br label %37

37:                                               ; preds = %36, %21
  %38 = load %struct.vnode*, %struct.vnode** %5, align 8
  %39 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %40 = icmp eq %struct.vnode* %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %42, i32* %2, align 4
  br label %64

43:                                               ; preds = %37
  %44 = load %struct.vnode*, %struct.vnode** %5, align 8
  %45 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %46 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %49 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %52 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %55 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %58 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %61 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @VOP_GETEXTATTR(%struct.vnode* %44, i32 %47, i32 %50, i32 %53, i32 %56, i32 %59, i32 %62)
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %43, %41
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @KASSERT_UNIONFS_VNODE(i32) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(i32) #1

declare dso_local i32 @VOP_GETEXTATTR(%struct.vnode*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
