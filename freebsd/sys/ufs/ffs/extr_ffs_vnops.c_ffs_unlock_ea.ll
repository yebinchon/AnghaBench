; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vnops.c_ffs_unlock_ea.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vnops.c_ffs_unlock_ea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.inode = type { i32, i32 }

@IN_EA_LOCKWAIT = common dso_local global i32 0, align 4
@IN_EA_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnode*)* @ffs_unlock_ea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffs_unlock_ea(%struct.vnode* %0) #0 {
  %2 = alloca %struct.vnode*, align 8
  %3 = alloca %struct.inode*, align 8
  store %struct.vnode* %0, %struct.vnode** %2, align 8
  %4 = load %struct.vnode*, %struct.vnode** %2, align 8
  %5 = call %struct.inode* @VTOI(%struct.vnode* %4)
  store %struct.inode* %5, %struct.inode** %3, align 8
  %6 = load %struct.vnode*, %struct.vnode** %2, align 8
  %7 = call i32 @VI_LOCK(%struct.vnode* %6)
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IN_EA_LOCKWAIT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 1
  %17 = call i32 @wakeup(i32* %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i32, i32* @IN_EA_LOCKED, align 4
  %20 = load i32, i32* @IN_EA_LOCKWAIT, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.vnode*, %struct.vnode** %2, align 8
  %28 = call i32 @VI_UNLOCK(%struct.vnode* %27)
  ret void
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
