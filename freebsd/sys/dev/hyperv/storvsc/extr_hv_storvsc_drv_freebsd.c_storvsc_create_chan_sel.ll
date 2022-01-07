; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_storvsc_create_chan_sel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_storvsc_create_chan_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storvsc_softc = type { i32, %struct.vmbus_channel**, %struct.vmbus_channel* }
%struct.vmbus_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.storvsc_softc*)* @storvsc_create_chan_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @storvsc_create_chan_sel(%struct.storvsc_softc* %0) #0 {
  %2 = alloca %struct.storvsc_softc*, align 8
  %3 = alloca %struct.vmbus_channel**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.storvsc_softc* %0, %struct.storvsc_softc** %2, align 8
  %6 = load %struct.storvsc_softc*, %struct.storvsc_softc** %2, align 8
  %7 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %6, i32 0, i32 2
  %8 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %9 = load %struct.storvsc_softc*, %struct.storvsc_softc** %2, align 8
  %10 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %9, i32 0, i32 1
  %11 = load %struct.vmbus_channel**, %struct.vmbus_channel*** %10, align 8
  %12 = getelementptr inbounds %struct.vmbus_channel*, %struct.vmbus_channel** %11, i64 0
  store %struct.vmbus_channel* %8, %struct.vmbus_channel** %12, align 8
  %13 = load %struct.storvsc_softc*, %struct.storvsc_softc** %2, align 8
  %14 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %50

20:                                               ; preds = %1
  %21 = load %struct.storvsc_softc*, %struct.storvsc_softc** %2, align 8
  %22 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %21, i32 0, i32 2
  %23 = load %struct.vmbus_channel*, %struct.vmbus_channel** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.vmbus_channel** @vmbus_subchan_get(%struct.vmbus_channel* %23, i32 %24)
  store %struct.vmbus_channel** %25, %struct.vmbus_channel*** %3, align 8
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %43, %20
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load %struct.vmbus_channel**, %struct.vmbus_channel*** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.vmbus_channel*, %struct.vmbus_channel** %31, i64 %33
  %35 = load %struct.vmbus_channel*, %struct.vmbus_channel** %34, align 8
  %36 = load %struct.storvsc_softc*, %struct.storvsc_softc** %2, align 8
  %37 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %36, i32 0, i32 1
  %38 = load %struct.vmbus_channel**, %struct.vmbus_channel*** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.vmbus_channel*, %struct.vmbus_channel** %38, i64 %41
  store %struct.vmbus_channel* %35, %struct.vmbus_channel** %42, align 8
  br label %43

43:                                               ; preds = %30
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %26

46:                                               ; preds = %26
  %47 = load %struct.vmbus_channel**, %struct.vmbus_channel*** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @vmbus_subchan_rel(%struct.vmbus_channel** %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %19
  ret void
}

declare dso_local %struct.vmbus_channel** @vmbus_subchan_get(%struct.vmbus_channel*, i32) #1

declare dso_local i32 @vmbus_subchan_rel(%struct.vmbus_channel**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
