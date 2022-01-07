; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_remove_args = type { %struct.vnode*, %struct.vnode* }
%struct.vnode = type { %struct.devfs_dirent*, i32 }
%struct.devfs_dirent = type { i32, %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.devfs_mount = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"devfs_remove\00", align 1
@de_list = common dso_local global i32 0, align 4
@DT_LNK = common dso_local global i64 0, align 8
@DE_COVERED = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@DE_WHITEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_remove_args*)* @devfs_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_remove(%struct.vop_remove_args* %0) #0 {
  %2 = alloca %struct.vop_remove_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.devfs_dirent*, align 8
  %6 = alloca %struct.devfs_dirent*, align 8
  %7 = alloca %struct.devfs_dirent*, align 8
  %8 = alloca %struct.devfs_mount*, align 8
  store %struct.vop_remove_args* %0, %struct.vop_remove_args** %2, align 8
  %9 = load %struct.vop_remove_args*, %struct.vop_remove_args** %2, align 8
  %10 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %9, i32 0, i32 0
  %11 = load %struct.vnode*, %struct.vnode** %10, align 8
  store %struct.vnode* %11, %struct.vnode** %3, align 8
  %12 = load %struct.vop_remove_args*, %struct.vop_remove_args** %2, align 8
  %13 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %12, i32 0, i32 1
  %14 = load %struct.vnode*, %struct.vnode** %13, align 8
  store %struct.vnode* %14, %struct.vnode** %4, align 8
  %15 = load %struct.vnode*, %struct.vnode** %4, align 8
  %16 = getelementptr inbounds %struct.vnode, %struct.vnode* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.devfs_mount* @VFSTODEVFS(i32 %17)
  store %struct.devfs_mount* %18, %struct.devfs_mount** %8, align 8
  %19 = load %struct.vnode*, %struct.vnode** %3, align 8
  %20 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.vnode*, %struct.vnode** %4, align 8
  %22 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.devfs_mount*, %struct.devfs_mount** %8, align 8
  %24 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %23, i32 0, i32 0
  %25 = call i32 @sx_xlock(i32* %24)
  %26 = load %struct.vop_remove_args*, %struct.vop_remove_args** %2, align 8
  %27 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %26, i32 0, i32 0
  %28 = load %struct.vnode*, %struct.vnode** %27, align 8
  %29 = getelementptr inbounds %struct.vnode, %struct.vnode* %28, i32 0, i32 0
  %30 = load %struct.devfs_dirent*, %struct.devfs_dirent** %29, align 8
  store %struct.devfs_dirent* %30, %struct.devfs_dirent** %5, align 8
  %31 = load %struct.vnode*, %struct.vnode** %4, align 8
  %32 = getelementptr inbounds %struct.vnode, %struct.vnode* %31, i32 0, i32 0
  %33 = load %struct.devfs_dirent*, %struct.devfs_dirent** %32, align 8
  store %struct.devfs_dirent* %33, %struct.devfs_dirent** %6, align 8
  %34 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %35 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %105

38:                                               ; preds = %1
  %39 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %40 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %39, i32 0, i32 2
  %41 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %42 = load i32, i32* @de_list, align 4
  %43 = call i32 @TAILQ_REMOVE(i32* %40, %struct.devfs_dirent* %41, i32 %42)
  %44 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %45 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DT_LNK, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %74

51:                                               ; preds = %38
  %52 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %53 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %54 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %59 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call %struct.devfs_dirent* @devfs_find(%struct.devfs_dirent* %52, i32 %57, i32 %62, i32 0)
  store %struct.devfs_dirent* %63, %struct.devfs_dirent** %7, align 8
  %64 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %65 = icmp ne %struct.devfs_dirent* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %51
  %67 = load i32, i32* @DE_COVERED, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %70 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %66, %51
  br label %74

74:                                               ; preds = %73, %38
  %75 = load %struct.vnode*, %struct.vnode** %4, align 8
  %76 = call i32 @VOP_UNLOCK(%struct.vnode* %75, i32 0)
  %77 = load %struct.vnode*, %struct.vnode** %3, align 8
  %78 = load %struct.vnode*, %struct.vnode** %4, align 8
  %79 = icmp ne %struct.vnode* %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load %struct.vnode*, %struct.vnode** %3, align 8
  %82 = call i32 @VOP_UNLOCK(%struct.vnode* %81, i32 0)
  br label %83

83:                                               ; preds = %80, %74
  %84 = load %struct.devfs_mount*, %struct.devfs_mount** %8, align 8
  %85 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %86 = call i32 @devfs_delete(%struct.devfs_mount* %84, %struct.devfs_dirent* %85, i32 0)
  %87 = load %struct.devfs_mount*, %struct.devfs_mount** %8, align 8
  %88 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %87, i32 0, i32 0
  %89 = call i32 @sx_xunlock(i32* %88)
  %90 = load %struct.vnode*, %struct.vnode** %3, align 8
  %91 = load %struct.vnode*, %struct.vnode** %4, align 8
  %92 = icmp ne %struct.vnode* %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %83
  %94 = load %struct.vnode*, %struct.vnode** %3, align 8
  %95 = load i32, i32* @LK_EXCLUSIVE, align 4
  %96 = load i32, i32* @LK_RETRY, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @vn_lock(%struct.vnode* %94, i32 %97)
  br label %99

99:                                               ; preds = %93, %83
  %100 = load %struct.vnode*, %struct.vnode** %4, align 8
  %101 = load i32, i32* @LK_EXCLUSIVE, align 4
  %102 = load i32, i32* @LK_RETRY, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @vn_lock(%struct.vnode* %100, i32 %103)
  br label %114

105:                                              ; preds = %1
  %106 = load i32, i32* @DE_WHITEOUT, align 4
  %107 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %108 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load %struct.devfs_mount*, %struct.devfs_mount** %8, align 8
  %112 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %111, i32 0, i32 0
  %113 = call i32 @sx_xunlock(i32* %112)
  br label %114

114:                                              ; preds = %105, %99
  ret i32 0
}

declare dso_local %struct.devfs_mount* @VFSTODEVFS(i32) #1

declare dso_local i32 @ASSERT_VOP_ELOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.devfs_dirent*, i32) #1

declare dso_local %struct.devfs_dirent* @devfs_find(%struct.devfs_dirent*, i32, i32, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @devfs_delete(%struct.devfs_mount*, %struct.devfs_dirent*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
