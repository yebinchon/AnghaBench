; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@HN_FLAG_RXVF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*)* @hn_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_suspend(%struct.hn_softc* %0) #0 {
  %2 = alloca %struct.hn_softc*, align 8
  store %struct.hn_softc* %0, %struct.hn_softc** %2, align 8
  %3 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %4 = call i32 @hn_polling(%struct.hn_softc* %3, i32 0)
  %5 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %6 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %15 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @HN_FLAG_RXVF, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13, %1
  %21 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %22 = call i32 @hn_suspend_data(%struct.hn_softc* %21)
  br label %23

23:                                               ; preds = %20, %13
  %24 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %25 = call i32 @hn_suspend_mgmt(%struct.hn_softc* %24)
  ret void
}

declare dso_local i32 @hn_polling(%struct.hn_softc*, i32) #1

declare dso_local i32 @hn_suspend_data(%struct.hn_softc*) #1

declare dso_local i32 @hn_suspend_mgmt(%struct.hn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
