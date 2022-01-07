; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_drain_rxtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_drain_rxtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { %struct.vmbus_channel* }
%struct.vmbus_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*, i32)* @hn_drain_rxtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_drain_rxtx(%struct.hn_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.hn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmbus_channel**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.vmbus_channel** null, %struct.vmbus_channel*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %14 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %13, i32 0, i32 0
  %15 = load %struct.vmbus_channel*, %struct.vmbus_channel** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.vmbus_channel** @vmbus_subchan_get(%struct.vmbus_channel* %15, i32 %16)
  store %struct.vmbus_channel** %17, %struct.vmbus_channel*** %5, align 8
  br label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.vmbus_channel**, %struct.vmbus_channel*** %5, align 8
  %20 = icmp ne %struct.vmbus_channel** %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %34, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %28 = load %struct.vmbus_channel**, %struct.vmbus_channel*** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.vmbus_channel*, %struct.vmbus_channel** %28, i64 %30
  %32 = load %struct.vmbus_channel*, %struct.vmbus_channel** %31, align 8
  %33 = call i32 @hn_chan_drain(%struct.hn_softc* %27, %struct.vmbus_channel* %32)
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %22

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37, %18
  %39 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %40 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %41 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %40, i32 0, i32 0
  %42 = load %struct.vmbus_channel*, %struct.vmbus_channel** %41, align 8
  %43 = call i32 @hn_chan_drain(%struct.hn_softc* %39, %struct.vmbus_channel* %42)
  %44 = load %struct.vmbus_channel**, %struct.vmbus_channel*** %5, align 8
  %45 = icmp ne %struct.vmbus_channel** %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.vmbus_channel**, %struct.vmbus_channel*** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @vmbus_subchan_rel(%struct.vmbus_channel** %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %38
  ret void
}

declare dso_local %struct.vmbus_channel** @vmbus_subchan_get(%struct.vmbus_channel*, i32) #1

declare dso_local i32 @hn_chan_drain(%struct.hn_softc*, %struct.vmbus_channel*) #1

declare dso_local i32 @vmbus_subchan_rel(%struct.vmbus_channel**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
