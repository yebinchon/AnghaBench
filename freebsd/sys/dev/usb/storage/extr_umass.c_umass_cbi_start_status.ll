; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_cbi_start_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_cbi_start_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umass_softc = type { %struct.TYPE_2__, i32, i64* }
%struct.TYPE_2__ = type { i64, i64, i32 (%struct.umass_softc.0*, %union.ccb*, i64, i32)*, %union.ccb* }
%struct.umass_softc.0 = type opaque
%union.ccb = type { i32 }

@UMASS_T_CBI_STATUS = common dso_local global i64 0, align 8
@UMASS_T_CBI_COMMAND = common dso_local global i32 0, align 4
@STATUS_CMD_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.umass_softc*)* @umass_cbi_start_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umass_cbi_start_status(%struct.umass_softc* %0) #0 {
  %2 = alloca %struct.umass_softc*, align 8
  %3 = alloca %union.ccb*, align 8
  store %struct.umass_softc* %0, %struct.umass_softc** %2, align 8
  %4 = load %struct.umass_softc*, %struct.umass_softc** %2, align 8
  %5 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %4, i32 0, i32 2
  %6 = load i64*, i64** %5, align 8
  %7 = load i64, i64* @UMASS_T_CBI_STATUS, align 8
  %8 = getelementptr inbounds i64, i64* %6, i64 %7
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.umass_softc*, %struct.umass_softc** %2, align 8
  %13 = load i64, i64* @UMASS_T_CBI_STATUS, align 8
  %14 = call i32 @umass_transfer_start(%struct.umass_softc* %12, i64 %13)
  br label %44

15:                                               ; preds = %1
  %16 = load %struct.umass_softc*, %struct.umass_softc** %2, align 8
  %17 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load %union.ccb*, %union.ccb** %18, align 8
  store %union.ccb* %19, %union.ccb** %3, align 8
  %20 = load %struct.umass_softc*, %struct.umass_softc** %2, align 8
  %21 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  store %union.ccb* null, %union.ccb** %22, align 8
  %23 = load i32, i32* @UMASS_T_CBI_COMMAND, align 4
  %24 = load %struct.umass_softc*, %struct.umass_softc** %2, align 8
  %25 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.umass_softc*, %struct.umass_softc** %2, align 8
  %27 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32 (%struct.umass_softc.0*, %union.ccb*, i64, i32)*, i32 (%struct.umass_softc.0*, %union.ccb*, i64, i32)** %28, align 8
  %30 = load %struct.umass_softc*, %struct.umass_softc** %2, align 8
  %31 = bitcast %struct.umass_softc* %30 to %struct.umass_softc.0*
  %32 = load %union.ccb*, %union.ccb** %3, align 8
  %33 = load %struct.umass_softc*, %struct.umass_softc** %2, align 8
  %34 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.umass_softc*, %struct.umass_softc** %2, align 8
  %38 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %36, %40
  %42 = load i32, i32* @STATUS_CMD_UNKNOWN, align 4
  %43 = call i32 %29(%struct.umass_softc.0* %31, %union.ccb* %32, i64 %41, i32 %42)
  br label %44

44:                                               ; preds = %15, %11
  ret void
}

declare dso_local i32 @umass_transfer_start(%struct.umass_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
