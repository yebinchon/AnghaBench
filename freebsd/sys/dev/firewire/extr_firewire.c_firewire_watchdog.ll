; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_firewire_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_firewire_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firewire_comm = type { i32, i32, i32 }

@firewire_watchdog.watchdog_clock = internal global i32 0, align 4
@WATCHDOG_HZ = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @firewire_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @firewire_watchdog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.firewire_comm*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.firewire_comm*
  store %struct.firewire_comm* %5, %struct.firewire_comm** %3, align 8
  %6 = load i32, i32* @firewire_watchdog.watchdog_clock, align 4
  %7 = load i32, i32* @WATCHDOG_HZ, align 4
  %8 = mul nsw i32 %7, 15
  %9 = icmp sgt i32 %6, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %12 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %15 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %14, i32 0, i32 1
  %16 = call i32 @taskqueue_enqueue(i32 %13, i32* %15)
  br label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @firewire_watchdog.watchdog_clock, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @firewire_watchdog.watchdog_clock, align 4
  br label %20

20:                                               ; preds = %17, %10
  %21 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %22 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %21, i32 0, i32 0
  %23 = load i32, i32* @hz, align 4
  %24 = load i32, i32* @WATCHDOG_HZ, align 4
  %25 = sdiv i32 %23, %24
  %26 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %27 = call i32 @callout_reset(i32* %22, i32 %25, void (i8*)* @firewire_watchdog, %struct.firewire_comm* %26)
  ret void
}

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.firewire_comm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
