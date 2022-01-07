; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_populate_vp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_populate_vp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32, %struct.devfs_dirent*, i32 }
%struct.devfs_dirent = type { i32 }
%struct.devfs_mount = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"devfs_populate_vp\00", align 1
@LK_RETRY = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@VI_DOOMED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"devfs_populate_vp: vp->v_data == NULL but vnode not doomed\00", align 1
@DE_DOOMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*)* @devfs_populate_vp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_populate_vp(%struct.vnode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.devfs_dirent*, align 8
  %5 = alloca %struct.devfs_mount*, align 8
  %6 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  %7 = load %struct.vnode*, %struct.vnode** %3, align 8
  %8 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.vnode*, %struct.vnode** %3, align 8
  %10 = getelementptr inbounds %struct.vnode, %struct.vnode* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.devfs_mount* @VFSTODEVFS(i32 %11)
  store %struct.devfs_mount* %12, %struct.devfs_mount** %5, align 8
  %13 = load %struct.vnode*, %struct.vnode** %3, align 8
  %14 = call i32 @VOP_ISLOCKED(%struct.vnode* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %16 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %15, i32 0, i32 0
  %17 = call i32 @sx_xlock(i32* %16)
  %18 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %19 = call i32 @DEVFS_DMP_HOLD(%struct.devfs_mount* %18)
  %20 = load %struct.vnode*, %struct.vnode** %3, align 8
  %21 = call i32 @VOP_UNLOCK(%struct.vnode* %20, i32 0)
  %22 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %23 = call i32 @devfs_populate(%struct.devfs_mount* %22)
  %24 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %25 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %24, i32 0, i32 0
  %26 = call i32 @sx_xunlock(i32* %25)
  %27 = load %struct.vnode*, %struct.vnode** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @LK_RETRY, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @vn_lock(%struct.vnode* %27, i32 %30)
  %32 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %33 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %32, i32 0, i32 0
  %34 = call i32 @sx_xlock(i32* %33)
  %35 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %36 = call i64 @DEVFS_DMP_DROP(%struct.devfs_mount* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %1
  %39 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %40 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %39, i32 0, i32 0
  %41 = call i32 @sx_xunlock(i32* %40)
  %42 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %43 = call i32 @devfs_unmount_final(%struct.devfs_mount* %42)
  %44 = load i32, i32* @ERESTART, align 4
  store i32 %44, i32* %2, align 4
  br label %77

45:                                               ; preds = %1
  %46 = load %struct.vnode*, %struct.vnode** %3, align 8
  %47 = getelementptr inbounds %struct.vnode, %struct.vnode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @VI_DOOMED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %54 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %53, i32 0, i32 0
  %55 = call i32 @sx_xunlock(i32* %54)
  %56 = load i32, i32* @ERESTART, align 4
  store i32 %56, i32* %2, align 4
  br label %77

57:                                               ; preds = %45
  %58 = load %struct.vnode*, %struct.vnode** %3, align 8
  %59 = getelementptr inbounds %struct.vnode, %struct.vnode* %58, i32 0, i32 1
  %60 = load %struct.devfs_dirent*, %struct.devfs_dirent** %59, align 8
  store %struct.devfs_dirent* %60, %struct.devfs_dirent** %4, align 8
  %61 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %62 = icmp ne %struct.devfs_dirent* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i32 @KASSERT(i32 %63, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %66 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @DE_DOOMED, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %57
  %72 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %73 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %72, i32 0, i32 0
  %74 = call i32 @sx_xunlock(i32* %73)
  %75 = load i32, i32* @ERESTART, align 4
  store i32 %75, i32* %2, align 4
  br label %77

76:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %71, %52, %38
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local %struct.devfs_mount* @VFSTODEVFS(i32) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @DEVFS_DMP_HOLD(%struct.devfs_mount*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @devfs_populate(%struct.devfs_mount*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i64 @DEVFS_DMP_DROP(%struct.devfs_mount*) #1

declare dso_local i32 @devfs_unmount_final(%struct.devfs_mount*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
