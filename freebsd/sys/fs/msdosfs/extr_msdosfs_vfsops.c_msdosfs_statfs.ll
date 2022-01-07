; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vfsops.c_msdosfs_statfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vfsops.c_msdosfs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.statfs = type { i64, i32, i32, i32, i64, i32, i32 }
%struct.msdosfsmount = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, %struct.statfs*)* @msdosfs_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdosfs_statfs(%struct.mount* %0, %struct.statfs* %1) #0 {
  %3 = alloca %struct.mount*, align 8
  %4 = alloca %struct.statfs*, align 8
  %5 = alloca %struct.msdosfsmount*, align 8
  store %struct.mount* %0, %struct.mount** %3, align 8
  store %struct.statfs* %1, %struct.statfs** %4, align 8
  %6 = load %struct.mount*, %struct.mount** %3, align 8
  %7 = call %struct.msdosfsmount* @VFSTOMSDOSFS(%struct.mount* %6)
  store %struct.msdosfsmount* %7, %struct.msdosfsmount** %5, align 8
  %8 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %9 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.statfs*, %struct.statfs** %4, align 8
  %12 = getelementptr inbounds %struct.statfs, %struct.statfs* %11, i32 0, i32 6
  store i32 %10, i32* %12, align 4
  %13 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %14 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.statfs*, %struct.statfs** %4, align 8
  %17 = getelementptr inbounds %struct.statfs, %struct.statfs* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  %18 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %19 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  %22 = load %struct.statfs*, %struct.statfs** %4, align 8
  %23 = getelementptr inbounds %struct.statfs, %struct.statfs* %22, i32 0, i32 4
  store i64 %21, i64* %23, align 8
  %24 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %25 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.statfs*, %struct.statfs** %4, align 8
  %28 = getelementptr inbounds %struct.statfs, %struct.statfs* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %30 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.statfs*, %struct.statfs** %4, align 8
  %33 = getelementptr inbounds %struct.statfs, %struct.statfs* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %35 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.statfs*, %struct.statfs** %4, align 8
  %38 = getelementptr inbounds %struct.statfs, %struct.statfs* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.statfs*, %struct.statfs** %4, align 8
  %40 = getelementptr inbounds %struct.statfs, %struct.statfs* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  ret i32 0
}

declare dso_local %struct.msdosfsmount* @VFSTOMSDOSFS(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
