; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_do_vn_io_fault.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_do_vn_io_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, %struct.mount* }
%struct.mount = type { i32 }
%struct.uio = type { i64 }

@UIO_USERSPACE = common dso_local global i64 0, align 8
@VREG = common dso_local global i64 0, align 8
@MNTK_NO_IOPF = common dso_local global i32 0, align 4
@vn_io_fault_enable = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.uio*)* @do_vn_io_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_vn_io_fault(%struct.vnode* %0, %struct.uio* %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.uio*, align 8
  %5 = alloca %struct.mount*, align 8
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store %struct.uio* %1, %struct.uio** %4, align 8
  %6 = load %struct.uio*, %struct.uio** %4, align 8
  %7 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @UIO_USERSPACE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = load %struct.vnode*, %struct.vnode** %3, align 8
  %13 = getelementptr inbounds %struct.vnode, %struct.vnode* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VREG, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load %struct.vnode*, %struct.vnode** %3, align 8
  %19 = getelementptr inbounds %struct.vnode, %struct.vnode* %18, i32 0, i32 1
  %20 = load %struct.mount*, %struct.mount** %19, align 8
  store %struct.mount* %20, %struct.mount** %5, align 8
  %21 = icmp ne %struct.mount* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load %struct.mount*, %struct.mount** %5, align 8
  %24 = getelementptr inbounds %struct.mount, %struct.mount* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MNTK_NO_IOPF, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i64, i64* @vn_io_fault_enable, align 8
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %29, %22, %17, %11, %2
  %33 = phi i1 [ false, %22 ], [ false, %17 ], [ false, %11 ], [ false, %2 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
