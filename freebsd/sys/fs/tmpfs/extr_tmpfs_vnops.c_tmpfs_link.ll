; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_link_args = type { %struct.componentname*, %struct.vnode*, %struct.vnode* }
%struct.componentname = type { i32, i32, i32 }
%struct.vnode = type { i32 }
%struct.tmpfs_dirent = type { i32 }
%struct.tmpfs_node = type { i64, i32, i32 }

@HASBUF = common dso_local global i32 0, align 4
@TMPFS_LINK_MAX = common dso_local global i64 0, align 8
@EMLINK = common dso_local global i32 0, align 4
@IMMUTABLE = common dso_local global i32 0, align 4
@APPEND = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ISWHITEOUT = common dso_local global i32 0, align 4
@TMPFS_NODE_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_link_args*)* @tmpfs_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmpfs_link(%struct.vop_link_args* %0) #0 {
  %2 = alloca %struct.vop_link_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.componentname*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tmpfs_dirent*, align 8
  %8 = alloca %struct.tmpfs_node*, align 8
  store %struct.vop_link_args* %0, %struct.vop_link_args** %2, align 8
  %9 = load %struct.vop_link_args*, %struct.vop_link_args** %2, align 8
  %10 = getelementptr inbounds %struct.vop_link_args, %struct.vop_link_args* %9, i32 0, i32 2
  %11 = load %struct.vnode*, %struct.vnode** %10, align 8
  store %struct.vnode* %11, %struct.vnode** %3, align 8
  %12 = load %struct.vop_link_args*, %struct.vop_link_args** %2, align 8
  %13 = getelementptr inbounds %struct.vop_link_args, %struct.vop_link_args* %12, i32 0, i32 1
  %14 = load %struct.vnode*, %struct.vnode** %13, align 8
  store %struct.vnode* %14, %struct.vnode** %4, align 8
  %15 = load %struct.vop_link_args*, %struct.vop_link_args** %2, align 8
  %16 = getelementptr inbounds %struct.vop_link_args, %struct.vop_link_args* %15, i32 0, i32 0
  %17 = load %struct.componentname*, %struct.componentname** %16, align 8
  store %struct.componentname* %17, %struct.componentname** %5, align 8
  %18 = load %struct.vnode*, %struct.vnode** %3, align 8
  %19 = call i32 @VOP_ISLOCKED(%struct.vnode* %18)
  %20 = call i32 @MPASS(i32 %19)
  %21 = load %struct.componentname*, %struct.componentname** %5, align 8
  %22 = getelementptr inbounds %struct.componentname, %struct.componentname* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HASBUF, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @MPASS(i32 %25)
  %27 = load %struct.vnode*, %struct.vnode** %3, align 8
  %28 = load %struct.vnode*, %struct.vnode** %4, align 8
  %29 = icmp ne %struct.vnode* %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @MPASS(i32 %30)
  %32 = load %struct.vnode*, %struct.vnode** %4, align 8
  %33 = call %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode* %32)
  store %struct.tmpfs_node* %33, %struct.tmpfs_node** %8, align 8
  %34 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %35 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TMPFS_LINK_MAX, align 8
  %38 = icmp sle i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @MPASS(i32 %39)
  %41 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %42 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TMPFS_LINK_MAX, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %1
  %47 = load i32, i32* @EMLINK, align 4
  store i32 %47, i32* %6, align 4
  br label %97

48:                                               ; preds = %1
  %49 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %50 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @IMMUTABLE, align 4
  %53 = load i32, i32* @APPEND, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @EPERM, align 4
  store i32 %58, i32* %6, align 4
  br label %97

59:                                               ; preds = %48
  %60 = load %struct.vnode*, %struct.vnode** %4, align 8
  %61 = getelementptr inbounds %struct.vnode, %struct.vnode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @VFS_TO_TMPFS(i32 %62)
  %64 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %65 = load %struct.componentname*, %struct.componentname** %5, align 8
  %66 = getelementptr inbounds %struct.componentname, %struct.componentname* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.componentname*, %struct.componentname** %5, align 8
  %69 = getelementptr inbounds %struct.componentname, %struct.componentname* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @tmpfs_alloc_dirent(i32 %63, %struct.tmpfs_node* %64, i32 %67, i32 %70, %struct.tmpfs_dirent** %7)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %59
  br label %97

75:                                               ; preds = %59
  %76 = load %struct.componentname*, %struct.componentname** %5, align 8
  %77 = getelementptr inbounds %struct.componentname, %struct.componentname* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ISWHITEOUT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load %struct.vnode*, %struct.vnode** %3, align 8
  %84 = load %struct.componentname*, %struct.componentname** %5, align 8
  %85 = call i32 @tmpfs_dir_whiteout_remove(%struct.vnode* %83, %struct.componentname* %84)
  br label %86

86:                                               ; preds = %82, %75
  %87 = load %struct.vnode*, %struct.vnode** %3, align 8
  %88 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %7, align 8
  %89 = call i32 @tmpfs_dir_attach(%struct.vnode* %87, %struct.tmpfs_dirent* %88)
  %90 = load i32, i32* @TMPFS_NODE_CHANGED, align 4
  %91 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %92 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.vnode*, %struct.vnode** %4, align 8
  %96 = call i32 @tmpfs_update(%struct.vnode* %95)
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %86, %74, %57, %46
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode*) #1

declare dso_local i32 @tmpfs_alloc_dirent(i32, %struct.tmpfs_node*, i32, i32, %struct.tmpfs_dirent**) #1

declare dso_local i32 @VFS_TO_TMPFS(i32) #1

declare dso_local i32 @tmpfs_dir_whiteout_remove(%struct.vnode*, %struct.componentname*) #1

declare dso_local i32 @tmpfs_dir_attach(%struct.vnode*, %struct.tmpfs_dirent*) #1

declare dso_local i32 @tmpfs_update(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
