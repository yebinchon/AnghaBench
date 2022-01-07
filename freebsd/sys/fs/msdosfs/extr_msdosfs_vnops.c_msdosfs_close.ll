; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_close_args = type { %struct.vnode* }
%struct.vnode = type { i32 }
%struct.denode = type { i32 }
%struct.timespec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_close_args*)* @msdosfs_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdosfs_close(%struct.vop_close_args* %0) #0 {
  %2 = alloca %struct.vop_close_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.denode*, align 8
  %5 = alloca %struct.timespec, align 4
  store %struct.vop_close_args* %0, %struct.vop_close_args** %2, align 8
  %6 = load %struct.vop_close_args*, %struct.vop_close_args** %2, align 8
  %7 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %6, i32 0, i32 0
  %8 = load %struct.vnode*, %struct.vnode** %7, align 8
  store %struct.vnode* %8, %struct.vnode** %3, align 8
  %9 = load %struct.vnode*, %struct.vnode** %3, align 8
  %10 = call %struct.denode* @VTODE(%struct.vnode* %9)
  store %struct.denode* %10, %struct.denode** %4, align 8
  %11 = load %struct.vnode*, %struct.vnode** %3, align 8
  %12 = call i32 @VI_LOCK(%struct.vnode* %11)
  %13 = load %struct.vnode*, %struct.vnode** %3, align 8
  %14 = getelementptr inbounds %struct.vnode, %struct.vnode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = call i32 @vfs_timestamp(%struct.timespec* %5)
  %19 = load %struct.denode*, %struct.denode** %4, align 8
  %20 = call i32 @DETIMES(%struct.denode* %19, %struct.timespec* %5, %struct.timespec* %5, %struct.timespec* %5)
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.vnode*, %struct.vnode** %3, align 8
  %23 = call i32 @VI_UNLOCK(%struct.vnode* %22)
  ret i32 0
}

declare dso_local %struct.denode* @VTODE(%struct.vnode*) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @vfs_timestamp(%struct.timespec*) #1

declare dso_local i32 @DETIMES(%struct.denode*, %struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
