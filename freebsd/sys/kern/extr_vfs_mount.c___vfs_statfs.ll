; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c___vfs_statfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c___vfs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }
%struct.statfs = type { i32, i32, i32 }

@STATFS_VERSION = common dso_local global i32 0, align 4
@NAME_MAX = common dso_local global i32 0, align 4
@MNT_VISFLAGMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__vfs_statfs(%struct.mount* %0, %struct.statfs* %1) #0 {
  %3 = alloca %struct.mount*, align 8
  %4 = alloca %struct.statfs*, align 8
  store %struct.mount* %0, %struct.mount** %3, align 8
  store %struct.statfs* %1, %struct.statfs** %4, align 8
  %5 = load %struct.statfs*, %struct.statfs** %4, align 8
  %6 = load %struct.mount*, %struct.mount** %3, align 8
  %7 = getelementptr inbounds %struct.mount, %struct.mount* %6, i32 0, i32 2
  %8 = call i32 @memcpy(%struct.statfs* %5, i32* %7, i32 12)
  %9 = load i32, i32* @STATFS_VERSION, align 4
  %10 = load %struct.statfs*, %struct.statfs** %4, align 8
  %11 = getelementptr inbounds %struct.statfs, %struct.statfs* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @NAME_MAX, align 4
  %13 = load %struct.statfs*, %struct.statfs** %4, align 8
  %14 = getelementptr inbounds %struct.statfs, %struct.statfs* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.mount*, %struct.mount** %3, align 8
  %16 = getelementptr inbounds %struct.mount, %struct.mount* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MNT_VISFLAGMASK, align 4
  %19 = and i32 %17, %18
  %20 = load %struct.statfs*, %struct.statfs** %4, align 8
  %21 = getelementptr inbounds %struct.statfs, %struct.statfs* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.mount*, %struct.mount** %3, align 8
  %23 = getelementptr inbounds %struct.mount, %struct.mount* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (%struct.mount*, %struct.statfs*)**
  %27 = load i32 (%struct.mount*, %struct.statfs*)*, i32 (%struct.mount*, %struct.statfs*)** %26, align 8
  %28 = load %struct.mount*, %struct.mount** %3, align 8
  %29 = load %struct.statfs*, %struct.statfs** %4, align 8
  %30 = call i32 %27(%struct.mount* %28, %struct.statfs* %29)
  ret i32 %30
}

declare dso_local i32 @memcpy(%struct.statfs*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
