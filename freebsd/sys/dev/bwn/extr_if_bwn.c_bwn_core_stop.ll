; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_core_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_core_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i64, %struct.bwn_softc* }
%struct.bwn_softc = type { i64, i32, i32, i32 }

@BWN_MAC_STATUS_STARTED = common dso_local global i64 0, align 8
@BWN_INTR_MASK = common dso_local global i32 0, align 4
@BWN_MAC_STATUS_INITED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_core_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_core_stop(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_softc*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %4 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %5 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %4, i32 0, i32 1
  %6 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  store %struct.bwn_softc* %6, %struct.bwn_softc** %3, align 8
  %7 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %8 = call i32 @BWN_ASSERT_LOCKED(%struct.bwn_softc* %7)
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %10 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BWN_MAC_STATUS_STARTED, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %38

15:                                               ; preds = %1
  %16 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %17 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %16, i32 0, i32 3
  %18 = call i32 @callout_stop(i32* %17)
  %19 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %20 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %19, i32 0, i32 2
  %21 = call i32 @callout_stop(i32* %20)
  %22 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %23 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %22, i32 0, i32 1
  %24 = call i32 @callout_stop(i32* %23)
  %25 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %26 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %28 = load i32, i32* @BWN_INTR_MASK, align 4
  %29 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %27, i32 %28, i32 0)
  %30 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %31 = load i32, i32* @BWN_INTR_MASK, align 4
  %32 = call i32 @BWN_READ_4(%struct.bwn_mac* %30, i32 %31)
  %33 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %34 = call i32 @bwn_mac_suspend(%struct.bwn_mac* %33)
  %35 = load i64, i64* @BWN_MAC_STATUS_INITED, align 8
  %36 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %37 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @BWN_ASSERT_LOCKED(%struct.bwn_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @BWN_WRITE_4(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_READ_4(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_mac_suspend(%struct.bwn_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
