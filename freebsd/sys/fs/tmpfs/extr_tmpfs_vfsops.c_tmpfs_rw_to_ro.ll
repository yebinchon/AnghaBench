; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vfsops.c_tmpfs_rw_to_ro.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vfsops.c_tmpfs_rw_to_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MNT_FORCE = common dso_local global i32 0, align 4
@WRITECLOSE = common dso_local global i32 0, align 4
@FORCECLOSE = common dso_local global i32 0, align 4
@V_WAIT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@tmpfs_revoke_rw_maps_cb = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*)* @tmpfs_rw_to_ro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmpfs_rw_to_ro(%struct.mount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mount*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %3, align 8
  %7 = load %struct.mount*, %struct.mount** %3, align 8
  %8 = getelementptr inbounds %struct.mount, %struct.mount* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MNT_FORCE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @WRITECLOSE, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @FORCECLOSE, align 4
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  %22 = or i32 %14, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @V_WAIT, align 4
  %24 = call i32 @vn_start_write(i32* null, %struct.mount** %3, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %94

28:                                               ; preds = %20
  %29 = load %struct.mount*, %struct.mount** %3, align 8
  %30 = call i32 @vfs_write_suspend_umnt(%struct.mount* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %94

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load %struct.mount*, %struct.mount** %3, align 8
  %40 = call i64 @tmpfs_check_rw_maps(%struct.mount* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @EBUSY, align 4
  store i32 %43, i32* %4, align 4
  br label %90

44:                                               ; preds = %38, %35
  %45 = load %struct.mount*, %struct.mount** %3, align 8
  %46 = call %struct.TYPE_2__* @VFS_TO_TMPFS(%struct.mount* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load %struct.mount*, %struct.mount** %3, align 8
  %49 = call i32 @MNT_ILOCK(%struct.mount* %48)
  %50 = load i32, i32* @MNT_RDONLY, align 4
  %51 = load %struct.mount*, %struct.mount** %3, align 8
  %52 = getelementptr inbounds %struct.mount, %struct.mount* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.mount*, %struct.mount** %3, align 8
  %56 = call i32 @MNT_IUNLOCK(%struct.mount* %55)
  br label %57

57:                                               ; preds = %88, %44
  %58 = load %struct.mount*, %struct.mount** %3, align 8
  %59 = load i32, i32* @tmpfs_revoke_rw_maps_cb, align 4
  %60 = call i32 @tmpfs_all_rw_maps(%struct.mount* %58, i32 %59, i32* null)
  %61 = load %struct.mount*, %struct.mount** %3, align 8
  %62 = call i32 @tmpfs_update_mtime(%struct.mount* %61, i32 0)
  %63 = load %struct.mount*, %struct.mount** %3, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @curthread, align 4
  %66 = call i32 @vflush(%struct.mount* %63, i32 0, i32 %64, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %57
  %70 = load %struct.mount*, %struct.mount** %3, align 8
  %71 = call %struct.TYPE_2__* @VFS_TO_TMPFS(%struct.mount* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 0, i32* %72, align 4
  %73 = load %struct.mount*, %struct.mount** %3, align 8
  %74 = call i32 @MNT_ILOCK(%struct.mount* %73)
  %75 = load i32, i32* @MNT_RDONLY, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.mount*, %struct.mount** %3, align 8
  %78 = getelementptr inbounds %struct.mount, %struct.mount* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load %struct.mount*, %struct.mount** %3, align 8
  %82 = call i32 @MNT_IUNLOCK(%struct.mount* %81)
  br label %90

83:                                               ; preds = %57
  %84 = load %struct.mount*, %struct.mount** %3, align 8
  %85 = call i64 @tmpfs_check_rw_maps(%struct.mount* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  br label %89

88:                                               ; preds = %83
  br label %57

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %89, %69, %42
  %91 = load %struct.mount*, %struct.mount** %3, align 8
  %92 = call i32 @vfs_write_resume(%struct.mount* %91, i32 0)
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %90, %33, %26
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @vn_start_write(i32*, %struct.mount**, i32) #1

declare dso_local i32 @vfs_write_suspend_umnt(%struct.mount*) #1

declare dso_local i64 @tmpfs_check_rw_maps(%struct.mount*) #1

declare dso_local %struct.TYPE_2__* @VFS_TO_TMPFS(%struct.mount*) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i32 @tmpfs_all_rw_maps(%struct.mount*, i32, i32*) #1

declare dso_local i32 @tmpfs_update_mtime(%struct.mount*, i32) #1

declare dso_local i32 @vflush(%struct.mount*, i32, i32, i32) #1

declare dso_local i32 @vfs_write_resume(%struct.mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
