; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swapongeom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swapongeom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, i32, i32 }

@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VCHR = common dso_local global i64 0, align 8
@VI_DOOMED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*)* @swapongeom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swapongeom(%struct.vnode* %0) #0 {
  %2 = alloca %struct.vnode*, align 8
  %3 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %2, align 8
  %4 = load %struct.vnode*, %struct.vnode** %2, align 8
  %5 = load i32, i32* @LK_EXCLUSIVE, align 4
  %6 = load i32, i32* @LK_RETRY, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @vn_lock(%struct.vnode* %4, i32 %7)
  %9 = load %struct.vnode*, %struct.vnode** %2, align 8
  %10 = getelementptr inbounds %struct.vnode, %struct.vnode* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VCHR, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.vnode*, %struct.vnode** %2, align 8
  %16 = getelementptr inbounds %struct.vnode, %struct.vnode* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @VI_DOOMED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14, %1
  %22 = load i32, i32* @ENOENT, align 4
  store i32 %22, i32* %3, align 4
  br label %31

23:                                               ; preds = %14
  %24 = call i32 (...) @g_topology_lock()
  %25 = load %struct.vnode*, %struct.vnode** %2, align 8
  %26 = getelementptr inbounds %struct.vnode, %struct.vnode* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.vnode*, %struct.vnode** %2, align 8
  %29 = call i32 @swapongeom_locked(i32 %27, %struct.vnode* %28)
  store i32 %29, i32* %3, align 4
  %30 = call i32 (...) @g_topology_unlock()
  br label %31

31:                                               ; preds = %23, %21
  %32 = load %struct.vnode*, %struct.vnode** %2, align 8
  %33 = call i32 @VOP_UNLOCK(%struct.vnode* %32, i32 0)
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @swapongeom_locked(i32, %struct.vnode*) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
