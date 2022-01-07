; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vfsops.c_msdosfs_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vfsops.c_msdosfs_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.vnode = type { i32 }
%struct.msdosfsmount = type { i32 }
%struct.denode = type { i32 }

@MSDOSFSROOT = common dso_local global i32 0, align 4
@MSDOSFSROOT_OFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i32, %struct.vnode**)* @msdosfs_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdosfs_root(%struct.mount* %0, i32 %1, %struct.vnode** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mount*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode**, align 8
  %8 = alloca %struct.msdosfsmount*, align 8
  %9 = alloca %struct.denode*, align 8
  %10 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.vnode** %2, %struct.vnode*** %7, align 8
  %11 = load %struct.mount*, %struct.mount** %5, align 8
  %12 = call %struct.msdosfsmount* @VFSTOMSDOSFS(%struct.mount* %11)
  store %struct.msdosfsmount* %12, %struct.msdosfsmount** %8, align 8
  %13 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %14 = load i32, i32* @MSDOSFSROOT, align 4
  %15 = load i32, i32* @MSDOSFSROOT_OFS, align 4
  %16 = call i32 @deget(%struct.msdosfsmount* %13, i32 %14, i32 %15, %struct.denode** %9)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %25

21:                                               ; preds = %3
  %22 = load %struct.denode*, %struct.denode** %9, align 8
  %23 = call %struct.vnode* @DETOV(%struct.denode* %22)
  %24 = load %struct.vnode**, %struct.vnode*** %7, align 8
  store %struct.vnode* %23, %struct.vnode** %24, align 8
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %21, %19
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local %struct.msdosfsmount* @VFSTOMSDOSFS(%struct.mount*) #1

declare dso_local i32 @deget(%struct.msdosfsmount*, i32, i32, %struct.denode**) #1

declare dso_local %struct.vnode* @DETOV(%struct.denode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
