; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib_clone.c_iflib_clone_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib_clone.c_iflib_clone_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sx = type { i32 }

@Giant = common dso_local global i32 0, align 4
@iflib_pseudodev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @iflib_clone_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iflib_clone_destroy(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sx*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @if_getsoftc(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @iflib_get_dev(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.sx* @iflib_ctx_lock_get(i32 %11)
  store %struct.sx* %12, %struct.sx** %5, align 8
  %13 = load %struct.sx*, %struct.sx** %5, align 8
  %14 = call i32 @sx_xlock(%struct.sx* %13)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @iflib_set_detach(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @iflib_stop(i32 %17)
  %19 = load %struct.sx*, %struct.sx** %5, align 8
  %20 = call i32 @sx_xunlock(%struct.sx* %19)
  %21 = call i32 @mtx_lock(i32* @Giant)
  %22 = load i32, i32* @iflib_pseudodev, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @device_delete_child(i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = call i32 @mtx_unlock(i32* @Giant)
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @iflib_pseudo_deregister(i32 %29)
  br label %31

31:                                               ; preds = %28, %1
  ret void
}

declare dso_local i32 @if_getsoftc(i32) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local %struct.sx* @iflib_ctx_lock_get(i32) #1

declare dso_local i32 @sx_xlock(%struct.sx*) #1

declare dso_local i32 @iflib_set_detach(i32) #1

declare dso_local i32 @iflib_stop(i32) #1

declare dso_local i32 @sx_xunlock(%struct.sx*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @device_delete_child(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @iflib_pseudo_deregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
