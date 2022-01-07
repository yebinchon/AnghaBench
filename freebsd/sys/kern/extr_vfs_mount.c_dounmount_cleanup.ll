; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c_dounmount_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c_dounmount_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.vnode = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@MNTK_MWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mount*, %struct.vnode*, i32)* @dounmount_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dounmount_cleanup(%struct.mount* %0, %struct.vnode* %1, i32 %2) #0 {
  %4 = alloca %struct.mount*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %4, align 8
  store %struct.vnode* %1, %struct.vnode** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mount*, %struct.mount** %4, align 8
  %8 = call i32 @MNT_MTX(%struct.mount* %7)
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @mtx_assert(i32 %8, i32 %9)
  %11 = load i32, i32* %6, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.mount*, %struct.mount** %4, align 8
  %14 = getelementptr inbounds %struct.mount, %struct.mount* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.mount*, %struct.mount** %4, align 8
  %18 = getelementptr inbounds %struct.mount, %struct.mount* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MNTK_MWAIT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load i32, i32* @MNTK_MWAIT, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.mount*, %struct.mount** %4, align 8
  %27 = getelementptr inbounds %struct.mount, %struct.mount* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.mount*, %struct.mount** %4, align 8
  %31 = call i32 @wakeup(%struct.mount* %30)
  br label %32

32:                                               ; preds = %23, %3
  %33 = load %struct.mount*, %struct.mount** %4, align 8
  %34 = call i32 @vfs_op_exit_locked(%struct.mount* %33)
  %35 = load %struct.mount*, %struct.mount** %4, align 8
  %36 = call i32 @MNT_IUNLOCK(%struct.mount* %35)
  %37 = load %struct.vnode*, %struct.vnode** %5, align 8
  %38 = icmp ne %struct.vnode* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.vnode*, %struct.vnode** %5, align 8
  %41 = call i32 @VOP_UNLOCK(%struct.vnode* %40, i32 0)
  %42 = load %struct.vnode*, %struct.vnode** %5, align 8
  %43 = call i32 @vdrop(%struct.vnode* %42)
  br label %44

44:                                               ; preds = %39, %32
  %45 = load %struct.mount*, %struct.mount** %4, align 8
  %46 = call i32 @vn_finished_write(%struct.mount* %45)
  ret void
}

declare dso_local i32 @mtx_assert(i32, i32) #1

declare dso_local i32 @MNT_MTX(%struct.mount*) #1

declare dso_local i32 @wakeup(%struct.mount*) #1

declare dso_local i32 @vfs_op_exit_locked(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vdrop(%struct.vnode*) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
