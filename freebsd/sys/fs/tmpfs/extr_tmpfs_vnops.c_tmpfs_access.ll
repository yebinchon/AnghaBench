; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_access_args = type { i32, %struct.ucred*, %struct.vnode* }
%struct.ucred = type { i32 }
%struct.vnode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tmpfs_node = type { i32, i32, i32, i32 }

@VWRITE = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IMMUTABLE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmpfs_access(%struct.vop_access_args* %0) #0 {
  %2 = alloca %struct.vop_access_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tmpfs_node*, align 8
  store %struct.vop_access_args* %0, %struct.vop_access_args** %2, align 8
  %8 = load %struct.vop_access_args*, %struct.vop_access_args** %2, align 8
  %9 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %8, i32 0, i32 2
  %10 = load %struct.vnode*, %struct.vnode** %9, align 8
  store %struct.vnode* %10, %struct.vnode** %3, align 8
  %11 = load %struct.vop_access_args*, %struct.vop_access_args** %2, align 8
  %12 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load %struct.vop_access_args*, %struct.vop_access_args** %2, align 8
  %15 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %14, i32 0, i32 1
  %16 = load %struct.ucred*, %struct.ucred** %15, align 8
  store %struct.ucred* %16, %struct.ucred** %5, align 8
  %17 = load %struct.vnode*, %struct.vnode** %3, align 8
  %18 = call i32 @VOP_ISLOCKED(%struct.vnode* %17)
  %19 = call i32 @MPASS(i32 %18)
  %20 = load %struct.vnode*, %struct.vnode** %3, align 8
  %21 = call %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode* %20)
  store %struct.tmpfs_node* %21, %struct.tmpfs_node** %7, align 8
  %22 = load %struct.vnode*, %struct.vnode** %3, align 8
  %23 = getelementptr inbounds %struct.vnode, %struct.vnode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %43 [
    i32 132, label %25
    i32 130, label %25
    i32 129, label %25
    i32 134, label %42
    i32 133, label %42
    i32 128, label %42
    i32 131, label %42
  ]

25:                                               ; preds = %1, %1, %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @VWRITE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.vnode*, %struct.vnode** %3, align 8
  %32 = getelementptr inbounds %struct.vnode, %struct.vnode* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MNT_RDONLY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @EROFS, align 4
  store i32 %40, i32* %6, align 4
  br label %75

41:                                               ; preds = %30, %25
  br label %45

42:                                               ; preds = %1, %1, %1, %1
  br label %45

43:                                               ; preds = %1
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %6, align 4
  br label %75

45:                                               ; preds = %42, %41
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @VWRITE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %52 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IMMUTABLE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @EPERM, align 4
  store i32 %58, i32* %6, align 4
  br label %75

59:                                               ; preds = %50, %45
  %60 = load %struct.vnode*, %struct.vnode** %3, align 8
  %61 = getelementptr inbounds %struct.vnode, %struct.vnode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %64 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %67 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %70 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.ucred*, %struct.ucred** %5, align 8
  %74 = call i32 @vaccess(i32 %62, i32 %65, i32 %68, i32 %71, i32 %72, %struct.ucred* %73, i32* null)
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %59, %57, %43, %39
  %76 = load %struct.vnode*, %struct.vnode** %3, align 8
  %77 = call i32 @VOP_ISLOCKED(%struct.vnode* %76)
  %78 = call i32 @MPASS(i32 %77)
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode*) #1

declare dso_local i32 @vaccess(i32, i32, i32, i32, i32, %struct.ucred*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
