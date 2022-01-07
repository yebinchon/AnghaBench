; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/timer/extr_timer.c_xentimer_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/timer/extr_timer.c_xentimer_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xentimer_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, i32)*, i64 }
%struct.xentimer_pcpu_data = type { i64, i32 }

@xentimer_pcpu = common dso_local global i32 0, align 4
@vcpu_info = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @xentimer_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xentimer_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.xentimer_softc*, align 8
  %4 = alloca %struct.xentimer_pcpu_data*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.xentimer_softc*
  store %struct.xentimer_softc* %6, %struct.xentimer_softc** %3, align 8
  %7 = load i32, i32* @xentimer_pcpu, align 4
  %8 = call %struct.xentimer_pcpu_data* @DPCPU_PTR(i32 %7)
  store %struct.xentimer_pcpu_data* %8, %struct.xentimer_pcpu_data** %4, align 8
  %9 = load i32, i32* @vcpu_info, align 4
  %10 = call i32 @DPCPU_GET(i32 %9)
  %11 = call i32 @xen_fetch_vcpu_time(i32 %10)
  %12 = load %struct.xentimer_pcpu_data*, %struct.xentimer_pcpu_data** %4, align 8
  %13 = getelementptr inbounds %struct.xentimer_pcpu_data, %struct.xentimer_pcpu_data* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load %struct.xentimer_pcpu_data*, %struct.xentimer_pcpu_data** %4, align 8
  %15 = getelementptr inbounds %struct.xentimer_pcpu_data, %struct.xentimer_pcpu_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %1
  %19 = load %struct.xentimer_softc*, %struct.xentimer_softc** %3, align 8
  %20 = getelementptr inbounds %struct.xentimer_softc, %struct.xentimer_softc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.xentimer_softc*, %struct.xentimer_softc** %3, align 8
  %26 = getelementptr inbounds %struct.xentimer_softc, %struct.xentimer_softc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %27, align 8
  %29 = load %struct.xentimer_softc*, %struct.xentimer_softc** %3, align 8
  %30 = getelementptr inbounds %struct.xentimer_softc, %struct.xentimer_softc* %29, i32 0, i32 0
  %31 = load %struct.xentimer_softc*, %struct.xentimer_softc** %3, align 8
  %32 = getelementptr inbounds %struct.xentimer_softc, %struct.xentimer_softc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %28(%struct.TYPE_2__* %30, i32 %34)
  br label %36

36:                                               ; preds = %24, %18, %1
  %37 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %37
}

declare dso_local %struct.xentimer_pcpu_data* @DPCPU_PTR(i32) #1

declare dso_local i32 @xen_fetch_vcpu_time(i32) #1

declare dso_local i32 @DPCPU_GET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
