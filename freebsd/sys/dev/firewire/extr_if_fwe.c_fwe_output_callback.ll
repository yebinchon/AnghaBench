; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_if_fwe.c_fwe_output_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_if_fwe.c_fwe_output_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_xfer = type { i64, i32, i64 }
%struct.fwe_softc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ifnet* }
%struct.ifnet = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [11 x i8] c"resp = %d\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_xfer*)* @fwe_output_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwe_output_callback(%struct.fw_xfer* %0) #0 {
  %2 = alloca %struct.fw_xfer*, align 8
  %3 = alloca %struct.fwe_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store %struct.fw_xfer* %0, %struct.fw_xfer** %2, align 8
  %6 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %7 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.fwe_softc*
  store %struct.fwe_softc* %9, %struct.fwe_softc** %3, align 8
  %10 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %11 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %4, align 8
  %14 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %15 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %16 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @FWEDEBUG(%struct.ifnet* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %20 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %25 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %26 = call i32 @if_inc_counter(%struct.ifnet* %24, i32 %25, i32 1)
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %29 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @m_freem(i32 %30)
  %32 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %33 = call i32 @fw_xfer_unload(%struct.fw_xfer* %32)
  %34 = call i32 (...) @splimp()
  store i32 %34, i32* %5, align 4
  %35 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %36 = call i32 @FWE_LOCK(%struct.fwe_softc* %35)
  %37 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %38 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %37, i32 0, i32 0
  %39 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %40 = load i32, i32* @link, align 4
  %41 = call i32 @STAILQ_INSERT_TAIL(i32* %38, %struct.fw_xfer* %39, i32 %40)
  %42 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %43 = call i32 @FWE_UNLOCK(%struct.fwe_softc* %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @splx(i32 %44)
  %46 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %47 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %27
  %52 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %53 = call i32 @fwe_start(%struct.ifnet* %52)
  br label %54

54:                                               ; preds = %51, %27
  ret void
}

declare dso_local i32 @FWEDEBUG(%struct.ifnet*, i8*, i64) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @m_freem(i32) #1

declare dso_local i32 @fw_xfer_unload(%struct.fw_xfer*) #1

declare dso_local i32 @splimp(...) #1

declare dso_local i32 @FWE_LOCK(%struct.fwe_softc*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.fw_xfer*, i32) #1

declare dso_local i32 @FWE_UNLOCK(%struct.fwe_softc*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @fwe_start(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
