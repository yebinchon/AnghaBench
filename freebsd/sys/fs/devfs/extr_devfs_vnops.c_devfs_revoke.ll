; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_revoke.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_revoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_revoke_args = type { i32, %struct.vnode* }
%struct.vnode = type { %struct.cdev* }
%struct.cdev = type { i32 }
%struct.cdev_priv = type { i64, i64, i32, i32, %struct.devfs_dirent** }
%struct.devfs_dirent = type { %struct.vnode* }

@REVOKEALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"devfs_revoke !REVOKEALL\00", align 1
@devfs_de_interlock = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_INTERLOCK = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@CDP_ACTIVE = common dso_local global i32 0, align 4
@cdevp_list = common dso_local global i32 0, align 4
@cdp_list = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_revoke_args*)* @devfs_revoke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_revoke(%struct.vop_revoke_args* %0) #0 {
  %2 = alloca %struct.vop_revoke_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.cdev_priv*, align 8
  %7 = alloca %struct.devfs_dirent*, align 8
  %8 = alloca i64, align 8
  store %struct.vop_revoke_args* %0, %struct.vop_revoke_args** %2, align 8
  %9 = load %struct.vop_revoke_args*, %struct.vop_revoke_args** %2, align 8
  %10 = getelementptr inbounds %struct.vop_revoke_args, %struct.vop_revoke_args* %9, i32 0, i32 1
  %11 = load %struct.vnode*, %struct.vnode** %10, align 8
  store %struct.vnode* %11, %struct.vnode** %3, align 8
  %12 = load %struct.vop_revoke_args*, %struct.vop_revoke_args** %2, align 8
  %13 = getelementptr inbounds %struct.vop_revoke_args, %struct.vop_revoke_args* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @REVOKEALL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.vnode*, %struct.vnode** %3, align 8
  %21 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 0
  %22 = load %struct.cdev*, %struct.cdev** %21, align 8
  store %struct.cdev* %22, %struct.cdev** %5, align 8
  %23 = load %struct.cdev*, %struct.cdev** %5, align 8
  %24 = call %struct.cdev_priv* @cdev2priv(%struct.cdev* %23)
  store %struct.cdev_priv* %24, %struct.cdev_priv** %6, align 8
  %25 = call i32 (...) @dev_lock()
  %26 = load %struct.cdev_priv*, %struct.cdev_priv** %6, align 8
  %27 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = call i32 (...) @dev_unlock()
  %31 = load %struct.vnode*, %struct.vnode** %3, align 8
  %32 = call i32 @vhold(%struct.vnode* %31)
  %33 = load %struct.vnode*, %struct.vnode** %3, align 8
  %34 = call i32 @vgone(%struct.vnode* %33)
  %35 = load %struct.vnode*, %struct.vnode** %3, align 8
  %36 = call i32 @vdrop(%struct.vnode* %35)
  %37 = load %struct.vnode*, %struct.vnode** %3, align 8
  %38 = call i32 @VOP_UNLOCK(%struct.vnode* %37, i32 0)
  br label %39

39:                                               ; preds = %77, %1
  br label %40

40:                                               ; preds = %94, %39
  %41 = call i32 @mtx_lock(i32* @devfs_de_interlock)
  %42 = call i32 (...) @dev_lock()
  store %struct.vnode* null, %struct.vnode** %4, align 8
  store i64 0, i64* %8, align 8
  br label %43

43:                                               ; preds = %88, %40
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.cdev_priv*, %struct.cdev_priv** %6, align 8
  %46 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ule i64 %44, %47
  br i1 %48, label %49, label %91

49:                                               ; preds = %43
  %50 = load %struct.cdev_priv*, %struct.cdev_priv** %6, align 8
  %51 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %50, i32 0, i32 4
  %52 = load %struct.devfs_dirent**, %struct.devfs_dirent*** %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds %struct.devfs_dirent*, %struct.devfs_dirent** %52, i64 %53
  %55 = load %struct.devfs_dirent*, %struct.devfs_dirent** %54, align 8
  store %struct.devfs_dirent* %55, %struct.devfs_dirent** %7, align 8
  %56 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %57 = icmp eq %struct.devfs_dirent* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %88

59:                                               ; preds = %49
  %60 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %61 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %60, i32 0, i32 0
  %62 = load %struct.vnode*, %struct.vnode** %61, align 8
  store %struct.vnode* %62, %struct.vnode** %4, align 8
  %63 = load %struct.vnode*, %struct.vnode** %4, align 8
  %64 = icmp ne %struct.vnode* %63, null
  br i1 %64, label %65, label %87

65:                                               ; preds = %59
  %66 = call i32 (...) @dev_unlock()
  %67 = load %struct.vnode*, %struct.vnode** %4, align 8
  %68 = call i32 @VI_LOCK(%struct.vnode* %67)
  %69 = call i32 @mtx_unlock(i32* @devfs_de_interlock)
  %70 = load %struct.vnode*, %struct.vnode** %4, align 8
  %71 = load i32, i32* @LK_EXCLUSIVE, align 4
  %72 = load i32, i32* @LK_INTERLOCK, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @curthread, align 4
  %75 = call i64 @vget(%struct.vnode* %70, i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  br label %39

78:                                               ; preds = %65
  %79 = load %struct.vnode*, %struct.vnode** %4, align 8
  %80 = call i32 @vhold(%struct.vnode* %79)
  %81 = load %struct.vnode*, %struct.vnode** %4, align 8
  %82 = call i32 @vgone(%struct.vnode* %81)
  %83 = load %struct.vnode*, %struct.vnode** %4, align 8
  %84 = call i32 @vdrop(%struct.vnode* %83)
  %85 = load %struct.vnode*, %struct.vnode** %4, align 8
  %86 = call i32 @vput(%struct.vnode* %85)
  br label %91

87:                                               ; preds = %59
  br label %88

88:                                               ; preds = %87, %58
  %89 = load i64, i64* %8, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %8, align 8
  br label %43

91:                                               ; preds = %78, %43
  %92 = load %struct.vnode*, %struct.vnode** %4, align 8
  %93 = icmp ne %struct.vnode* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %40

95:                                               ; preds = %91
  %96 = call i32 (...) @dev_unlock()
  %97 = call i32 @mtx_unlock(i32* @devfs_de_interlock)
  br label %98

98:                                               ; preds = %95
  %99 = call i32 (...) @dev_lock()
  %100 = load %struct.cdev_priv*, %struct.cdev_priv** %6, align 8
  %101 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, -1
  store i64 %103, i64* %101, align 8
  %104 = load %struct.cdev_priv*, %struct.cdev_priv** %6, align 8
  %105 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @CDP_ACTIVE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %123, label %110

110:                                              ; preds = %98
  %111 = load %struct.cdev_priv*, %struct.cdev_priv** %6, align 8
  %112 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load %struct.cdev_priv*, %struct.cdev_priv** %6, align 8
  %117 = load i32, i32* @cdp_list, align 4
  %118 = call i32 @TAILQ_REMOVE(i32* @cdevp_list, %struct.cdev_priv* %116, i32 %117)
  %119 = call i32 (...) @dev_unlock()
  %120 = load %struct.cdev_priv*, %struct.cdev_priv** %6, align 8
  %121 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %120, i32 0, i32 3
  %122 = call i32 @dev_rel(i32* %121)
  br label %125

123:                                              ; preds = %110, %98
  %124 = call i32 (...) @dev_unlock()
  br label %125

125:                                              ; preds = %123, %115
  %126 = load %struct.vnode*, %struct.vnode** %3, align 8
  %127 = load i32, i32* @LK_EXCLUSIVE, align 4
  %128 = load i32, i32* @LK_RETRY, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @vn_lock(%struct.vnode* %126, i32 %129)
  ret i32 0
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.cdev_priv* @cdev2priv(%struct.cdev*) #1

declare dso_local i32 @dev_lock(...) #1

declare dso_local i32 @dev_unlock(...) #1

declare dso_local i32 @vhold(%struct.vnode*) #1

declare dso_local i32 @vgone(%struct.vnode*) #1

declare dso_local i32 @vdrop(%struct.vnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @vget(%struct.vnode*, i32, i32) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.cdev_priv*, i32) #1

declare dso_local i32 @dev_rel(i32*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
