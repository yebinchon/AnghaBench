; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_txpwr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_txpwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i64, %struct.TYPE_2__, %struct.bwn_softc* }
%struct.TYPE_2__ = type { i32 (%struct.bwn_mac.0*)* }
%struct.bwn_mac.0 = type opaque
%struct.bwn_softc = type { i32 }

@BWN_MAC_STATUS_STARTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @bwn_txpwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_txpwr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwn_mac*, align 8
  %6 = alloca %struct.bwn_softc*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.bwn_mac*
  store %struct.bwn_mac* %8, %struct.bwn_mac** %5, align 8
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %10 = icmp eq %struct.bwn_mac* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %40

12:                                               ; preds = %2
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %14 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %13, i32 0, i32 2
  %15 = load %struct.bwn_softc*, %struct.bwn_softc** %14, align 8
  store %struct.bwn_softc* %15, %struct.bwn_softc** %6, align 8
  %16 = load %struct.bwn_softc*, %struct.bwn_softc** %6, align 8
  %17 = call i32 @BWN_LOCK(%struct.bwn_softc* %16)
  %18 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %19 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BWN_MAC_STATUS_STARTED, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %12
  %24 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %25 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.bwn_mac.0*)*, i32 (%struct.bwn_mac.0*)** %26, align 8
  %28 = icmp ne i32 (%struct.bwn_mac.0*)* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %31 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.bwn_mac.0*)*, i32 (%struct.bwn_mac.0*)** %32, align 8
  %34 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %35 = bitcast %struct.bwn_mac* %34 to %struct.bwn_mac.0*
  %36 = call i32 %33(%struct.bwn_mac.0* %35)
  br label %37

37:                                               ; preds = %29, %23, %12
  %38 = load %struct.bwn_softc*, %struct.bwn_softc** %6, align 8
  %39 = call i32 @BWN_UNLOCK(%struct.bwn_softc* %38)
  br label %40

40:                                               ; preds = %37, %11
  ret void
}

declare dso_local i32 @BWN_LOCK(%struct.bwn_softc*) #1

declare dso_local i32 @BWN_UNLOCK(%struct.bwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
