; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vfsops.c_unionfs_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vfsops.c_unionfs_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.vnode = type { i32 }
%struct.unionfs_mount = type { %struct.vnode* }

@.str = private unnamed_addr constant [35 x i8] c"unionfs_root: rootvp=%p locked=%x\0A\00", align 1
@LK_TYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i32, %struct.vnode**)* @unionfs_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_root(%struct.mount* %0, i32 %1, %struct.vnode** %2) #0 {
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode**, align 8
  %7 = alloca %struct.unionfs_mount*, align 8
  %8 = alloca %struct.vnode*, align 8
  store %struct.mount* %0, %struct.mount** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.vnode** %2, %struct.vnode*** %6, align 8
  %9 = load %struct.mount*, %struct.mount** %4, align 8
  %10 = call %struct.unionfs_mount* @MOUNTTOUNIONFSMOUNT(%struct.mount* %9)
  store %struct.unionfs_mount* %10, %struct.unionfs_mount** %7, align 8
  %11 = load %struct.unionfs_mount*, %struct.unionfs_mount** %7, align 8
  %12 = getelementptr inbounds %struct.unionfs_mount, %struct.unionfs_mount* %11, i32 0, i32 0
  %13 = load %struct.vnode*, %struct.vnode** %12, align 8
  store %struct.vnode* %13, %struct.vnode** %8, align 8
  %14 = load %struct.vnode*, %struct.vnode** %8, align 8
  %15 = load %struct.vnode*, %struct.vnode** %8, align 8
  %16 = call i32 @VOP_ISLOCKED(%struct.vnode* %15)
  %17 = call i32 @UNIONFSDEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.vnode* %14, i32 %16)
  %18 = load %struct.vnode*, %struct.vnode** %8, align 8
  %19 = call i32 @vref(%struct.vnode* %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @LK_TYPE_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.vnode*, %struct.vnode** %8, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @vn_lock(%struct.vnode* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %3
  %29 = load %struct.vnode*, %struct.vnode** %8, align 8
  %30 = load %struct.vnode**, %struct.vnode*** %6, align 8
  store %struct.vnode* %29, %struct.vnode** %30, align 8
  ret i32 0
}

declare dso_local %struct.unionfs_mount* @MOUNTTOUNIONFSMOUNT(%struct.mount*) #1

declare dso_local i32 @UNIONFSDEBUG(i8*, %struct.vnode*, i32) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local i32 @vref(%struct.vnode*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
