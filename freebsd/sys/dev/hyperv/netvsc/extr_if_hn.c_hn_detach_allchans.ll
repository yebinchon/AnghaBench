; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_detach_allchans.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_detach_allchans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.vmbus_channel* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.vmbus_channel = type { i32 }

@HN_RX_FLAG_ATTACHED = common dso_local global i32 0, align 4
@HN_TX_FLAG_ATTACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*)* @hn_detach_allchans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_detach_allchans(%struct.hn_softc* %0) #0 {
  %2 = alloca %struct.hn_softc*, align 8
  %3 = alloca %struct.vmbus_channel**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %2, align 8
  %6 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %7 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %38

13:                                               ; preds = %1
  %14 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %15 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %14, i32 0, i32 5
  %16 = load %struct.vmbus_channel*, %struct.vmbus_channel** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.vmbus_channel** @vmbus_subchan_get(%struct.vmbus_channel* %16, i32 %17)
  store %struct.vmbus_channel** %18, %struct.vmbus_channel*** %3, align 8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %31, %13
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %25 = load %struct.vmbus_channel**, %struct.vmbus_channel*** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.vmbus_channel*, %struct.vmbus_channel** %25, i64 %27
  %29 = load %struct.vmbus_channel*, %struct.vmbus_channel** %28, align 8
  %30 = call i32 @hn_chan_detach(%struct.hn_softc* %24, %struct.vmbus_channel* %29)
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %19

34:                                               ; preds = %19
  %35 = load %struct.vmbus_channel**, %struct.vmbus_channel*** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @vmbus_subchan_rel(%struct.vmbus_channel** %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %12
  %39 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %40 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %41 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %40, i32 0, i32 5
  %42 = load %struct.vmbus_channel*, %struct.vmbus_channel** %41, align 8
  %43 = call i32 @hn_chan_detach(%struct.hn_softc* %39, %struct.vmbus_channel* %42)
  %44 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %45 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %44, i32 0, i32 5
  %46 = load %struct.vmbus_channel*, %struct.vmbus_channel** %45, align 8
  %47 = call i32 @vmbus_subchan_drain(%struct.vmbus_channel* %46)
  ret void
}

declare dso_local %struct.vmbus_channel** @vmbus_subchan_get(%struct.vmbus_channel*, i32) #1

declare dso_local i32 @hn_chan_detach(%struct.hn_softc*, %struct.vmbus_channel*) #1

declare dso_local i32 @vmbus_subchan_rel(%struct.vmbus_channel**, i32) #1

declare dso_local i32 @vmbus_subchan_drain(%struct.vmbus_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
