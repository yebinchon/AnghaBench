; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_sas.c_mpssas_discovery_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_sas.c_mpssas_discovery_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpssas_softc = type { i32, i32, %struct.mps_softc* }
%struct.mps_softc = type { i32, i64 }

@MPSSAS_DISCOVERY_TIMEOUT_PENDING = common dso_local global i32 0, align 4
@MPS_XINFO = common dso_local global i32 0, align 4
@MPS_MAPPING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"Discovery has completed. Check for missing devices in the mapping table.\0A\00", align 1
@MPS_MISSING_CHECK_DELAY = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@mps_mapping_check_devices = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpssas_discovery_end(%struct.mpssas_softc* %0) #0 {
  %2 = alloca %struct.mpssas_softc*, align 8
  %3 = alloca %struct.mps_softc*, align 8
  store %struct.mpssas_softc* %0, %struct.mpssas_softc** %2, align 8
  %4 = load %struct.mpssas_softc*, %struct.mpssas_softc** %2, align 8
  %5 = getelementptr inbounds %struct.mpssas_softc, %struct.mpssas_softc* %4, i32 0, i32 2
  %6 = load %struct.mps_softc*, %struct.mps_softc** %5, align 8
  store %struct.mps_softc* %6, %struct.mps_softc** %3, align 8
  %7 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %8 = call i32 @MPS_FUNCTRACE(%struct.mps_softc* %7)
  %9 = load %struct.mpssas_softc*, %struct.mpssas_softc** %2, align 8
  %10 = getelementptr inbounds %struct.mpssas_softc, %struct.mpssas_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MPSSAS_DISCOVERY_TIMEOUT_PENDING, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.mpssas_softc*, %struct.mpssas_softc** %2, align 8
  %17 = getelementptr inbounds %struct.mpssas_softc, %struct.mpssas_softc* %16, i32 0, i32 1
  %18 = call i32 @callout_stop(i32* %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %21 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %26 = load i32, i32* @MPS_XINFO, align 4
  %27 = load i32, i32* @MPS_MAPPING, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @mps_dprint(%struct.mps_softc* %25, i32 %28, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %31 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %30, i32 0, i32 0
  %32 = load i32, i32* @MPS_MISSING_CHECK_DELAY, align 4
  %33 = load i32, i32* @hz, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* @mps_mapping_check_devices, align 4
  %36 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %37 = call i32 @callout_reset(i32* %31, i32 %34, i32 %35, %struct.mps_softc* %36)
  br label %38

38:                                               ; preds = %24, %19
  ret void
}

declare dso_local i32 @MPS_FUNCTRACE(%struct.mps_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @mps_dprint(%struct.mps_softc*, i32, i8*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.mps_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
