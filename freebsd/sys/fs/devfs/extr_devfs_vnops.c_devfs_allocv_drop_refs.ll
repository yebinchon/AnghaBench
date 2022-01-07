; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_allocv_drop_refs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_allocv_drop_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfs_mount = type { i32 }
%struct.devfs_dirent = type { i32 }

@DE_DOOMED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"DEVFS de dropped but not doomed\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"DEVFS mount struct freed before dirent\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.devfs_mount*, %struct.devfs_dirent*)* @devfs_allocv_drop_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_allocv_drop_refs(i32 %0, %struct.devfs_mount* %1, %struct.devfs_dirent* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devfs_mount*, align 8
  %6 = alloca %struct.devfs_dirent*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.devfs_mount* %1, %struct.devfs_mount** %5, align 8
  store %struct.devfs_dirent* %2, %struct.devfs_dirent** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %9 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @DE_DOOMED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %15

15:                                               ; preds = %14, %3
  %16 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %17 = call i64 @DEVFS_DE_DROP(%struct.devfs_dirent* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 1
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %25 = call i32 @devfs_dirent_free(%struct.devfs_dirent* %24)
  br label %26

26:                                               ; preds = %19, %15
  %27 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %28 = call i64 @DEVFS_DMP_DROP(%struct.devfs_mount* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 1
  %33 = zext i1 %32 to i32
  %34 = call i32 @KASSERT(i32 %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* %7, align 4
  %35 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %36 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %35, i32 0, i32 0
  %37 = call i32 @sx_xunlock(i32* %36)
  %38 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %39 = call i32 @devfs_unmount_final(%struct.devfs_mount* %38)
  br label %40

40:                                               ; preds = %30, %26
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 2
  br i1 %48, label %49, label %53

49:                                               ; preds = %46, %40
  %50 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %51 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %50, i32 0, i32 0
  %52 = call i32 @sx_unlock(i32* %51)
  br label %53

53:                                               ; preds = %49, %46, %43
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i64 @DEVFS_DE_DROP(%struct.devfs_dirent*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @devfs_dirent_free(%struct.devfs_dirent*) #1

declare dso_local i64 @DEVFS_DMP_DROP(%struct.devfs_mount*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @devfs_unmount_final(%struct.devfs_mount*) #1

declare dso_local i32 @sx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
