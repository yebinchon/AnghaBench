; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_suspend.c_ffs_susp_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_suspend.c_ffs_susp_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.mount = type { i32 }
%struct.ufsmount = type { i32, i32 }

@ffs_susp_lock = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VREAD = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_3__* null, align 8
@VS_SKIP_UNMOUNT = common dso_local global i32 0, align 4
@UM_WRITESUSPENDED = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*)* @ffs_susp_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_susp_suspend(%struct.mount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mount*, align 8
  %4 = alloca %struct.ufsmount*, align 8
  %5 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %3, align 8
  %6 = load i32, i32* @SA_XLOCKED, align 4
  %7 = call i32 @sx_assert(i32* @ffs_susp_lock, i32 %6)
  %8 = load %struct.mount*, %struct.mount** %3, align 8
  %9 = call i32 @ffs_own_mount(%struct.mount* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %2, align 4
  br label %65

13:                                               ; preds = %1
  %14 = load %struct.mount*, %struct.mount** %3, align 8
  %15 = call i64 @ffs_susp_suspended(%struct.mount* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @EBUSY, align 4
  store i32 %18, i32* %2, align 4
  br label %65

19:                                               ; preds = %13
  %20 = load %struct.mount*, %struct.mount** %3, align 8
  %21 = call %struct.ufsmount* @VFSTOUFS(%struct.mount* %20)
  store %struct.ufsmount* %21, %struct.ufsmount** %4, align 8
  %22 = load %struct.ufsmount*, %struct.ufsmount** %4, align 8
  %23 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @LK_EXCLUSIVE, align 4
  %26 = load i32, i32* @LK_RETRY, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @vn_lock(i32 %24, i32 %27)
  %29 = load %struct.ufsmount*, %struct.ufsmount** %4, align 8
  %30 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @VREAD, align 4
  %33 = load i32, i32* @VWRITE, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %39 = call i32 @VOP_ACCESS(i32 %31, i32 %34, i32 %37, %struct.TYPE_3__* %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.ufsmount*, %struct.ufsmount** %4, align 8
  %41 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @VOP_UNLOCK(i32 %42, i32 0)
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %19
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %65

48:                                               ; preds = %19
  %49 = load %struct.mount*, %struct.mount** %3, align 8
  %50 = load i32, i32* @VS_SKIP_UNMOUNT, align 4
  %51 = call i32 @vfs_write_suspend(%struct.mount* %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %65

55:                                               ; preds = %48
  %56 = load %struct.ufsmount*, %struct.ufsmount** %4, align 8
  %57 = call i32 @UFS_LOCK(%struct.ufsmount* %56)
  %58 = load i32, i32* @UM_WRITESUSPENDED, align 4
  %59 = load %struct.ufsmount*, %struct.ufsmount** %4, align 8
  %60 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.ufsmount*, %struct.ufsmount** %4, align 8
  %64 = call i32 @UFS_UNLOCK(%struct.ufsmount* %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %55, %53, %46, %17, %11
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @ffs_own_mount(%struct.mount*) #1

declare dso_local i64 @ffs_susp_suspended(%struct.mount*) #1

declare dso_local %struct.ufsmount* @VFSTOUFS(%struct.mount*) #1

declare dso_local i32 @vn_lock(i32, i32) #1

declare dso_local i32 @VOP_ACCESS(i32, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @VOP_UNLOCK(i32, i32) #1

declare dso_local i32 @vfs_write_suspend(%struct.mount*, i32) #1

declare dso_local i32 @UFS_LOCK(%struct.ufsmount*) #1

declare dso_local i32 @UFS_UNLOCK(%struct.ufsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
