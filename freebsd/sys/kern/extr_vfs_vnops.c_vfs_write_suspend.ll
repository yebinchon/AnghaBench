; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vfs_write_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vfs_write_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i64, i32, i64, i64 }

@curthread = common dso_local global i64 0, align 8
@EALREADY = common dso_local global i32 0, align 4
@MNTK_SUSPEND = common dso_local global i32 0, align 4
@PUSER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"wsuspfs\00", align 1
@VS_SKIP_UNMOUNT = common dso_local global i32 0, align 4
@MNTK_UNMOUNT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"suspwt\00", align 1
@MNT_SUSPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_write_suspend(%struct.mount* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mount*, %struct.mount** %4, align 8
  %8 = call i32 @vn_suspendable(%struct.mount* %7)
  %9 = call i32 @MPASS(i32 %8)
  %10 = load %struct.mount*, %struct.mount** %4, align 8
  %11 = call i32 @vfs_op_enter(%struct.mount* %10)
  %12 = load %struct.mount*, %struct.mount** %4, align 8
  %13 = call i32 @MNT_ILOCK(%struct.mount* %12)
  %14 = load %struct.mount*, %struct.mount** %4, align 8
  %15 = call i32 @vfs_assert_mount_counters(%struct.mount* %14)
  %16 = load %struct.mount*, %struct.mount** %4, align 8
  %17 = getelementptr inbounds %struct.mount, %struct.mount* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @curthread, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.mount*, %struct.mount** %4, align 8
  %23 = call i32 @vfs_op_exit_locked(%struct.mount* %22)
  %24 = load %struct.mount*, %struct.mount** %4, align 8
  %25 = call i32 @MNT_IUNLOCK(%struct.mount* %24)
  %26 = load i32, i32* @EALREADY, align 4
  store i32 %26, i32* %3, align 4
  br label %99

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %35, %27
  %29 = load %struct.mount*, %struct.mount** %4, align 8
  %30 = getelementptr inbounds %struct.mount, %struct.mount* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @MNTK_SUSPEND, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.mount*, %struct.mount** %4, align 8
  %37 = getelementptr inbounds %struct.mount, %struct.mount* %36, i32 0, i32 2
  %38 = load %struct.mount*, %struct.mount** %4, align 8
  %39 = call i32 @MNT_MTX(%struct.mount* %38)
  %40 = load i32, i32* @PUSER, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call i32 @msleep(i64* %37, i32 %39, i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %28

43:                                               ; preds = %28
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @VS_SKIP_UNMOUNT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load %struct.mount*, %struct.mount** %4, align 8
  %50 = getelementptr inbounds %struct.mount, %struct.mount* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MNTK_UNMOUNT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load %struct.mount*, %struct.mount** %4, align 8
  %57 = call i32 @vfs_op_exit_locked(%struct.mount* %56)
  %58 = load %struct.mount*, %struct.mount** %4, align 8
  %59 = call i32 @MNT_IUNLOCK(%struct.mount* %58)
  %60 = load i32, i32* @EBUSY, align 4
  store i32 %60, i32* %3, align 4
  br label %99

61:                                               ; preds = %48, %43
  %62 = load i32, i32* @MNTK_SUSPEND, align 4
  %63 = load %struct.mount*, %struct.mount** %4, align 8
  %64 = getelementptr inbounds %struct.mount, %struct.mount* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load i64, i64* @curthread, align 8
  %68 = load %struct.mount*, %struct.mount** %4, align 8
  %69 = getelementptr inbounds %struct.mount, %struct.mount* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.mount*, %struct.mount** %4, align 8
  %71 = getelementptr inbounds %struct.mount, %struct.mount* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %61
  %75 = load %struct.mount*, %struct.mount** %4, align 8
  %76 = getelementptr inbounds %struct.mount, %struct.mount* %75, i32 0, i32 3
  %77 = load %struct.mount*, %struct.mount** %4, align 8
  %78 = call i32 @MNT_MTX(%struct.mount* %77)
  %79 = load i32, i32* @PUSER, align 4
  %80 = sub nsw i32 %79, 1
  %81 = load i32, i32* @PDROP, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @msleep(i64* %76, i32 %78, i32 %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %87

84:                                               ; preds = %61
  %85 = load %struct.mount*, %struct.mount** %4, align 8
  %86 = call i32 @MNT_IUNLOCK(%struct.mount* %85)
  br label %87

87:                                               ; preds = %84, %74
  %88 = load %struct.mount*, %struct.mount** %4, align 8
  %89 = load i32, i32* @MNT_SUSPEND, align 4
  %90 = call i32 @VFS_SYNC(%struct.mount* %88, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.mount*, %struct.mount** %4, align 8
  %94 = call i32 @vfs_write_resume(%struct.mount* %93, i32 0)
  %95 = load %struct.mount*, %struct.mount** %4, align 8
  %96 = call i32 @vfs_op_exit(%struct.mount* %95)
  br label %97

97:                                               ; preds = %92, %87
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %55, %21
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @vn_suspendable(%struct.mount*) #1

declare dso_local i32 @vfs_op_enter(%struct.mount*) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @vfs_assert_mount_counters(%struct.mount*) #1

declare dso_local i32 @vfs_op_exit_locked(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i32 @msleep(i64*, i32, i32, i8*, i32) #1

declare dso_local i32 @MNT_MTX(%struct.mount*) #1

declare dso_local i32 @VFS_SYNC(%struct.mount*, i32) #1

declare dso_local i32 @vfs_write_resume(%struct.mount*, i32) #1

declare dso_local i32 @vfs_op_exit(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
