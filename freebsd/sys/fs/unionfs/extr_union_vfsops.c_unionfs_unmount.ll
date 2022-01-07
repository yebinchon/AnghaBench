; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vfsops.c_unionfs_unmount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vfsops.c_unionfs_unmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32, i32* }
%struct.unionfs_mount = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"unionfs_unmount: mp = %p\0A\00", align 1
@MNT_FORCE = common dso_local global i32 0, align 4
@FORCECLOSE = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@M_UNIONFSMNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i32)* @unionfs_unmount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_unmount(%struct.mount* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.unionfs_mount*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.mount*, %struct.mount** %4, align 8
  %12 = bitcast %struct.mount* %11 to i8*
  %13 = call i32 @UNIONFSDEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load %struct.mount*, %struct.mount** %4, align 8
  %15 = call %struct.unionfs_mount* @MOUNTTOUNIONFSMOUNT(%struct.mount* %14)
  store %struct.unionfs_mount* %15, %struct.unionfs_mount** %6, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MNT_FORCE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @FORCECLOSE, align 4
  %22 = load i32, i32* %10, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %20, %2
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %39, %24
  %26 = load %struct.mount*, %struct.mount** %4, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @curthread, align 4
  %29 = call i32 @vflush(%struct.mount* %26, i32 1, i32 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.mount*, %struct.mount** %4, align 8
  %33 = getelementptr inbounds %struct.mount, %struct.mount* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %9, align 4
  br label %25

41:                                               ; preds = %38, %25
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %52

46:                                               ; preds = %41
  %47 = load %struct.unionfs_mount*, %struct.unionfs_mount** %6, align 8
  %48 = load i32, i32* @M_UNIONFSMNT, align 4
  %49 = call i32 @free(%struct.unionfs_mount* %47, i32 %48)
  %50 = load %struct.mount*, %struct.mount** %4, align 8
  %51 = getelementptr inbounds %struct.mount, %struct.mount* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %46, %44
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @UNIONFSDEBUG(i8*, i8*) #1

declare dso_local %struct.unionfs_mount* @MOUNTTOUNIONFSMOUNT(%struct.mount*) #1

declare dso_local i32 @vflush(%struct.mount*, i32, i32, i32) #1

declare dso_local i32 @free(%struct.unionfs_mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
