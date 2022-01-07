; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas.c_mprsas_register_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas.c_mprsas_register_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@MPI2_EVENT_SAS_DEVICE_STATUS_CHANGE = common dso_local global i32 0, align 4
@MPI2_EVENT_SAS_DISCOVERY = common dso_local global i32 0, align 4
@MPI2_EVENT_SAS_BROADCAST_PRIMITIVE = common dso_local global i32 0, align 4
@MPI2_EVENT_SAS_INIT_DEVICE_STATUS_CHANGE = common dso_local global i32 0, align 4
@MPI2_EVENT_SAS_INIT_TABLE_OVERFLOW = common dso_local global i32 0, align 4
@MPI2_EVENT_SAS_TOPOLOGY_CHANGE_LIST = common dso_local global i32 0, align 4
@MPI2_EVENT_SAS_ENCL_DEVICE_STATUS_CHANGE = common dso_local global i32 0, align 4
@MPI2_EVENT_IR_CONFIGURATION_CHANGE_LIST = common dso_local global i32 0, align 4
@MPI2_EVENT_IR_VOLUME = common dso_local global i32 0, align 4
@MPI2_EVENT_IR_PHYSICAL_DISK = common dso_local global i32 0, align 4
@MPI2_EVENT_IR_OPERATION_STATUS = common dso_local global i32 0, align 4
@MPI2_EVENT_TEMP_THRESHOLD = common dso_local global i32 0, align 4
@MPI2_EVENT_SAS_DEVICE_DISCOVERY_ERROR = common dso_local global i32 0, align 4
@MPI2_VERSION_02_06 = common dso_local global i64 0, align 8
@MPI2_EVENT_ACTIVE_CABLE_EXCEPTION = common dso_local global i32 0, align 4
@MPR_FLAGS_GEN35_IOC = common dso_local global i32 0, align 4
@MPI2_EVENT_PCIE_DEVICE_STATUS_CHANGE = common dso_local global i32 0, align 4
@MPI2_EVENT_PCIE_ENUMERATION = common dso_local global i32 0, align 4
@MPI2_EVENT_PCIE_TOPOLOGY_CHANGE_LIST = common dso_local global i32 0, align 4
@mprsas_evt_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpr_softc*)* @mprsas_register_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mprsas_register_events(%struct.mpr_softc* %0) #0 {
  %2 = alloca %struct.mpr_softc*, align 8
  %3 = alloca [16 x i32], align 16
  store %struct.mpr_softc* %0, %struct.mpr_softc** %2, align 8
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %5 = call i32 @bzero(i32* %4, i32 16)
  %6 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %7 = load i32, i32* @MPI2_EVENT_SAS_DEVICE_STATUS_CHANGE, align 4
  %8 = call i32 @setbit(i32* %6, i32 %7)
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %10 = load i32, i32* @MPI2_EVENT_SAS_DISCOVERY, align 4
  %11 = call i32 @setbit(i32* %9, i32 %10)
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %13 = load i32, i32* @MPI2_EVENT_SAS_BROADCAST_PRIMITIVE, align 4
  %14 = call i32 @setbit(i32* %12, i32 %13)
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %16 = load i32, i32* @MPI2_EVENT_SAS_INIT_DEVICE_STATUS_CHANGE, align 4
  %17 = call i32 @setbit(i32* %15, i32 %16)
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %19 = load i32, i32* @MPI2_EVENT_SAS_INIT_TABLE_OVERFLOW, align 4
  %20 = call i32 @setbit(i32* %18, i32 %19)
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %22 = load i32, i32* @MPI2_EVENT_SAS_TOPOLOGY_CHANGE_LIST, align 4
  %23 = call i32 @setbit(i32* %21, i32 %22)
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %25 = load i32, i32* @MPI2_EVENT_SAS_ENCL_DEVICE_STATUS_CHANGE, align 4
  %26 = call i32 @setbit(i32* %24, i32 %25)
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %28 = load i32, i32* @MPI2_EVENT_IR_CONFIGURATION_CHANGE_LIST, align 4
  %29 = call i32 @setbit(i32* %27, i32 %28)
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %31 = load i32, i32* @MPI2_EVENT_IR_VOLUME, align 4
  %32 = call i32 @setbit(i32* %30, i32 %31)
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %34 = load i32, i32* @MPI2_EVENT_IR_PHYSICAL_DISK, align 4
  %35 = call i32 @setbit(i32* %33, i32 %34)
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %37 = load i32, i32* @MPI2_EVENT_IR_OPERATION_STATUS, align 4
  %38 = call i32 @setbit(i32* %36, i32 %37)
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %40 = load i32, i32* @MPI2_EVENT_TEMP_THRESHOLD, align 4
  %41 = call i32 @setbit(i32* %39, i32 %40)
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %43 = load i32, i32* @MPI2_EVENT_SAS_DEVICE_DISCOVERY_ERROR, align 4
  %44 = call i32 @setbit(i32* %42, i32 %43)
  %45 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %46 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MPI2_VERSION_02_06, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %1
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %54 = load i32, i32* @MPI2_EVENT_ACTIVE_CABLE_EXCEPTION, align 4
  %55 = call i32 @setbit(i32* %53, i32 %54)
  %56 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %57 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MPR_FLAGS_GEN35_IOC, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %52
  %63 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %64 = load i32, i32* @MPI2_EVENT_PCIE_DEVICE_STATUS_CHANGE, align 4
  %65 = call i32 @setbit(i32* %63, i32 %64)
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %67 = load i32, i32* @MPI2_EVENT_PCIE_ENUMERATION, align 4
  %68 = call i32 @setbit(i32* %66, i32 %67)
  %69 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %70 = load i32, i32* @MPI2_EVENT_PCIE_TOPOLOGY_CHANGE_LIST, align 4
  %71 = call i32 @setbit(i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %62, %52
  br label %73

73:                                               ; preds = %72, %1
  %74 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %75 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %76 = load i32, i32* @mprsas_evt_handler, align 4
  %77 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %78 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = call i32 @mpr_register_events(%struct.mpr_softc* %74, i32* %75, i32 %76, i32* null, i32* %80)
  ret i32 0
}

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @setbit(i32*, i32) #1

declare dso_local i32 @mpr_register_events(%struct.mpr_softc*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
