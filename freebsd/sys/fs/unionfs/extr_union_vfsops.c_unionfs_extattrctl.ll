; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vfsops.c_unionfs_extattrctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vfsops.c_unionfs_extattrctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.vnode = type { i32 }
%struct.unionfs_mount = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.unionfs_node = type { i64, i64 }

@NULLVP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i32, %struct.vnode*, i32, i8*)* @unionfs_extattrctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_extattrctl(%struct.mount* %0, i32 %1, %struct.vnode* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mount*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.unionfs_mount*, align 8
  %13 = alloca %struct.unionfs_node*, align 8
  store %struct.mount* %0, %struct.mount** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.vnode* %2, %struct.vnode** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load %struct.mount*, %struct.mount** %7, align 8
  %15 = call %struct.unionfs_mount* @MOUNTTOUNIONFSMOUNT(%struct.mount* %14)
  store %struct.unionfs_mount* %15, %struct.unionfs_mount** %12, align 8
  %16 = load %struct.vnode*, %struct.vnode** %9, align 8
  %17 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %16)
  store %struct.unionfs_node* %17, %struct.unionfs_node** %13, align 8
  %18 = load %struct.unionfs_node*, %struct.unionfs_node** %13, align 8
  %19 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NULLVP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %5
  %24 = load %struct.unionfs_mount*, %struct.unionfs_mount** %12, align 8
  %25 = getelementptr inbounds %struct.unionfs_mount, %struct.unionfs_mount* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.unionfs_node*, %struct.unionfs_node** %13, align 8
  %31 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @VFS_EXTATTRCTL(i32 %28, i32 %29, i64 %32, i32 %33, i8* %34)
  store i32 %35, i32* %6, align 4
  br label %49

36:                                               ; preds = %5
  %37 = load %struct.unionfs_mount*, %struct.unionfs_mount** %12, align 8
  %38 = getelementptr inbounds %struct.unionfs_mount, %struct.unionfs_mount* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.unionfs_node*, %struct.unionfs_node** %13, align 8
  %44 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @VFS_EXTATTRCTL(i32 %41, i32 %42, i64 %45, i32 %46, i8* %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %36, %23
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local %struct.unionfs_mount* @MOUNTTOUNIONFSMOUNT(%struct.mount*) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(%struct.vnode*) #1

declare dso_local i32 @VFS_EXTATTRCTL(i32, i32, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
