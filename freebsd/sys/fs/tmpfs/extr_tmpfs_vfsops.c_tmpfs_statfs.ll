; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vfsops.c_tmpfs_statfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vfsops.c_tmpfs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.statfs = type { i64, i64, i64, i64, i64, i8*, i8* }
%struct.tmpfs_mount = type { i64, i64, i64 }

@PAGE_SIZE = common dso_local global i8* null, align 8
@ULONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, %struct.statfs*)* @tmpfs_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmpfs_statfs(%struct.mount* %0, %struct.statfs* %1) #0 {
  %3 = alloca %struct.mount*, align 8
  %4 = alloca %struct.statfs*, align 8
  %5 = alloca %struct.tmpfs_mount*, align 8
  %6 = alloca i64, align 8
  store %struct.mount* %0, %struct.mount** %3, align 8
  store %struct.statfs* %1, %struct.statfs** %4, align 8
  %7 = load %struct.mount*, %struct.mount** %3, align 8
  %8 = call %struct.tmpfs_mount* @VFS_TO_TMPFS(%struct.mount* %7)
  store %struct.tmpfs_mount* %8, %struct.tmpfs_mount** %5, align 8
  %9 = load i8*, i8** @PAGE_SIZE, align 8
  %10 = load %struct.statfs*, %struct.statfs** %4, align 8
  %11 = getelementptr inbounds %struct.statfs, %struct.statfs* %10, i32 0, i32 6
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** @PAGE_SIZE, align 8
  %13 = load %struct.statfs*, %struct.statfs** %4, align 8
  %14 = getelementptr inbounds %struct.statfs, %struct.statfs* %13, i32 0, i32 5
  store i8* %12, i8** %14, align 8
  %15 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %5, align 8
  %16 = call i64 @tmpfs_pages_used(%struct.tmpfs_mount* %15)
  store i64 %16, i64* %6, align 8
  %17 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %5, align 8
  %18 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ULONG_MAX, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %5, align 8
  %24 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.statfs*, %struct.statfs** %4, align 8
  %27 = getelementptr inbounds %struct.statfs, %struct.statfs* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %34

28:                                               ; preds = %2
  %29 = load i64, i64* %6, align 8
  %30 = call i64 (...) @tmpfs_mem_avail()
  %31 = add i64 %29, %30
  %32 = load %struct.statfs*, %struct.statfs** %4, align 8
  %33 = getelementptr inbounds %struct.statfs, %struct.statfs* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %28, %22
  %35 = load %struct.statfs*, %struct.statfs** %4, align 8
  %36 = getelementptr inbounds %struct.statfs, %struct.statfs* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ule i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.statfs*, %struct.statfs** %4, align 8
  %42 = getelementptr inbounds %struct.statfs, %struct.statfs* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  br label %51

43:                                               ; preds = %34
  %44 = load %struct.statfs*, %struct.statfs** %4, align 8
  %45 = getelementptr inbounds %struct.statfs, %struct.statfs* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = sub i64 %46, %47
  %49 = load %struct.statfs*, %struct.statfs** %4, align 8
  %50 = getelementptr inbounds %struct.statfs, %struct.statfs* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %43, %40
  %52 = load %struct.statfs*, %struct.statfs** %4, align 8
  %53 = getelementptr inbounds %struct.statfs, %struct.statfs* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.statfs*, %struct.statfs** %4, align 8
  %56 = getelementptr inbounds %struct.statfs, %struct.statfs* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %5, align 8
  %58 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %6, align 8
  %60 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %5, align 8
  %61 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.statfs*, %struct.statfs** %4, align 8
  %64 = getelementptr inbounds %struct.statfs, %struct.statfs* %63, i32 0, i32 3
  store i64 %62, i64* %64, align 8
  %65 = load %struct.statfs*, %struct.statfs** %4, align 8
  %66 = getelementptr inbounds %struct.statfs, %struct.statfs* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = icmp ule i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %51
  %71 = load %struct.statfs*, %struct.statfs** %4, align 8
  %72 = getelementptr inbounds %struct.statfs, %struct.statfs* %71, i32 0, i32 4
  store i64 0, i64* %72, align 8
  br label %81

73:                                               ; preds = %51
  %74 = load %struct.statfs*, %struct.statfs** %4, align 8
  %75 = getelementptr inbounds %struct.statfs, %struct.statfs* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = sub i64 %76, %77
  %79 = load %struct.statfs*, %struct.statfs** %4, align 8
  %80 = getelementptr inbounds %struct.statfs, %struct.statfs* %79, i32 0, i32 4
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %73, %70
  ret i32 0
}

declare dso_local %struct.tmpfs_mount* @VFS_TO_TMPFS(%struct.mount*) #1

declare dso_local i64 @tmpfs_pages_used(%struct.tmpfs_mount*) #1

declare dso_local i64 @tmpfs_mem_avail(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
