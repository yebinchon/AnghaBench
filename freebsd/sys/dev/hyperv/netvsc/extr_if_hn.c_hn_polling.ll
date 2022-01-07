; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_polling.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_polling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, %struct.vmbus_channel* }
%struct.vmbus_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*, i32)* @hn_polling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_polling(%struct.hn_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.hn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmbus_channel**, align 8
  %7 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %9 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %5, align 4
  %12 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %13 = call i32 @HN_LOCK_ASSERT(%struct.hn_softc* %12)
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %2
  %17 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %18 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %17, i32 0, i32 1
  %19 = load %struct.vmbus_channel*, %struct.vmbus_channel** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.vmbus_channel** @vmbus_subchan_get(%struct.vmbus_channel* %19, i32 %20)
  store %struct.vmbus_channel** %21, %struct.vmbus_channel*** %6, align 8
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %34, %16
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load %struct.vmbus_channel**, %struct.vmbus_channel*** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.vmbus_channel*, %struct.vmbus_channel** %27, i64 %29
  %31 = load %struct.vmbus_channel*, %struct.vmbus_channel** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @hn_chan_polling(%struct.vmbus_channel* %31, i32 %32)
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %22

37:                                               ; preds = %22
  %38 = load %struct.vmbus_channel**, %struct.vmbus_channel*** %6, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @vmbus_subchan_rel(%struct.vmbus_channel** %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %2
  %42 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %43 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %42, i32 0, i32 1
  %44 = load %struct.vmbus_channel*, %struct.vmbus_channel** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @hn_chan_polling(%struct.vmbus_channel* %44, i32 %45)
  ret void
}

declare dso_local i32 @HN_LOCK_ASSERT(%struct.hn_softc*) #1

declare dso_local %struct.vmbus_channel** @vmbus_subchan_get(%struct.vmbus_channel*, i32) #1

declare dso_local i32 @hn_chan_polling(%struct.vmbus_channel*, i32) #1

declare dso_local i32 @vmbus_subchan_rel(%struct.vmbus_channel**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
