; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_lookup_args = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.devfs_mount = type { i32 }

@ENOTDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_lookup_args*)* @devfs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_lookup(%struct.vop_lookup_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_lookup_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.devfs_mount*, align 8
  %6 = alloca i32, align 4
  store %struct.vop_lookup_args* %0, %struct.vop_lookup_args** %3, align 8
  %7 = load %struct.vop_lookup_args*, %struct.vop_lookup_args** %3, align 8
  %8 = getelementptr inbounds %struct.vop_lookup_args, %struct.vop_lookup_args* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = call i64 @devfs_populate_vp(%struct.TYPE_2__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOTDIR, align 4
  store i32 %13, i32* %2, align 4
  br label %31

14:                                               ; preds = %1
  %15 = load %struct.vop_lookup_args*, %struct.vop_lookup_args** %3, align 8
  %16 = getelementptr inbounds %struct.vop_lookup_args, %struct.vop_lookup_args* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.devfs_mount* @VFSTODEVFS(i32 %19)
  store %struct.devfs_mount* %20, %struct.devfs_mount** %5, align 8
  store i32 1, i32* %6, align 4
  %21 = load %struct.vop_lookup_args*, %struct.vop_lookup_args** %3, align 8
  %22 = call i32 @devfs_lookupx(%struct.vop_lookup_args* %21, i32* %6)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %27 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %26, i32 0, i32 0
  %28 = call i32 @sx_xunlock(i32* %27)
  br label %29

29:                                               ; preds = %25, %14
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %12
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @devfs_populate_vp(%struct.TYPE_2__*) #1

declare dso_local %struct.devfs_mount* @VFSTODEVFS(i32) #1

declare dso_local i32 @devfs_lookupx(%struct.vop_lookup_args*, i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
