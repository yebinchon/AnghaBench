; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vfsops.c_msdosfs_fhtovp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vfsops.c_msdosfs_fhtovp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.mount = type { i32 }
%struct.fid = type { i32 }
%struct.msdosfsmount = type { i32 }
%struct.defid = type { i32, i32 }
%struct.denode = type { i32 }

@NULLVP = common dso_local global %struct.vnode* null, align 8
@curthread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, %struct.fid*, i32, %struct.vnode**)* @msdosfs_fhtovp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdosfs_fhtovp(%struct.mount* %0, %struct.fid* %1, i32 %2, %struct.vnode** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mount*, align 8
  %7 = alloca %struct.fid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnode**, align 8
  %10 = alloca %struct.msdosfsmount*, align 8
  %11 = alloca %struct.defid*, align 8
  %12 = alloca %struct.denode*, align 8
  %13 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %6, align 8
  store %struct.fid* %1, %struct.fid** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.vnode** %3, %struct.vnode*** %9, align 8
  %14 = load %struct.mount*, %struct.mount** %6, align 8
  %15 = call %struct.msdosfsmount* @VFSTOMSDOSFS(%struct.mount* %14)
  store %struct.msdosfsmount* %15, %struct.msdosfsmount** %10, align 8
  %16 = load %struct.fid*, %struct.fid** %7, align 8
  %17 = bitcast %struct.fid* %16 to %struct.defid*
  store %struct.defid* %17, %struct.defid** %11, align 8
  %18 = load %struct.msdosfsmount*, %struct.msdosfsmount** %10, align 8
  %19 = load %struct.defid*, %struct.defid** %11, align 8
  %20 = getelementptr inbounds %struct.defid, %struct.defid* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.defid*, %struct.defid** %11, align 8
  %23 = getelementptr inbounds %struct.defid, %struct.defid* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @deget(%struct.msdosfsmount* %18, i32 %21, i32 %24, %struct.denode** %12)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %30 = load %struct.vnode**, %struct.vnode*** %9, align 8
  store %struct.vnode* %29, %struct.vnode** %30, align 8
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %5, align 4
  br label %43

32:                                               ; preds = %4
  %33 = load %struct.denode*, %struct.denode** %12, align 8
  %34 = call %struct.vnode* @DETOV(%struct.denode* %33)
  %35 = load %struct.vnode**, %struct.vnode*** %9, align 8
  store %struct.vnode* %34, %struct.vnode** %35, align 8
  %36 = load %struct.vnode**, %struct.vnode*** %9, align 8
  %37 = load %struct.vnode*, %struct.vnode** %36, align 8
  %38 = load %struct.denode*, %struct.denode** %12, align 8
  %39 = getelementptr inbounds %struct.denode, %struct.denode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @curthread, align 4
  %42 = call i32 @vnode_create_vobject(%struct.vnode* %37, i32 %40, i32 %41)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %32, %28
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.msdosfsmount* @VFSTOMSDOSFS(%struct.mount*) #1

declare dso_local i32 @deget(%struct.msdosfsmount*, i32, i32, %struct.denode**) #1

declare dso_local %struct.vnode* @DETOV(%struct.denode*) #1

declare dso_local i32 @vnode_create_vobject(%struct.vnode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
