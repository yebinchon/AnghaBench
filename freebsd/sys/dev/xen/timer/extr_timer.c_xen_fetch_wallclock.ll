; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/timer/extr_timer.c_xen_fetch_wallclock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/timer/extr_timer.c_xen_fetch_wallclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.timespec = type { i32 }
%struct.pvclock_wall_clock = type { i32 }

@HYPERVISOR_shared_info = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timespec*)* @xen_fetch_wallclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_fetch_wallclock(%struct.timespec* %0) #0 {
  %2 = alloca %struct.timespec*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.pvclock_wall_clock*, align 8
  store %struct.timespec* %0, %struct.timespec** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @HYPERVISOR_shared_info, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = bitcast i32* %7 to %struct.pvclock_wall_clock*
  store %struct.pvclock_wall_clock* %8, %struct.pvclock_wall_clock** %4, align 8
  %9 = load %struct.pvclock_wall_clock*, %struct.pvclock_wall_clock** %4, align 8
  %10 = load %struct.timespec*, %struct.timespec** %2, align 8
  %11 = call i32 @pvclock_get_wallclock(%struct.pvclock_wall_clock* %9, %struct.timespec* %10)
  ret void
}

declare dso_local i32 @pvclock_get_wallclock(%struct.pvclock_wall_clock*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
