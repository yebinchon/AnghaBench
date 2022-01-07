; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs.c_pfs_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs.c_pfs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfs_info = type { i32 }
%struct.mount = type { i32, %struct.statfs, %struct.pfs_info*, i32 }
%struct.statfs = type { i32, i32, i64, i64, i64, i8*, i8* }

@MNT_UPDATE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MNT_LOCAL = common dso_local global i32 0, align 4
@MNTK_NOMSYNC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfs_mount(%struct.pfs_info* %0, %struct.mount* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pfs_info*, align 8
  %5 = alloca %struct.mount*, align 8
  %6 = alloca %struct.statfs*, align 8
  store %struct.pfs_info* %0, %struct.pfs_info** %4, align 8
  store %struct.mount* %1, %struct.mount** %5, align 8
  %7 = load %struct.mount*, %struct.mount** %5, align 8
  %8 = getelementptr inbounds %struct.mount, %struct.mount* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MNT_UPDATE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %14, i32* %3, align 4
  br label %58

15:                                               ; preds = %2
  %16 = load %struct.mount*, %struct.mount** %5, align 8
  %17 = call i32 @MNT_ILOCK(%struct.mount* %16)
  %18 = load i32, i32* @MNT_LOCAL, align 4
  %19 = load %struct.mount*, %struct.mount** %5, align 8
  %20 = getelementptr inbounds %struct.mount, %struct.mount* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load i32, i32* @MNTK_NOMSYNC, align 4
  %24 = load %struct.mount*, %struct.mount** %5, align 8
  %25 = getelementptr inbounds %struct.mount, %struct.mount* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.mount*, %struct.mount** %5, align 8
  %29 = call i32 @MNT_IUNLOCK(%struct.mount* %28)
  %30 = load %struct.pfs_info*, %struct.pfs_info** %4, align 8
  %31 = load %struct.mount*, %struct.mount** %5, align 8
  %32 = getelementptr inbounds %struct.mount, %struct.mount* %31, i32 0, i32 2
  store %struct.pfs_info* %30, %struct.pfs_info** %32, align 8
  %33 = load %struct.mount*, %struct.mount** %5, align 8
  %34 = call i32 @vfs_getnewfsid(%struct.mount* %33)
  %35 = load %struct.mount*, %struct.mount** %5, align 8
  %36 = getelementptr inbounds %struct.mount, %struct.mount* %35, i32 0, i32 1
  store %struct.statfs* %36, %struct.statfs** %6, align 8
  %37 = load %struct.mount*, %struct.mount** %5, align 8
  %38 = load %struct.pfs_info*, %struct.pfs_info** %4, align 8
  %39 = getelementptr inbounds %struct.pfs_info, %struct.pfs_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @vfs_mountedfrom(%struct.mount* %37, i32 %40)
  %42 = load i8*, i8** @PAGE_SIZE, align 8
  %43 = load %struct.statfs*, %struct.statfs** %6, align 8
  %44 = getelementptr inbounds %struct.statfs, %struct.statfs* %43, i32 0, i32 6
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** @PAGE_SIZE, align 8
  %46 = load %struct.statfs*, %struct.statfs** %6, align 8
  %47 = getelementptr inbounds %struct.statfs, %struct.statfs* %46, i32 0, i32 5
  store i8* %45, i8** %47, align 8
  %48 = load %struct.statfs*, %struct.statfs** %6, align 8
  %49 = getelementptr inbounds %struct.statfs, %struct.statfs* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.statfs*, %struct.statfs** %6, align 8
  %51 = getelementptr inbounds %struct.statfs, %struct.statfs* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load %struct.statfs*, %struct.statfs** %6, align 8
  %53 = getelementptr inbounds %struct.statfs, %struct.statfs* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.statfs*, %struct.statfs** %6, align 8
  %55 = getelementptr inbounds %struct.statfs, %struct.statfs* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = load %struct.statfs*, %struct.statfs** %6, align 8
  %57 = getelementptr inbounds %struct.statfs, %struct.statfs* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %15, %13
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i32 @vfs_getnewfsid(%struct.mount*) #1

declare dso_local i32 @vfs_mountedfrom(%struct.mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
