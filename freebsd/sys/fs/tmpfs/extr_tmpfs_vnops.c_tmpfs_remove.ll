; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_remove_args = type { %struct.TYPE_3__*, %struct.vnode*, %struct.vnode* }
%struct.TYPE_3__ = type { i32 }
%struct.vnode = type { i64, i32 }
%struct.tmpfs_dirent = type { i32 }
%struct.tmpfs_mount = type { i32 }
%struct.tmpfs_node = type { i32, i32 }

@VDIR = common dso_local global i64 0, align 8
@EISDIR = common dso_local global i32 0, align 4
@IMMUTABLE = common dso_local global i32 0, align 4
@APPEND = common dso_local global i32 0, align 4
@NOUNLINK = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@DOWHITEOUT = common dso_local global i32 0, align 4
@TMPFS_NODE_ACCESSED = common dso_local global i32 0, align 4
@TMPFS_NODE_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_remove_args*)* @tmpfs_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmpfs_remove(%struct.vop_remove_args* %0) #0 {
  %2 = alloca %struct.vop_remove_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tmpfs_dirent*, align 8
  %7 = alloca %struct.tmpfs_mount*, align 8
  %8 = alloca %struct.tmpfs_node*, align 8
  %9 = alloca %struct.tmpfs_node*, align 8
  store %struct.vop_remove_args* %0, %struct.vop_remove_args** %2, align 8
  %10 = load %struct.vop_remove_args*, %struct.vop_remove_args** %2, align 8
  %11 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %10, i32 0, i32 2
  %12 = load %struct.vnode*, %struct.vnode** %11, align 8
  store %struct.vnode* %12, %struct.vnode** %3, align 8
  %13 = load %struct.vop_remove_args*, %struct.vop_remove_args** %2, align 8
  %14 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %13, i32 0, i32 1
  %15 = load %struct.vnode*, %struct.vnode** %14, align 8
  store %struct.vnode* %15, %struct.vnode** %4, align 8
  %16 = load %struct.vnode*, %struct.vnode** %3, align 8
  %17 = call i32 @VOP_ISLOCKED(%struct.vnode* %16)
  %18 = call i32 @MPASS(i32 %17)
  %19 = load %struct.vnode*, %struct.vnode** %4, align 8
  %20 = call i32 @VOP_ISLOCKED(%struct.vnode* %19)
  %21 = call i32 @MPASS(i32 %20)
  %22 = load %struct.vnode*, %struct.vnode** %4, align 8
  %23 = getelementptr inbounds %struct.vnode, %struct.vnode* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VDIR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @EISDIR, align 4
  store i32 %28, i32* %5, align 4
  br label %96

29:                                               ; preds = %1
  %30 = load %struct.vnode*, %struct.vnode** %3, align 8
  %31 = call %struct.tmpfs_node* @VP_TO_TMPFS_DIR(%struct.vnode* %30)
  store %struct.tmpfs_node* %31, %struct.tmpfs_node** %8, align 8
  %32 = load %struct.vnode*, %struct.vnode** %4, align 8
  %33 = call %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode* %32)
  store %struct.tmpfs_node* %33, %struct.tmpfs_node** %9, align 8
  %34 = load %struct.vnode*, %struct.vnode** %4, align 8
  %35 = getelementptr inbounds %struct.vnode, %struct.vnode* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.tmpfs_mount* @VFS_TO_TMPFS(i32 %36)
  store %struct.tmpfs_mount* %37, %struct.tmpfs_mount** %7, align 8
  %38 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %39 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %40 = load %struct.vop_remove_args*, %struct.vop_remove_args** %2, align 8
  %41 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = call %struct.tmpfs_dirent* @tmpfs_dir_lookup(%struct.tmpfs_node* %38, %struct.tmpfs_node* %39, %struct.TYPE_3__* %42)
  store %struct.tmpfs_dirent* %43, %struct.tmpfs_dirent** %6, align 8
  %44 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %45 = icmp ne %struct.tmpfs_dirent* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @MPASS(i32 %46)
  %48 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %49 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IMMUTABLE, align 4
  %52 = load i32, i32* @APPEND, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @NOUNLINK, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %50, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %29
  %59 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %60 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @APPEND, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58, %29
  %66 = load i32, i32* @EPERM, align 4
  store i32 %66, i32* %5, align 4
  br label %96

67:                                               ; preds = %58
  %68 = load %struct.vnode*, %struct.vnode** %3, align 8
  %69 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %70 = call i32 @tmpfs_dir_detach(%struct.vnode* %68, %struct.tmpfs_dirent* %69)
  %71 = load %struct.vop_remove_args*, %struct.vop_remove_args** %2, align 8
  %72 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @DOWHITEOUT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %67
  %80 = load %struct.vnode*, %struct.vnode** %3, align 8
  %81 = load %struct.vop_remove_args*, %struct.vop_remove_args** %2, align 8
  %82 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = call i32 @tmpfs_dir_whiteout_add(%struct.vnode* %80, %struct.TYPE_3__* %83)
  br label %85

85:                                               ; preds = %79, %67
  %86 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %7, align 8
  %87 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %88 = call i32 @tmpfs_free_dirent(%struct.tmpfs_mount* %86, %struct.tmpfs_dirent* %87)
  %89 = load i32, i32* @TMPFS_NODE_ACCESSED, align 4
  %90 = load i32, i32* @TMPFS_NODE_CHANGED, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %93 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %85, %65, %27
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_DIR(%struct.vnode*) #1

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode*) #1

declare dso_local %struct.tmpfs_mount* @VFS_TO_TMPFS(i32) #1

declare dso_local %struct.tmpfs_dirent* @tmpfs_dir_lookup(%struct.tmpfs_node*, %struct.tmpfs_node*, %struct.TYPE_3__*) #1

declare dso_local i32 @tmpfs_dir_detach(%struct.vnode*, %struct.tmpfs_dirent*) #1

declare dso_local i32 @tmpfs_dir_whiteout_add(%struct.vnode*, %struct.TYPE_3__*) #1

declare dso_local i32 @tmpfs_free_dirent(%struct.tmpfs_mount*, %struct.tmpfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
